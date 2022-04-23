import compiler
from compiler.ast import *
import sys
import ast
import graph
import os
import lparser as parser

MASK = 3
BOOL = 1
INT  = 0
BIG  = 3
########################################################################################
#
#                                EXPLICATE PASS
#
########################################################################################

# global variables 
let_var = "let_var"
let_cnt = 1
tab = "    "

# new internal AST classes
class GetTag(Node):
    def __init__(self, arg):
        self.arg = arg
    def __repr__(self):
        return "{}('{}')".format(self.__class__.__name__, self.arg)
class InjectFrom(Node):
    def __init__(self, typ, arg):
        self.typ = typ
        self.arg = arg
    def __repr__(self):
        return "{}('{}', {})".format(self.__class__.__name__, self.typ, self.arg)
class ProjectTo(Node):
    def __init__(self, typ, arg):
        self.typ = typ
        self.arg = arg
    def __repr__(self):
        return "{}('{}', {})".format(self.__class__.__name__, self.typ, self.arg)
class Let(Node):
    def __init__(self, var, rhs, body):
        self.var = var
        self.rhs = rhs
        self.body = body
    def __repr__(self):
        return "{}({}, {}, {})".format(self.__class__.__name__, self.var, self.rhs, self.body)

    
# explicate code for operators: accepts operands and returns the explicated AST code

# 1. Addition operator
def expAdd(lvar, rvar):
#     print lvar
#     print rvar
    # debug
    #return Add([lvar, rvar])
    # explicate out
    return IfExp(   #cond
                    InjectFrom(Const(INT),And([Or([CallFunc(Name('is_int'),[Name(lvar)], None, None), CallFunc(Name('is_bool'),[Name(lvar)], None, None)]),
                         Or([CallFunc(Name('is_int'),[Name(rvar)], None, None), CallFunc(Name('is_bool'),[Name(rvar)], None, None)])])),
                    #then   
                    InjectFrom(Const(INT), Add((ProjectTo(Const(INT),lvar),ProjectTo(Const(INT),rvar)))) ,  #bool--> int !!!
                    #else 
                    IfExp( #cond
                            InjectFrom(Const(INT), And([CallFunc(Name('is_big'),[Name(lvar)], None, None), CallFunc(Name('is_big'),[Name(rvar)], None, None)])),
                            #then
                            InjectFrom(Const(BIG), CallFunc(Name('add'),[ProjectTo(Const(BIG), lvar),
                                                         ProjectTo(Const(BIG),rvar)],None,None)),
                            #else
                            CallFunc(Name('error_pyobj'),[Name("1")],None,None) # Not sure about the error call func name!!!!!
                        )
                )

# 2. Uninary Operators
def expUnary(ops, expr):
    
    if ops == UnarySub:
        #debug
        #return ops(expr)
        return IfExp(   #cond
                        InjectFrom( Const(INT) ,Or([CallFunc(Name('is_int'),[Name(expr)], None, None), CallFunc(Name('is_bool'),[Name(expr)], None, None)])),
                        #then   
                        InjectFrom(Const(INT), ops(ProjectTo(Const(INT),expr))),
                        #else 
                        CallFunc(Name('error_pyobj'), [Const(1)], None, None) # Not sure about the error call func name!!!!!
                    )

    elif ops == Not:
        #debug
        #return ops(expr)
        return IfExp(   #cond
                        InjectFrom( Const(INT),Or([CallFunc(Name('is_int'),[Name(expr)], None, None), CallFunc(Name('is_bool'),[Name(expr)], None, None)])),
                        #then   
                        IfExp( InjectFrom( Const(INT), Compare(ProjectTo(Const(BOOL), expr), [('==', Const(0))])), 
                               InjectFrom( Const(BOOL), Const(1)),
                               InjectFrom( Const(BOOL), Const(0))  
                             ),
                        #else 
#                         InjectFrom( Const(BOOL), Const(0))
            
                        IfExp( InjectFrom(Const(INT), Compare(CallFunc(Name('is_true'), [Name(expr)], None, None), [('==', Const(0))])),
                               InjectFrom( Const(BOOL), Const(1)),
                               InjectFrom( Const(BOOL), Const(0))
                            )
                    )

