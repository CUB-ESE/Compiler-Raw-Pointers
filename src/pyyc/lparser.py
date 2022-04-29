from ply.yacc import yacc
from ply.lex import lex, LexToken
from compiler.ast import *

class C_String:
    def __init__ (self, string):
        self.string = string
    def __repr__ (self):
        return "C_String(" + self.string + ")"
  
    
tokens = ( 'INT', 'FLOAT', 'PLUS', 'MINUS', 'TIMES', 'DIVIDE', 'LPAREN', 'RPAREN',
           'NAME', 'PRINT', 'INPUT', 'DEF', 'RETURN', 'WHILE', 'IF', 'ELSE', 'LAMBDA', 'STRING',
           'ASSIGN', 'COLON', 'LCURLY', 'RCURLY', 'LSQUARE', 'RSQUARE', 'COMMA', 'MEMCPY', 'MEMSET',
            'AND', 'OR', 'EQ', 'NEQ', 'INDENT', 'DEDENT', 'TRUE', 'FALSE', 'NOT', 'IS', 'NEWLINE' )

indent_amount = 0
last_indent_level = 0
eof_flag = False
t_PLUS = r'\+'
t_MINUS = r'-'
t_TIMES = r'\*'
t_DIVIDE = r'/'
t_LPAREN = r'\('
t_RPAREN = r'\)'
t_ASSIGN = r'='
t_COLON = r':'
t_LCURLY = r'{'
t_RCURLY = r'}'
t_LSQUARE = r'\['
t_RSQUARE = r'\]'
t_COMMA = r','
t_EQ = r'=='
t_NEQ = r'!='
reserved = { 
    'print' : 'PRINT', 
    'input' : 'INPUT',
    'memcpy' : 'MEMCPY',
    'memset' : 'MEMSET', 
    'def' : 'DEF',
    'return' : 'RETURN',
    'while' : 'WHILE',
    'if' : 'IF',
    'else' : 'ELSE',
    'lambda' : 'LAMBDA',
    'and' : 'AND',
    'or' : 'OR',
    'True' : 'TRUE',
    'False' : 'FALSE',
    'not' : 'NOT',
    'is' : 'IS'
}


# Match a single quote, then zero of more characters until we see another quote
# Remove the quotes from the string and add a null terminator, as this is going to be a c_string
def t_STRING(t):
    r'"[^"]*"'
    return t

def t_comment(t):
    r'\#.*'

    


# Multiline mode regex, matches a line that starts with one of more whitespace
# Transforms whitespace into an indent level, also handles coming down from nested indents, does not handle going from indent 1 to 0
# Also warns about inconsistent whitespacing, as it uses the first amount of whitespace seen to calculate future indent levels
def t_INDENT (t):
    r'(?m)^\s+'
    global indent_amount, last_indent_level
    if indent_amount == 0:
        indent_amount = len (t.value)
        t.value = 1
        last_indent_level = 1
    elif len (t.value) % indent_amount != 0 :
        print "inconsistent indent sizes detected, maybe comment"
        t.lexer.skip(1)
        return
    else:
        t.value = int (len (t.value) / indent_amount)
        if t.value < last_indent_level:
            t.type = 'DEDENT'
            last_indent_level -= 1
        elif t.value == last_indent_level:
            return
        else:
            last_indent_level = t.value
    return t
def t_FLOAT (t):
    r'\d+\.\d+'
    try:
        t.value = float (t.value)
    except:
        print "float too big"
        t.value = 0
    return t
def t_INT (t):
    r'\d+'
    try:
        t.value = int (t.value)
    except:
        print "int too big"
        t.value = 0
    return t
def t_NAME (t):
    r'[a-zA-Z_][a-zA-Z0-9_]*'
    t.type = reserved.get (t.value, 'NAME')
    return t
def t_NEWLINE (t):
    r'\n+'
    t.lexer.lineno += t.value.count("\n")
    global last_indent_level, lexer
    if last_indent_level == 1 and t.lexer.lexdata [t.lexpos+1] != ' ' and t.lexer.lexdata [t.lexpos+1] != '#':
        last_indent_level = 0
        t.type = 'DEDENT'
        t.value = 0
        return t
    pass
    
