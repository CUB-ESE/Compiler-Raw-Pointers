import compiler
from compiler.ast import *
import sys
import os
import lparse 

# global variables 
var_name = "tmp"
var_cnt  = 0
tab = "    "

# list of tuples storing variable names and their mapped data
# example: ('x', 'x->tmp')
var_mappings = []

# TODO: add mapping from flattened variables -> stack offset

# function to check if variable has been mapped already
# if in table, return mapped value
# if not in table, return new tmp
def mapped(v_name):
    
    global var_cnt
    global var_mappings
    
    for item in var_mappings:
        if(item[0] == v_name):
            return item[1]
        
    tmp_name = var_name + str(var_cnt)
    var_mappings.append((v_name, tmp_name))
    var_cnt += 1
    return (tmp_name)

# take an AST as input and return flattened intermediate file
def flatten(AST):
    
    global var_cnt

    if isinstance(AST,Module):
        return flatten(AST.node)
    elif isinstance(AST,Stmt):
        return [flatten(x) for x in AST.nodes]
    elif isinstance(AST,Printnl):
        return f.write("print " + str(flatten(AST.nodes[0])) + "\n")
    elif isinstance(AST,Assign):
        v_num = var_cnt
#         print AST.nodes[0].name
        if isinstance(AST.nodes[0].name, CallFunc):
            f.write(flatten(AST.nodes[0]) + ", " + str(flatten(AST.expr)) + ")\n")
        else:
            f.write(flatten(AST.nodes[0]) + " = " + str(flatten(AST.expr)) + "\n")
#         var_cnt = v_num + 1
        return
    elif isinstance(AST, AssName):
#         print AST.name
        if(isinstance(AST.name, CallFunc)):
#             f.write("set_ptr_value("+ flatten(AST.name.args[0]) + +")\n")
#             tmp = flatten(AST.name)
            return "set_ptr_value("+ flatten(AST.name.args[0])
        return mapped(AST.name)
    elif isinstance(AST, Discard):
        return flatten(AST.expr)
    elif isinstance(AST, Const):
        return AST.value
    elif isinstance(AST, Name):        
        return mapped(AST.name)
    elif isinstance(AST, Add):
        lvar = str(flatten(AST.left))
        rvar = str(flatten(AST.right))
        f.write(var_name + str(var_cnt) + " = " + lvar + " + " + rvar + "\n")
        var_cnt += 1
        return (var_name + str(var_cnt-1))
    elif isinstance(AST,Sub):
        lvar = str(flatten(AST.left))
        rvar = str(flatten(AST.right))
        f.write(var_name + str(var_cnt) + " = " + lvar + " - " + rvar + "\n")
        var_cnt += 1
        return (var_name + str(var_cnt-1))
    elif isinstance(AST, UnarySub):
        var = str(flatten(AST.expr))
        f.write(var_name + str(var_cnt) + " = -" + var + "\n")
        var_cnt += 1
        return (var_name+str(var_cnt-1))
    elif isinstance(AST, CallFunc):
        if AST.node.name == "input":
            return AST.node.name + "()"
        elif AST.node.name == "deref":
            return "get_ptr_value" + "(" + flatten(AST.args[0]) + ")"
        elif AST.node.name == "ptr":
            return "create_ptr"+ "(" + flatten(AST.args[0]) + ")"
        elif AST.node.name == "freep":
            f.write("free_ptr"+ "(" + flatten(AST.args[0]) + ")\n")
        return      
        
        
#         if AST.node.name == "input":
#             f.write(var_name + str(var_cnt) + " = " + AST.node.name + "()\n") # avoid recursion to avoid mapping function to temporary variable
#         elif AST.node.name == "deref":
#             f.write(var_name + str(var_cnt) + " = " + "get_ptr_value" + "(" + flatten(AST.args[0]) + ")\n")
#         elif AST.node.name == "ptr":
#             f.write(var_name + str(var_cnt) + " = " + "create_ptr"+ "(" + flatten(AST.args[0]) + ")\n")
#         elif AST.node.name == "freep":
#             f.write(var_name + str(var_cnt) + " = " + "free_ptr"+ "(" + flatten(AST.args[0]) + ")\n")
#         var_cnt += 1
#         return (var_name + str(var_cnt-1))
    else:
        print "ERROR: "+ P0_file +" is not a valid P0 file"
        f.close() 
        os.remove(flattened)
        exit()

# TODO: Convert to regex
# checks if given operand is memory address (offset from ebp)
# looks for form -XX(%ebp)
def isMem(s):
    if(s[-5:-1] == "%ebp"):
        return True
    else:
        return False
    