# 3. Compare operators  
def expCmp(ops, lvar, rvar):

    if ops == '==':
        #debug
        #return Compare(lvar, [(ops, rvar)])
        return IfExp(  # cond
                       InjectFrom( Const(INT),And([Or([CallFunc(Name('is_int'),[Name(lvar)], None, None), CallFunc(Name('is_bool'),[Name(lvar)], None, None)]),
                         Or([CallFunc(Name('is_int'),[Name(rvar)], None, None), CallFunc(Name('is_bool'),[Name(rvar)], None, None)])])),
                       # then
                       InjectFrom(Const(BOOL), Compare(ProjectTo(Const(INT),lvar),[(ops, ProjectTo(Const(INT),rvar))])), 
                       #else
                       IfExp( #cond
                            InjectFrom( Const(INT), And([CallFunc(Name('is_big'),[Name(lvar)], None, None), CallFunc(Name('is_big'),[Name(rvar)], None, None)])),
                            #then
                            InjectFrom(Const(BOOL), CallFunc(Name('equal'),[ProjectTo(Const(BIG), lvar),
                                                         ProjectTo(Const(BIG),rvar)],None,None)),
                            #else
                            InjectFrom(Const(BOOL), Const(0))
                        )  
                    )
    
    elif ops == '!=':
        #debug
        #return Compare(lvar, [(ops, rvar)])
        return IfExp(  # cond
                       InjectFrom( Const(INT), And([Or([CallFunc(Name('is_int'),[Name(lvar)], None, None), CallFunc(Name('is_bool'),[Name(lvar)], None, None)]),
                         Or([CallFunc(Name('is_int'),[Name(rvar)], None, None), CallFunc(Name('is_bool'),[Name(rvar)], None, None)])])),
                       # then
                       InjectFrom(Const(BOOL), Compare(ProjectTo(Const(INT),lvar),[(ops, ProjectTo(Const(INT),rvar))])), 
                       #else
                       IfExp( #cond
                            InjectFrom( Const(INT), And([CallFunc(Name('is_big'),[Name(lvar)], None, None), CallFunc(Name('is_big'),[Name(rvar)], None, None)])),
                            #then
                            InjectFrom(Const(BOOL), CallFunc(Name('not_equal'),[ProjectTo(Const(BIG), lvar),
                                                         ProjectTo(Const(BIG),rvar)],None,None)),
                            #else
                            InjectFrom(Const(BOOL), Const(1))
                        )  
                    )
        
    # HERE WE HAVE NOT CONSIDERED INTEGER FOR NOW !!!!!!!!!!!
    elif ops == 'is':
        return IfExp(
                        InjectFrom( Const(INT), Or([Or([CallFunc(Name('is_int'),[Name(lvar)], None, None), CallFunc(Name('is_bool'),[Name(lvar)], None, None)]),
                             Or([CallFunc(Name('is_int'),[Name(rvar)], None, None), CallFunc(Name('is_bool'),[Name(rvar)], None, None)])])),
                       # then
                        IfExp(InjectFrom( Const(INT), Or([CallFunc(Name('is_big'),[Name(lvar)], None, None), CallFunc(Name('is_big'),[Name(lvar)], None, None)])),
                              InjectFrom(Const(BOOL), Const(0)),
                              IfExp( #coms 
                                     InjectFrom(Const(INT), And([CallFunc(Name('is_bool'),[Name(lvar)], None, None), CallFunc(Name('is_bool'),[Name(rvar)], None, None)])),
                                     InjectFrom(Const(BOOL), Compare(ProjectTo(Const(INT), lvar), [(ops, ProjectTo(Const(INT), rvar))])),
                                  IfExp(
                                        InjectFrom(Const(INT), And([And([ CallFunc(Name('is_bool'),[Name(lvar)], None, None), Compare(ProjectTo(Const(INT), lvar), [('==', Const(1))])]),  Compare(ProjectTo(Const(INT), rvar), [('==', Const(1))])])),
                                  
                                     InjectFrom(Const(BOOL), Const(0)),
                                     IfExp(
                                            InjectFrom(Const(INT), And([And([ CallFunc(Name('is_bool'),[Name(lvar)], None, None), Compare(ProjectTo(Const(INT), lvar), [('==', Const(0))])]),  Compare(ProjectTo(Const(INT), rvar), [('==', Const(0))])])),
                                            InjectFrom(Const(BOOL), Const(0)),
                                            IfExp(
                                                   InjectFrom(Const(INT), And([And([ CallFunc(Name('is_bool'),[Name(rvar)], None, None), Compare(ProjectTo(Const(INT), rvar), [('==', Const(0))])]),  Compare(ProjectTo(Const(INT), lvar), [('==', Const(0))])])),
                                                   InjectFrom(Const(BOOL), Const(0)),
                                                   IfExp(
                                                       InjectFrom(Const(INT), And([And([ CallFunc(Name('is_bool'),[Name(rvar)], None, None), Compare(ProjectTo(Const(INT), rvar), [('==', Const(1))])]),  Compare(ProjectTo(Const(INT), lvar), [('==', Const(1))])])),
                                                       InjectFrom(Const(BOOL), Const(0)),
                                                       InjectFrom(Const(BOOL), Compare(ProjectTo(Const(INT), lvar), [(ops, ProjectTo(Const(INT), rvar))]))
                                                       
                                                        )
                                                 )  
                                           )
                                                            
                                    )
                             )
                          ),
                        InjectFrom(Const(BOOL), Compare(ProjectTo(Const(INT), lvar), [(ops, ProjectTo(Const(INT), rvar))]))
                    )


# 4. Boolean operators and/or
# Here we are consider both int and bool and/or operations
def expBoolOp(ops, lvar, rvar):
    