def t_eof(t):
    # Get more input (Example)
    global last_indent_level, eof_flag, lexer
    if last_indent_level >= 1:
        last_indent_level = 0
        t.type = 'DEDENT'
        t.value = 0
        return t
    return None
        
def t_error(t):
    t.lexer.skip(1)
    
##############################################
# Added in P0
##############################################
precedence = (
    ('left', 'PLUS', 'MINUS'),
    ('left', 'TIMES', 'DIVIDE')
)
def p_program (p):
    '''
    program : module
    '''
    p[0] = Module (None, p[1])
    
def p_module (p):
    '''
    module : statements
    '''
    p[0] = Stmt (p[1])
def p_print_statement (p):
    '''
    simple_statement : PRINT expression
    '''
    p[0] = Printnl ([p[2]], None)
def p_assign_statement (p):
    '''
    simple_statement : target ASSIGN expression
                     
    '''
    p[0] = Assign ([p[1]], p[3])
def p_expr_statement (p):
    '''
    simple_statement : expression
                     | target   
    '''
    p[0] = Discard (p[1])
    
def p_expression_name (p):
    '''
    expression : NAME
               | TRUE
               | FALSE
    '''
    p[0] = Name (p[1])
    
def p_expression_const (p):
    '''
    expression : INT
               | FLOAT
    '''
    p[0] = Const (p[1])  

def p_expression_cstring (p):
    'expression : STRING'
    p[0] = C_String (p[1])

def p_expression_group (p):
    '''
    expression : LPAREN expression RPAREN
    '''
    p[0] = p[2]
    
def p_expression_usub (p):
    '''
    expression : MINUS expression
    '''
    p[0] = UnarySub (p[2])
    
def p_expression_add (p):
    '''
    expression : expression PLUS expression
    '''
    p[0] = Add ([p[1], p[3]])
        
# Removed when generic function calling was added in P2 
def p_expression_input (p):
    '''
    expression :  INPUT LPAREN RPAREN
    '''
    p[0] = CallFunc(Name('input'), [], None, None)
    
def p_expression_memcpy (p):
    '''
    simple_statement :  MEMCPY LPAREN expr_list RPAREN
    '''
    p[0] = CallFunc(Name('p1_memcpy'), p[3], None, None)
    
def p_expression_memset (p):
    '''
    simple_statement :  MEMSET LPAREN expr_list RPAREN
    '''
    p[0] = CallFunc(Name('p1_memset'), p[3], None, None)
##############################################
# Added in P1
##############################################
def p_empty (p):
    'empty :'
    pass
def p_expression_unot (p):
    '''
    expression : NOT expression
    '''
    p[0] = Not (p[2])
    
def p_expression_and (p):
    '''
    expression : expression AND expression
    '''
    p[0] = And ([p[1], p[3]])
    
def p_expression_or (p):
    '''
    expression : expression OR expression
    '''
    p[0] = Or ([p[1], p[3]])
    
def p_expression_compare (p):
    '''
    expression : expression EQ expression
               | expression NEQ expression
               | expression IS expression
    '''
    p[0] = Compare (p[1], [(p[2], p[3])])
    
def p_expression_ternary (p):
    '''
    expression : expression IF expression ELSE expression
    '''
    p[0] = IfExp (p[3], p[1], p[5])
    
def p_expression_list (p):
    '''
    expression : LSQUARE expr_list RSQUARE
    '''
    p[0] = List (p[2])
    
def p_expression_dict (p):
    '''
    expression : LCURLY key_datum_list RCURLY
    '''
    p[0] = Dict (p[2])
    
def p_expression_subscript (p):
    '''
    expression : subscription
    '''
    p[0] = Subscript (p[1].expr, 'OP_APPLY', p[1].subs)
    