# recursive function to generate ASM from flattened AST
# map tmp variables to base pointer offset in O(1) time
def generate_asm(AST):
        
    if isinstance(AST,Module):
        return generate_asm(AST.node)
    elif isinstance(AST,Stmt):
        return [generate_asm(x) for x in AST.nodes]
    elif isinstance(AST,Printnl):
        param = str(generate_asm(AST.nodes[0]))
        of.write(tab + "pushl " + param + "\n")
        of.write(tab + "call print_int_nl" + "\n")
        return
#         return of.write(tab + "addl $4, %esp" + "\n")
    elif isinstance(AST,Assign):
        dst = generate_asm(AST.nodes[0])
        src = str(generate_asm(AST.expr))
        
        if(isMem(dst) and isMem(src)):
            of.write(tab + "movl " + src + ", %eax\n")
            of.write(tab + "movl %eax, " + dst + "\n")
            
        else:
            of.write(tab + "movl " + src + ", " + dst + "\n")
        return
    elif isinstance(AST, AssName):
        name = AST.name
        number = int(name[3:])
        return "-" + str(4*(number+1)) + "(%ebp)"
    elif isinstance(AST, Discard):
        return generate_asm(AST.expr)
    elif isinstance(AST, Const):
        return "$" + str(AST.value)
    elif isinstance(AST, Name):
        name = AST.name
        number = int(name[3:])
        return "-" + str(4*(number+1)) + "(%ebp)"
    elif isinstance(AST, Add):
        lvar = str(generate_asm(AST.left))
        rvar = str(generate_asm(AST.right))
        of.write(tab + "movl " + lvar + ", %eax\n")
        of.write(tab + "addl " + rvar + ", %eax" + "\n")
        return "%eax"
    elif isinstance(AST, UnarySub):
        var = str(generate_asm(AST.expr))
        if(var[0] == "$"):
            of.write(tab + "movl " + var + ", %eax" + "\n")
            var = "%eax"
        of.write(tab + "negl " + var + "\n")
        return var
    elif isinstance(AST, CallFunc):
        if AST.node.name == "input":  
            of.write(tab + "call " + AST.node.name + "\n")
            return "%eax"
        elif AST.node.name == "set_ptr_value":
            of.write(tab + "push " + str(generate_asm(AST.args[1])) + "\n" )
        of.write(tab + "push " + str(generate_asm(AST.args[0])) + "\n")
        of.write(tab + "call " + AST.node.name + "\n")
        return "%eax"
    else:
        return -1

# function to allocate proper number of variables on the stack
# searches through file and counts number of unique variables and returns
def preamble(out_file, input_file):
    in_file = open(input_file, "r")
    in_file.seek(0)
    
    var_list = []
    
    out_file.write(".global main\n")
    out_file.write("main:\n")
    out_file.write(tab + "pushl %ebp\n")
    out_file.write(tab + "movl %esp, %ebp\n")
    
    # count total number of variables to allocate on the stack
    lines = in_file.readlines()    
    num_vars = 0
    for line in lines:
        tokens = line.split()
        
        if(tokens[0] not in var_list):
            # ensures we are not counting 'print' or other function calls
            if(tokens[0][0:3] == "tmp"):
                num_vars += 1
                var_list.append(tokens[0])
    
    out_file.write(tab + "subl $" + str(num_vars*4) + ", %esp\n")
    in_file.close()
    return num_vars

# de-allocate stack memory and set return value to 0
def conclude(out_file, num_vars):
    out_file.write(tab + "addl $" + str(num_vars * 4) + ", %esp\n")
    out_file.write(tab + "movl $0, %eax\n")
    out_file.write(tab + "leave\n" + tab + "ret\n")
    
    
# take input filename and return AST for the program
def parse(filename):
    return lparse.parseFile(filename)
#     return compiler.parseFile(filename)

if __name__ == "__main__":
    
    # get input file from argv1
    P0_file=sys.argv[-1]
    
    flattened = P0_file[:-3] + "_flat.py"
    asm = P0_file[:-3] + ".s"
        
    # parse input file to get AST
    AST = parse(P0_file)
    
    # for debugging
#     print AST
    
    # flatten AST into new file
    f=open(flattened,"w")
    flatten(AST)
    f.seek(0)
    f.close()
    
    AST2 = compiler.parseFile(flattened)
    
    print AST2
    
    # generate asm file from flattened representation
    of=open(asm, "w")
    num_vars = preamble(of, flattened)
    generate_asm(AST2)
    conclude(of, num_vars)
    of.close()
    
    os.remove(flattened)