#     def outFalse(var):
#         return IfExp(InjectFrom(Const(INT), CallFunc(Name('is_int'),[Name(var)], None, None)),
#                      InjectFrom(Const(INT), Const(0)),
#                      InjectFrom(Const(BOOL), Const(0))
#                     )
    

    if ops == And:
        return IfExp(   #cond
                        InjectFrom( Const(INT), And([Or([CallFunc(Name('is_int'),[Name(lvar)], None, None), CallFunc(Name('is_bool'),[Name(lvar)], None, None)]),
                             Or([CallFunc(Name('is_int'),[Name(rvar)], None, None), CallFunc(Name('is_bool'),[Name(rvar)], None, None)])])),
                        #then   
                        IfExp(  # if any of them is o, return 0
                                InjectFrom( Const(INT), Compare(ProjectTo(Const(INT), lvar), [('!=', Const(0))])), 
                                # then
                                Name(rvar), 
                                #else
                                Name(lvar)   #didn't project, so no boxing
                            ),#If                        
                        #else 
                        IfExp( #cond
                                InjectFrom( Const(INT), And([Or([CallFunc(Name('is_int'),[Name(lvar)], None, None), CallFunc(Name('is_big'),[Name(lvar)], None, None)]),
                                     Or([CallFunc(Name('is_int'),[Name(rvar)], None, None), CallFunc(Name('is_big'),[Name(rvar)], None, None)])])),
                                #then
                                IfExp( #cond
                                        InjectFrom(Const(INT),  CallFunc(Name('is_big'),[Name(lvar)], None, None)),
                                        IfExp(InjectFrom(Const(INT), CallFunc(Name('is_true'), [Name(lvar)], None, None)),   
                                              Name(rvar),
                                              Name(lvar)
                                             ),
                                        IfExp(
                                               InjectFrom( Const(INT), Compare(ProjectTo(Const(INT), lvar), [('!=', Const(0))])),
                                               Name(rvar), 
                                               Name(lvar)
                                        )
                                    
                                      ),#if
                           
                                #else
                                IfExp( #cond
                                        InjectFrom( Const(INT), And([Or([CallFunc(Name('is_bool'),[Name(lvar)], None, None), CallFunc(Name('is_big'),[Name(lvar)], None, None)]),
                                             Or([CallFunc(Name('is_bool'),[Name(rvar)], None, None), CallFunc(Name('is_big'),[Name(rvar)], None, None)])])),
                                        #then
                                        IfExp( #cond
                                                InjectFrom(Const(INT),  CallFunc(Name('is_big'),[Name(lvar)], None, None)),
                                                IfExp(InjectFrom(Const(INT), CallFunc(Name('is_true'), [Name(lvar)], None, None)),
                                                      Name(rvar),
                                                      Name(lvar)
                                                    ),
                                                IfExp(
                                                       InjectFrom( Const(INT), Compare(ProjectTo(Const(INT), lvar), [('!=', Const(0))])),
                                                       Name(rvar), 
                                                       Name(lvar)
                                                      )
                                                  
                                                  
                                               ),#if
                                            CallFunc(Name('error_pyobj'),[Name("1")],None,None) 
                                      )#if
                               )
                     )#if
    
    elif ops == Or:
        return IfExp(   #cond
                        InjectFrom( Const(INT), And([Or([CallFunc(Name('is_int'),[Name(lvar)], None, None), CallFunc(Name('is_bool'),[Name(lvar)], None, None)]),
                             Or([CallFunc(Name('is_int'),[Name(rvar)], None, None), CallFunc(Name('is_bool'),[Name(rvar)], None, None)])])),
                        #then   
                        IfExp(  # if any of them is o, return 0
                                InjectFrom( Const(INT), Compare(ProjectTo(Const(INT), lvar), [('!=', Const(0))])), 
                                # then
                                Name(lvar), 
                                #else
                                Name(rvar)
                            ),#If                  
                        #else 
                        IfExp( #cond
                                InjectFrom( Const(INT), And([Or([CallFunc(Name('is_int'),[Name(lvar)], None, None), CallFunc(Name('is_big'),[Name(lvar)], None, None)]),
                                     Or([CallFunc(Name('is_int'),[Name(rvar)], None, None), CallFunc(Name('is_big'),[Name(rvar)], None, None)])])),
                                #then
                                IfExp(  # if any of them is o, return 0
                                        InjectFrom(Const(INT),  CallFunc(Name('is_big'),[Name(lvar)], None, None)),
                                        IfExp(InjectFrom(Const(INT), CallFunc(Name('is_true'), [Name(lvar)], None, None)),
                                              Name(lvar),
                                              Name(rvar)
                                             ),
                                        IfExp(
                                               InjectFrom( Const(INT), Compare(ProjectTo(Const(INT), lvar), [('!=', Const(0))])),
                                               Name(lvar), 
                                               Name(rvar)
                                        )
                                       
                                      ),
                                #else
                                IfExp( #cond
                                        InjectFrom( Const(INT), And([Or([CallFunc(Name('is_bool'),[Name(lvar)], None, None), CallFunc(Name('is_big'),[Name(lvar)], None, None)]),
                                             Or([CallFunc(Name('is_bool'),[Name(rvar)], None, None), CallFunc(Name('is_big'),[Name(rvar)], None, None)])])),
                                        IfExp(  # if any of them is o, return 0
                                                InjectFrom(Const(INT),  CallFunc(Name('is_big'),[Name(lvar)], None, None)),
                                                IfExp(
                                                      InjectFrom(Const(INT), CallFunc(Name('is_true'), [Name(lvar)], None, None)),
                                                      Name(lvar),
                                                      Name(rvar)
                                                      ),
                                                IfExp(
                                                       InjectFrom( Const(INT), Compare(ProjectTo(Const(INT), lvar), [('!=', Const(0))])),
                                                       Name(lvar), 
                                                       Name(rvar)
                                                      )
                                       
                                                 ),
                                            CallFunc(Name('error_pyobj'),[Name("1")],None,None)
                                      )
                            
                             )     
                       )#if             
                                              
                
# Explicate pass: takes AST as input and returns explicated ast, which need to undergo sanity check
def explicate(AST):
    global let_cnt
    if isinstance(AST,Module):
        return Module(None,explicate(AST.node))
    elif isinstance(AST,Stmt):
        return Stmt([explicate(x) for x in AST.nodes])
    elif isinstance(AST,Printnl):
        return Printnl([explicate(AST.nodes[0])], None)
    elif isinstance(AST,Assign):
        return Assign([explicate(AST.nodes[0])],explicate(AST.expr))
    elif isinstance(AST, AssName):
        return AssName(AST.name, AST.flags)
    elif isinstance(AST, Discard):
        return Discard(explicate(AST.expr))
    elif isinstance(AST, Const):
        return InjectFrom(Const(INT), Const(AST.value))