def p_subscript (p):
    '''
    subscription : expression LSQUARE expression RSQUARE
    '''
    p[0] = Subscript (p[1], '', [p[3]])
    
def p_target_name (p):
    '''
    target : NAME 
           
    '''
    p[0] = AssName (p[1], 'OP_ASSIGN')
def p_target_func(p):
    ''' 
    target : NAME LPAREN expression RPAREN 
    
    '''
    p[0] = CallFunc(Name(p[1]),[p[3]], None, None)
    
def p_target_subscript (p):
    '''
    target : subscription
    '''
    p[1].flags = 'OP_ASSIGN'
    p[0] = p[1]
    
def p_key_datum (p):
    '''
    key_datum : expression COLON expression
    '''
    p[0] = (p[1], p[3])
def p_key_datum_list_empty (p):
    '''
    key_datum_list : empty
    '''
    p[0] = tuple()
    
def p_key_datum_list (p):
    '''
    key_datum_list : key_datum
    '''
    p[0] = [p[1]]
    
def p_key_datum_list_extend (p):
    '''
    key_datum_list : key_datum_list COMMA key_datum
    '''
    p[1].append (p[3])
    p[0] = p[1]
    
def p_expr_list_empty (p):
    '''
    expr_list : empty
    '''
    p[0] = []
    
def p_expr_list (p):
    '''
    expr_list : expression
    '''
    p[0] = [p[1]]
    
def p_expr_list_extend (p):
    '''
    expr_list : expr_list COMMA expression
    '''
    p[1].append (p[3])
    p[0] = p[1]
##############################################
# Added in P2
##############################################
def p_expression_callfunc (p):
    '''
    expression : expression LPAREN expr_list RPAREN
    '''
    p[0] = CallFunc(p[1], p[3], None, None)
    
def p_expression_lambda (p):
    '''
    expression : LAMBDA id_list COLON expression
    '''
    p[0] = Lambda (p[2], [] if len(p[2]) else tuple(), 0, p[4])
    
def p_id_list_empty (p):
    '''
    id_list : empty
    '''
    p[0] = tuple()
def p_id_list (p):
    '''
    id_list : NAME
    '''
    p[0] = [p[1]]
def p_id_list_extend (p):
    '''
    id_list : id_list COMMA NAME
    '''
    p[1].append (p[3])
    p[0] = p[1]
    
def p_statement (p):
    '''
    statement : simple_statement
              | compound_statement
    '''
    p[0] = p[1]
def p_return_statement (p):
    '''
    simple_statement : RETURN expression
    '''
    p[0] = Return (p[2])
def p_compound_statement (p):
    '''
    compound_statement : DEF NAME LPAREN id_list RPAREN COLON suite
    '''
    p[0] = Function (None, p[2], p[4], [], 0, None, Stmt(p[7]))
    
def p_suite (p):
    '''
    suite : INDENT statements DEDENT
    '''
    p[0] = p[2]
    
def p_statements (p):
    '''
    statements : statement
    '''
    p[0] = [p[1]]
def p_statements_extend (p):
    '''
    statements : statements statement
    '''
    p[1].append (p[2])
    p[0] = p[1]
    
##############################################
# Added in P3
##############################################
# Currently it is confusing this with the ifexpr expression!
def p_if_else_statement (p):
    '''
    simple_statement : IF expression COLON suite ELSE COLON suite
    '''
    p[0] = If ([(p[2], Stmt (p[4]))], Stmt (p[7]))
def p_while_statement (p):
    '''
    simple_statement : WHILE expression COLON suite
    '''
    p[0] = While (p[2], Stmt(p[4]), None)
def p_error(p):
    global parser
    print "Syntax error on "+str(p.type)+" at " + str(p.lineno)
    print parser.statestack
    
    
    
    
    
    
lexer = lex ()
parser = yacc ()
def parseFile (filename):
    global parser, lexer
    data = open(filename).read() + "\n"
    
    lexer.input (data)
#     for tok in lexer:
#         print tok
    
    lexer = lex ()    
    return parser.parse (data)