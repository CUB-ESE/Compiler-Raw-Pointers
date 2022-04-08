#Lexer
tokens = ('PRINT','INT','PLUS', 'MINUS', 'LPAREN','RPAREN','EQUAL', 'NAME')

t_PRINT = r'print'

t_PLUS = r'\+'

t_MINUS = r'\-'

t_LPAREN = r'\('

t_RPAREN = r'\)'

t_EQUAL = r'\='

rfunc = { 'print' : 'PRINT'} 

def t_NAME(t):
    r'[a-zA-Z_][a-zA-Z0-9_]*'
    t.type = rfunc.get(t.value,'NAME')
    return t
    
def t_INT(t):
    r'\d+' 
    try:
        t.value = int(t.value)
    except ValueError:
        print "integer value too large", t.value
        t.value = 0
    return t

def t_newline(t):
    r'\n+'
    t.lexer.lineno += len(t.value)

t_ignore  = ' \t'

t_ignore_COMMENT = r'\#.*'

def t_error(t):
    print "Illegal character '%s'" % t.value[0]
    t.lexer.skip(1)

# Parser
from compiler.ast import Printnl, Add, Const, Module, Stmt, CallFunc, Name, Assign, AssName, Discard, UnarySub
import compiler
precedence = (
    ('nonassoc','PRINT'),   #limited support
    ('left','PLUS', 'MINUS')
    )
def p_program(t):
    'program : module'
    t[0] = Module(None,t[1])
def p_statement(t):
    '''module : slist'''
    t[0] = Stmt(t[1], None)
def p_slist(t):
    '''slist : slist statement
             | statement'''
    if len(t) == 2:
        t[0] = [t[1]]
    else:
        t[0] = t[1] + [t[2]]
def p_print_statement(t):
    '''statement : PRINT expression'''
    t[0] = Printnl([t[2]], None)
def p_assign_statement(t):
    '''statement : NAME EQUAL expression 
                 | expression EQUAL expression'''    
    t[0] = Assign([AssName(t[1],'OP_ASSIGN')],t[3])
    
def p_funcall_expression(t):
    ''' expression : NAME LPAREN expression RPAREN '''
    t[0] = CallFunc(Name(t[1]),[t[3]], None, None)
    
def p_exp_parens(t):
    '''expression : LPAREN expression RPAREN'''
    t[0] = t[2]
def p_exp_statement(t):
    '''statement : expression'''
    t[0] = Discard(t[1])
def p_plus_expression(t):
    'expression : expression PLUS expression'
    t[0] = Add((t[1], t[3]))
def p_int_expression(t):
    'expression : INT'
    t[0] = Const(t[1])
def p_input_expression(t):
    'expression : NAME LPAREN RPAREN'
    t[0] = CallFunc(Name(t[1]),[], None, None)
def p_name_expression(t):
    'expression : NAME'
    t[0] = Name(t[1])
def p_usub_expression(t):
    'expression : MINUS expression'
    t[0] = UnarySub(t[2])
def p_error(t):
    print "Syntax error at '%s'" % t.value
    
import ply.lex as lex
import ply.yacc as yacc

# convert filename -> string
# run string through parser and return AST
def parseFile(filename):
    #open text file in read mode
    text_file = open(filename, "r")

    #read whole file to a string
    data = text_file.read()

    
    lexer = lex.lex()
    parser = yacc.yacc()

    return parser.parse(data)