#         return Const(AST.value)
    elif isinstance(AST, Name):
        if AST.name == "True":
            return InjectFrom(Const(BOOL), Const(1))
        elif AST.name == "False":
            return InjectFrom(Const(BOOL), Const(0))    
        return Name(AST.name)
    elif isinstance(AST, CallFunc):
        
        if(AST.node.name == "input"):
            return InjectFrom(Const(INT) ,CallFunc(Name('input'), [], None, None))
        return CallFunc(explicate(AST.node), [], None, None)
    elif isinstance(AST, List):
        tmp = []
        for i in range(len(AST.nodes)):
            tmp.append(explicate(AST.nodes[i]))
        return List(tmp)
    elif isinstance(AST, Dict):
        items = []
        for item in AST.items:
            key = explicate(item[0])
            value = explicate(item[1])
            items.append((key,value))
#         print items
            
        return  Dict(items)
#         return Dict(AST.items)
    elif isinstance(AST, Or):
        length =  len(AST.nodes)
        i = 1
        ret = explicate(AST.nodes[0])
        while i < length:
            lvar = ret
            rvar = explicate(AST.nodes[i])
            ltlet_var = let_var+str(let_cnt)
            rtlet_var = let_var+str(let_cnt+1)
            let_cnt += 2
            ret = Let(rtlet_var, rvar, Let(ltlet_var, lvar, expBoolOp(Or, ltlet_var, rtlet_var)))
            i += 1
        return  ret               
    elif isinstance(AST, And):
        length =  len(AST.nodes)
        i = 1
        ret = explicate(AST.nodes[0])
        while i < length:
            lvar = ret
            rvar = explicate(AST.nodes[i])
            ltlet_var = let_var+str(let_cnt)
            rtlet_var = let_var+str(let_cnt+1)
            let_cnt += 2
            ret = Let(rtlet_var, rvar, Let(ltlet_var, lvar, expBoolOp(And, ltlet_var, rtlet_var)))
            i += 1
        return  ret
    elif isinstance(AST, IfExp):
        test_var = explicate(AST.test)
        then_var = explicate(AST.then)
        else_var = explicate(AST.else_)
        return IfExp(test_var, then_var, else_var) # I think we need to include a func call to is_true here for test_var
    elif isinstance(AST, Add):
#         print AST.left
#         print AST.left
        lvar = explicate(AST.left)
        rvar = explicate(AST.right)
        ltlet_var = let_var+str(let_cnt)
        rtlet_var = let_var+str(let_cnt+1)
        let_cnt += 2
        return Let(ltlet_var, lvar, Let(rtlet_var, rvar, expAdd(ltlet_var,rtlet_var)))
#         return Let(rtlet_var, rvar, Let(ltlet_var, lvar, expAdd(ltlet_var,rtlet_var)))
    elif isinstance(AST, UnarySub):
        tlet_var = let_var+str(let_cnt)
        let_cnt += 1
        return Let(tlet_var, explicate(AST.expr), expUnary(UnarySub, tlet_var))
    elif isinstance(AST, Not):
        tlet_var = let_var+str(let_cnt)
        let_cnt += 1
        return Let(tlet_var, explicate(AST.expr), expUnary(Not, tlet_var))
    elif isinstance(AST, Compare):
        lvar = explicate(AST.expr)
        rvar = explicate(AST.ops[0][1])
        ltlet_var = let_var+str(let_cnt)
        rtlet_var = let_var+str(let_cnt+1)
        let_cnt += 2
        return Let(rtlet_var, rvar, Let(ltlet_var, lvar, expCmp(AST.ops[0][0], ltlet_var, rtlet_var)))
    elif isinstance(AST, Subscript):
#         print("SUBS")
#         print AST.subs[0]
        return Subscript(explicate(AST.expr), AST.flags, explicate(AST.subs[0]))

        
    else:
        
        print(AST)
        
        print "ERROR: Exiting program..."
        exit(1)
        
########################################################################################
#
#                                      FLATTENING
#
########################################################################################
        
# global variables 
var_name = "tmp"
var_cnt  = 0

# list of tuples storing variable names and their mapped data
# example: ('x', 'x->tmp')
var_mappings = []

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

def getTmpVar():
    global var_cnt
    var_cnt += 1
    return var_name + str(var_cnt-1)

# take an AST as input and return flattened intermediate file

# for debug: indents for if statements
c = 0
DEBUG = False
if_count = 0

def flatten(AST):
    
    global var_cnt
    global c
    global DEBUG
    global if_count

    if isinstance(AST,Module):
        return flatten(AST.node)
    elif isinstance(AST,Stmt):
        return [flatten(x) for x in AST.nodes]
    elif isinstance(AST,Printnl):
        f.write(c * tab + "print {}\n".format(str(flatten(AST.nodes[0]))))
        return 
    elif isinstance(AST,Assign):
        node = flatten(AST.nodes[0])
        if node[:3]=="set":
            f.write(node+", "+str(flatten(AST.expr))+")\n")
        else:
            f.write(c * tab + "{} = {}\n".format(node, str(flatten(AST.expr))))
        return 
    elif isinstance(AST, AssName):
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
        res = getTmpVar()
        f.write(c * tab + "{} = {} + {}\n".format(res, lvar, rvar))
        return res
    elif isinstance(AST, UnarySub):
        
        var = str(flatten(AST.expr))
        tVar = getTmpVar()
        f.write(c * tab + "{} = {}\n".format(tVar, var))
        f.write(c * tab + "{} = -{}\n".format(tVar,tVar))
        return tVar
    elif isinstance(AST, CallFunc):                                      
        var = getTmpVar()
        args = ""
        if AST.args:
            for i in range(len(AST.args)):
                  args=args+"{}, ".format(str(flatten(AST.args[i])))
        f.write(c * tab + var + " = " + AST.node.name + "("+ args[:-2] + ")\n") # avoid recursion to avoid mapping function to temporary variable
        return var
    elif isinstance(AST, List):
        var = getTmpVar()   
        length = len(AST.nodes)
        
        # if length is 0
        if length == 0:
            length = flatten(InjectFrom(Const(INT),Const(length)))
            f.write(var + "= create_list("+length+")\n")
            f.write(var +" = "+ var +" | "+str(BIG)+"\n")
            return var 
            
        length = flatten(InjectFrom(Const(INT),Const(length)))
        f.write(var + "= create_list("+length+")\n")
        
        for i in range(len(AST.nodes)):
            f.write(var +" = "+ var +" | "+str(BIG)+"\n")
            index = flatten(InjectFrom(Const(INT),Const(i)))
            value = flatten(AST.nodes[i])
            f.write("set_subscript("+ var+", " +index+", "+ value+")\n") #third arg can also be big
            #f.write("set_subscript("+ var+", " +str(i)+", "+ str(flatten(AST.nodes[i]))+")\n")
        return var
    elif isinstance(AST, Dict):
        var = getTmpVar()
        length = len(AST.items)
        f.write(var + "= create_dict()\n")
        f.write(var +" = "+ var +" | "+str(BIG)+"\n")
        
        for i in range(length):
            item = AST.items[i]
            value = str(flatten(item[1]))
            key = str(flatten(item[0]))
            f.write("set_subscript("+ var+", " +key+", "+value+")\n")
        print var
        return var
    elif isinstance(AST, Subscript):
        var = getTmpVar()
        if AST.flags == "OP_ASSIGN":
            #print AST.subs
            return "set_subscript("+str(flatten(AST.expr))+", "+ flatten(AST.subs)
        #         f.write(var + " = get_subscript("+str(flatten(AST.expr))+", "+str(flatten(InjectFrom(Const(INT),Const(AST.subs[0]))))+")\n")
        expr = AST.expr
        subs = AST.subs
#         if(isinstance(expr, Const)):
#             expr = flatten(InjectFrom(Const(INT),Const(expr)))
#         else:
#             expr = flatten(expr)
#         if(isinstance(subs, Const)):
#             subs = flatten(InjectFrom(Const(INT),Const(subs)))
#         else:
#             subs = flatten(subs)
        f.write(var + " = get_subscript("+str(flatten(expr))+", "+flatten(subs)+")\n")
        return var
    elif isinstance(AST, Or):
        var = getTmpVar()
        lvar = str(flatten(AST.nodes[0]))
        rvar = str(flatten(AST.nodes[1]))
        f.write(c * tab + "{} = {} or {}\n".format(var, lvar, rvar))
        return var
    elif isinstance(AST, And):
        var = getTmpVar()
        lvar = str(flatten(AST.nodes[0]))
        rvar = str(flatten(AST.nodes[1]))
        f.write(c * tab + "{} = {} and {}\n".format(var, lvar, rvar))
        return var
    elif isinstance(AST, Not):
        var = str(flatten(AST.expr))
        tVar = getTmpVar()
        f.write(c * tab + "{} = {}\n".format(tVar, var))
        f.write(c * tab + "{} = ~{}\n".format(tVar, tVar))
        return tVar
    elif isinstance(AST, IfExp):
        test = getTmpVar()
        
        f.write(c * tab + "{} = {}\n".format(test, str(flatten(AST.test))))
        if str(AST.test)[:4] == "List" or "Dict":
            f.write(c * tab + "{} = is_true({})\n".format(test, test))
        else:    
            f.write(c * tab + test + " = " + test +" >> 2\n")
        tmp = getTmpVar()
        f.write(c * tab + tmp +" = 0\n")
        f.write(c * tab + test + " = "+ test+ "!= "+ tmp +"\n")
        #f.write(c * tab + test +" = "+ flatten(Compare(Name(test), [('!=', Const(0))])) + "\n")
        
        if_c_t = if_count
        if_count += 1
        
        f.write(c * tab + "if" + str(if_c_t) + " = {}\n".format(test))
        if DEBUG:
            c += 1
        actRst = getTmpVar()
        f.write(c * tab + "{} = {}\n".format(actRst, flatten(AST.then)))
        f.write((c-1) * tab + "else" + str(if_c_t) + "\n")
        f.write(c * tab + "{} = {}\n".format(actRst, flatten(AST.else_)))
        if DEBUG:
            c -= 1
        f.write(c * tab + "endif" + str(if_c_t) + "\n")
        return actRst
    elif isinstance(AST, Compare):
        var = getTmpVar()
        tmp = getTmpVar()
        lvar = str(flatten(AST.expr))
        rvar = str(flatten(AST.ops[0][1]))
        ops = AST.ops[0][0]
        f.write(c * tab + tmp +" = "+rvar+"\n")
        if ops == "is":
            ops = "=="
        if ops == "==" or ops == "!=" or ops == "is":
            #f.write(c * tab + var + "= equal("+ lvar+", "+rvar+")\n" )
            f.write(c * tab + var + "= "+ lvar+ ops +tmp+"\n" )
#         elif ops == "is":
#             f.write(c * tab + var + "= equal("+ lvar+ ", " +tmp+")\n" )
        else:
            f.write(c * tab + var + "= "+ lvar+ ops +tmp+")\n" )
        return var
    elif isinstance(AST, Let):
        
#         print("LET")
#         print(AST.var)
#         print(AST.rhs)
        
        var = mapped(AST.var)
        rhs = str(flatten(AST.rhs))
        f.write(c * tab + "{} = {}\n".format(var,rhs))
        body = getTmpVar()
        f.write(c * tab + "{} = {}\n".format(body,str(flatten(AST.body))))
        return body
    elif isinstance(AST, InjectFrom):
        var = getTmpVar()
        tmp = getTmpVar()
#         shift = flatten(AST.arg)
        f.write(c * tab + tmp + " = " +str(flatten(AST.arg)) + "\n")
        tag = flatten(AST.typ)
        if(tag != 3):
            f.write(c * tab + "{} = {} << 2\n".format(var, tmp))
            f.write(c * tab + "{} = {} | {}\n".format(var, var, flatten(AST.typ)))
        elif(tag == 3):
            f.write(c * tab + "{} = {} | {}\n".format(var, tmp, flatten(AST.typ)))
        return var
    elif isinstance(AST, ProjectTo):
        var = getTmpVar()
        if flatten(AST.typ) == BIG:
            notMASK = getTmpVar()
            f.write(c * tab + "{} = ~{}\n".format(notMASK, MASK))
#             f.write(c * tab + "{} = {} & {}\n".format(var, var, notMASK))
            f.write(c * tab + "{} = {} & {}\n".format(var, mapped(AST.arg), notMASK))
        else:
            f.write(c * tab + "{} = {} >> 2\n".format(var, mapped(AST.arg)))
        return var
    elif isinstance(AST, GetTag):
        var = getTmpVar()
        f.write(c * tab + "{} = {} & {}\n".format(var, mapped(AST.arg), MASK))
        return var
    else:
        return -1

########################################################################################
#
#                                     x86_IR
#
########################################################################################
# takes falttened AST and returns initial x86IR
def getAsmIR(AST):
    global var_cnt
    if isinstance(AST,Module):
        return getAsmIR(AST.node)
    elif isinstance(AST,Stmt):
        return [getAsmIR(x) for x in AST.nodes]
    elif isinstance(AST,Printnl):   
        param = str(getAsmIR(AST.nodes[0]))
        x86_IR.append(["print", param, None])
    elif isinstance(AST,Assign):
        dst = getAsmIR(AST.nodes[0])
        src = str(getAsmIR(AST.expr))
        if dst[:2] == "if":    
            tmp_var = getTmpVar()
            x86_IR.append(["movl", "$1", tmp_var])
            return x86_IR.append(["if", src, dst[2:], tmp_var])
        elif dst == src:
            return
        return x86_IR.append(["movl", src, dst])
    elif isinstance(AST, AssName):
        return AST.name
    elif isinstance(AST, Discard):
        exp = getAsmIR(AST.expr)
        if exp[:4] ==  "else":
            x86_IR.append(["else", None, exp[4:]])
        elif exp[:5] == "endif":
            x86_IR.append(["endif", None, exp[5:]])
        return exp
    elif isinstance(AST, Const):
        return "$" + str(AST.value)
    elif isinstance(AST, Name):
        return AST.name
    elif isinstance(AST, Add):
        lvar = str(getAsmIR(AST.left))
        rvar = str(getAsmIR(AST.right))
        tmp_var = getTmpVar()
        x86_IR.append(["movl", rvar, tmp_var])
        x86_IR.append(["addl", lvar, tmp_var])
        return  tmp_var
    elif isinstance(AST, UnarySub):
        var = str(getAsmIR(AST.expr))
        tmp_var = getTmpVar()
        x86_IR.append(["movl", var, tmp_var])
        var = tmp_var
        x86_IR.append(["negl", var, None])
        return var
    elif isinstance(AST, CallFunc):
        tmp_var = getTmpVar()
        args = []
        if AST.args:
            for i in range(len(AST.args)):
                args.append(getAsmIR(AST.args[i]))
        x86_IR.append(["call", AST.node.name, args])
        x86_IR.append(["movl","%eax",tmp_var])
        return tmp_var
    elif isinstance(AST, Bitand):               # logical bitwise operators stores the result back to first operand
        #print AST.nodes
        tmp_var = getTmpVar()
        x86_IR.append(["movl", getAsmIR(AST.nodes[0]), tmp_var])
        x86_IR.append(["and", tmp_var, getAsmIR(AST.nodes[1])])
        return tmp_var
    elif isinstance(AST, Bitor):
        tmp_var = getTmpVar()
        x86_IR.append(["movl", getAsmIR(AST.nodes[0]), tmp_var])
        x86_IR.append(["or", tmp_var, getAsmIR(AST.nodes[1])])
        return tmp_var
    elif isinstance(AST, RightShift):
        tmp_var = getTmpVar()
        x86_IR.append(["movl", getAsmIR(AST.left), tmp_var])
        x86_IR.append(["shr", tmp_var, getAsmIR(AST.right)])
        return tmp_var
    elif isinstance(AST, LeftShift):
        tmp_var = getTmpVar()
        x86_IR.append(["movl", getAsmIR(AST.left), tmp_var])
        x86_IR.append(["shl", tmp_var, getAsmIR(AST.right)])
        return tmp_var
    elif isinstance(AST, Invert):
        tmp_var = getTmpVar()
        x86_IR.append(["movl", getAsmIR(AST.expr), tmp_var])
        x86_IR.append(["not", tmp_var, None])
        return tmp_var    
    elif isinstance(AST, And):               # converting and/or to &/|
        #print AST.nodes
        tmp_var = getTmpVar()
        x86_IR.append(["movl", getAsmIR(AST.nodes[0]), tmp_var])
        x86_IR.append(["and", tmp_var, getAsmIR(AST.nodes[1])])
        return tmp_var
    elif isinstance(AST, Or):
        tmp_var = getTmpVar()
        x86_IR.append(["movl", getAsmIR(AST.nodes[0]), tmp_var])
        x86_IR.append(["or", tmp_var, getAsmIR(AST.nodes[1])])
        return tmp_var
    elif isinstance(AST, Compare):
        var = getTmpVar()
        var1 = getTmpVar()
        
#         print("EXPR")
#         print AST.expr
#         print("OPS1")
#         print AST.ops[0][1]
        
        
        lvar = str(getAsmIR(AST.expr))
        rvar = str(getAsmIR(AST.ops[0][1]))
        
        
        ops = AST.ops[0][0]
        if ops == "==" or ops == "!=" or ops == "is":
            x86_IR.append(["cmp", lvar, rvar, var1])
            x86_IR.append(["sete", var, var1])
            if(ops == "!="):
                x86_IR.append(["not", var, None])
                x86_IR.append(["and", var, "$1"])
            return var
#         if op == "is":
#             print ("IS")
#             print AST
# #             x86_IR.append(["call", "equal"])
#             return var
        return var
    else:
        return -1

def getIR(AST):
    # list of instructions
    # instructions of form [instruction, operand, operand]
    global x86_IR
    x86_IR = []
    getAsmIR(AST)
    return x86_IR

def preamble(out_file, n_stack):
    
    out_file.write(".global main\n")
    out_file.write("main:\n")
    out_file.write(tab + "pushl %ebp\n")
    out_file.write(tab + "movl %esp, %ebp\n")
    out_file.write(tab + "subl $" + str(n_stack*4) + ", %esp\n")

def conclude(out_file, num_vars):
    out_file.write(tab + "addl $" + str(num_vars * 4) + ", %esp\n")
    out_file.write(tab + "movl $0, %eax\n")
    out_file.write(tab + "leave\n" + tab + "ret\n")

def genAsm(x86_IR, outFile, n_stack):
    global of
    of = open(outFile,"w")
    preamble(of, n_stack)
    
    for inst in x86_IR:
        
#         print(inst)

        if(inst[1] == None):
            if(inst[0] == "else"):
                of.write(tab + "jmp endif" + inst[2] + "\n") 
            of.write(inst[0] + inst[2] + ":\n")
            continue
            
        if(inst[0] == "if"):
#             print inst
#             of.write(tab + "movl $1, " + inst[3] + "\n")
            of.write(tab + "cmp " + inst[1] + ", " + inst[3] + "\n")
            of.write(tab + "jne else" + inst[2] + "\n")
            continue
            
#         if(inst[0] == "cmp"):
#             of.write(tab + "movl $0, " + inst[3] + "\n")
#             of.write(tab + "cmp " + inst[1] + ", " + inst[2] + "\n")
#             continue
            
        if(inst[0] == "sete"):
            of.write(tab + "movl $0, " + inst[1] + "\n")
            
            reg = inst[1]
            if(reg == "%eax"):
                inst[1] = "%al"
            elif(reg == "%ebx"):
                inst[1] = "%bl"
            elif(reg == "%ecx"):
                inst[1] = "%cl"
            elif(reg == "%edx"):
                inst[1] = "%dl"
            elif(reg == "%esi"):
                inst[1] = "%al"
            elif(reg == "%edi"):
                inst[1] = "%al"
            
            of.write(tab + "sete " + inst[1] + "\n")
            continue 
            
        if(inst[0] == "print"):
            of.write(tab + "pushl " + inst[1] + "\n")
            of.write(tab + "call print_any" + "\n")
            of.write(tab + "addl $4, %esp" + "\n")
            continue
                       
        
        if(inst[2] == None):
            if(inst[0] == "movl"):
                continue
            of.write(tab + inst[0] + " " + inst[1] + "\n")
        else:
            
            if(inst[0] == "or" or inst[0] == "and"):
#                 if(inst[2][0] == "$"):
#                     of.write(tab + inst[0] + " " + inst[1] + ", " + inst[2][1:] + "\n")
#                 else:
                of.write(tab + inst[0] + " " + inst[2] + ", " + inst[1] + "\n")
                continue
                
            if(inst[0] == "shl" or inst[0] == "shr"):
#                 if(inst[2][0] == "$"):
#                     of.write(tab + inst[0] + " " + inst[2][1:] + ", " + inst[1] + "\n")
#                 else:
                of.write(tab + inst[0] + " " + inst[2] + ", " + inst[1] + "\n")
                continue
            
            # account for params here!!
            if(isinstance(inst[2], list)):
                
                # push each argument onto the stack
                for i in reversed(inst[2]):
#                     if(i[0] == "$"):
#                         long = int(i[1:])
#                         long = long << 2
#                         long = long | INT
#                         i = "$" + str(long)
                    of.write(tab + "pushl " + i + "\n")
                
                of.write(tab + inst[0] + " " + inst[1] + "\n")
                
                # add values back on to the stack
                of.write(tab + "addl $" + str(len(inst[2])*4) + ", %esp\n")
            else:
                of.write(tab + inst[0] + " " + inst[1] + ", " + inst[2] + "\n")
        
    
    conclude(of, n_stack)
    of.close

########################################################################################
#
#                                      PARSING
#
########################################################################################

# take input filename and return AST for the program
def parse(filename):
    return compiler.parseFile(filename)

########################################################################################
#
#                                        MAIN
#
########################################################################################

if __name__ == "__main__":
    
    # get input file from argv1
    P0_file=sys.argv[-1]
    
    flattened = P0_file[:-3] + "_flat.py"
    asm = P0_file[:-3] + ".s"
        
    # parse input file to get AST
#     AST = parse(P0_file)
#     print AST
#     print "\n"
    AST = parser.parseFile(P0_file)
    
#     # for debugging
    print "\n\n--------AST--------"
    print AST
    
    print "\n-------ExpAST-------"
    expAST = explicate(AST)
    print expAST
    
    print "\n-------FLATTEN-------"
    f=open(flattened,"w")
    flatten(expAST)
    f.seek(0)
    f.close()
    # to print flattened file
    f =open(flattened)
    data = f.read()
    f.close()
    print(data)
    
    print "\n-------AST_flat-------"
    AST_flat = parse(flattened)
    print AST_flat
    print "\n-------x86_IR-------"
    x86_IR = getIR(AST_flat)
    for i in range(len(x86_IR)):
        print (x86_IR[i])

    print("\n")
    
    temps = []
    tmp_cnt = 0
    
    colored = False
    while(colored == False):
        
#         if(colored == True):
#             break
        
#         print("HERE")        
        cfg = graph.CFG(x86_IR)
        cfg.addParents()
        cfg.doLiveness(x86_IR)
        live = cfg.orderLiveness()
#         cfg.printCFG()
#         cfg.printLiveness()
        
#         for i in live:
#             print i
#         for i in x86_IR:
#             print i
#         print("\n")
#         print(len(live))
#         print(len(x86_IR))
    
        # build graph from liveness
        g = graph.Graph(live)
        
        g.buildGraph(x86_IR, live, temps)
        
        
        # color graph and identify spilled variables
        spilled = g.colorGraph()
        
        
        print(spilled)
        
        if(spilled == True):
            
            # assume graph is fully colored by default
            colored = True
            
            stop = False
            
            # identify each variable that spills, put them into a list
            # iterate through x86_IR, check each DST operand for stack variable
            # if DST = stack var, modify IR and recolor
            spilled_vars = g.getStackVars()

            tmp_list = []
            for inst in x86_IR:
                
#                 print(inst)
#                 print(colored)

                # only one operand, continue
                if(inst[2] == None or inst[0] == "if" or inst[0] == "else" or inst[0] == "endif" or inst[0] == "call" or inst[0] == "print"):
                    tmp_list.append(inst)
                    continue

                op = inst[0]
                src = inst[1]
                dst = inst[2]
                
                if(op == "or" or op == "and" or op == "shl" or op == "shr"):
                    if(src in spilled_vars):
                        tmp = "_tmp" + str(tmp_cnt)
                        tmp_cnt += 1
                        tmp_list.append(["movl", src, tmp])
                        tmp_list.append([op, tmp, dst])
                        tmp_list.append(["movl", tmp, src])
                        stop = True
                        continue
                        
                if(op == "sete"):
                    if(inst[1] in spilled_vars):
                        tmp = "_tmp" + str(tmp_cnt)
                        tmp_cnt += 1
                        tmp_list.append(["sete", tmp, inst[2]])
                        tmp_list.append(["movl", tmp, inst[2]])
                        temps.append(tmp)
                        stop = True
                        
                        print("HERE2")
                        print inst
                        
                    else:
                        tmp_list.append(inst)
                        tmp_list.append(["movl", inst[1], inst[2]])
                        
                        print("HERE")
                        print inst
                    continue
                
                if(dst in spilled_vars):
#                     colored = False
                    if(op == "movl"):
                        
                        # if both source and destination are on stack, add temps
                        if(src in spilled_vars):
                            tmp1 = "_tmp" + str(tmp_cnt)
                            tmp_cnt += 1
                            tmp_list.append(["movl", src, tmp1])
                            tmp_list.append(["movl", tmp1, dst])
                            temps.append(tmp1)
                            stop = True
                            
                        # otherwise, keep instruction and dont change state
                        else:
#                             colored = True
                            tmp_list.append(inst)
                    
                    # introduce necessary spillcode for arithmetic operations
                    elif(op == "addl"):
                        tmp1 = "_tmp" + str(tmp_cnt)
                        tmp2 = "_tmp" + str(tmp_cnt+1)
                        tmp_cnt += 2
                        tmp_list.append(["movl", dst, tmp1])
                        tmp_list.append(["movl", src, tmp2])
                        tmp_list.append(["addl", tmp1, tmp2])
                        tmp_list.append(["movl", tmp2, dst])
                        temps.append(tmp1)
                        temps.append(tmp2)
                        stop = True
                    
                    else:
#                         stop = True
                        tmp_list.append(inst)
                
                # if dst operand is not a stack variable, do nothing
                else:
                    tmp_list.append(inst)
            
            if(stop):
                colored = False
                
            print(colored)


            x86_IR = tmp_list            
        else:
            colored = True
        
#     print("OUTSIDE")
#     print(spilled_vars)
        
#     for i in x86_IR:
#         print i
            
    # assign homes and update IR with proper memory/register locations
    homes, n_stack = g.assignHomes()
    
#     for home in homes:
#         print(home)
    
#     g.printNodes()
    
    for inst in x86_IR:
        
#         print(inst)
        
#         print inst


        if(inst[0] == "if"):
            inst[1] = homes[inst[1]]
            inst[3] = homes[inst[3]]
            continue
            
#         if(inst[0] == cmp):
#             inst[3] = homes[inst[3]]
        
        if(inst[1] is None):
            continue
        
        
        if(inst[0] == "call"):
            if(isinstance(inst[2], list)):
                for i in range(len(inst[2])):
                    if(inst[2][i][0] != "$" and inst[2][i][0] != "%"):
                        inst[2][i] = homes[inst[2][i]]
            continue
        
        if(inst[1][0] != "$" and inst[1][0] != "%"):
            inst[1] = homes[inst[1]]
            
            
        try:
            if(inst[2][0] != "$" and inst[2][0] != "%"):
                inst[2] = homes[inst[2]]
        except:
            inst[2] = None

    # generate assembly file from IR
    genAsm(x86_IR, asm, n_stack)
    
    # remove flattened representation file
    os.remove(flattened)