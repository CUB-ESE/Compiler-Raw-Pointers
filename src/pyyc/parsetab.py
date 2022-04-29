
# parsetab.py
# This file is automatically generated. Do not edit.
# pylint: disable=W,C,R
_tabversion = '3.10'

_lr_method = 'LALR'

_lr_signature = 'leftPLUSMINUSleftTIMESDIVIDEAND ASSIGN COLON COMMA DEDENT DEF DIVIDE ELSE EQ FALSE FLOAT IF INDENT INPUT INT IS LAMBDA LCURLY LPAREN LSQUARE MEMCPY MEMSET MINUS NAME NEQ NEWLINE NOT OR PLUS PRINT RCURLY RETURN RPAREN RSQUARE STRING TIMES TRUE WHILE\n    program : module\n    \n    module : statements\n    \n    simple_statement : PRINT expression\n    \n    simple_statement : target ASSIGN expression\n                     \n    \n    simple_statement : expression\n                     | target   \n    \n    expression : NAME\n               | TRUE\n               | FALSE\n    \n    expression : INT\n               | FLOAT\n    expression : STRING\n    expression : LPAREN expression RPAREN\n    \n    expression : MINUS expression\n    \n    expression : expression PLUS expression\n    \n    expression :  INPUT LPAREN RPAREN\n    \n    simple_statement :  MEMCPY LPAREN expr_list RPAREN\n    \n    simple_statement :  MEMSET LPAREN expr_list RPAREN\n    empty :\n    expression : NOT expression\n    \n    expression : expression AND expression\n    \n    expression : expression OR expression\n    \n    expression : expression EQ expression\n               | expression NEQ expression\n               | expression IS expression\n    \n    expression : expression IF expression ELSE expression\n    \n    expression : LSQUARE expr_list RSQUARE\n    \n    expression : LCURLY key_datum_list RCURLY\n    \n    expression : subscription\n    \n    subscription : expression LSQUARE expression RSQUARE\n    \n    target : NAME \n           \n     \n    target : NAME LPAREN expression RPAREN \n    \n    \n    target : subscription\n    \n    key_datum : expression COLON expression\n    \n    key_datum_list : empty\n    \n    key_datum_list : key_datum\n    \n    key_datum_list : key_datum_list COMMA key_datum\n    \n    expr_list : empty\n    \n    expr_list : expression\n    \n    expr_list : expr_list COMMA expression\n    \n    expression : expression LPAREN expr_list RPAREN\n    \n    expression : LAMBDA id_list COLON expression\n    \n    id_list : empty\n    \n    id_list : NAME\n    \n    id_list : id_list COMMA NAME\n    \n    statement : simple_statement\n              | compound_statement\n    \n    simple_statement : RETURN expression\n    \n    compound_statement : DEF NAME LPAREN id_list RPAREN COLON suite\n    \n    suite : INDENT statements DEDENT\n    \n    statements : statement\n    \n    statements : statements statement\n    \n    simple_statement : IF expression COLON suite ELSE COLON suite\n    \n    simple_statement : WHILE expression COLON suite\n    '
    
_lr_action_items = {'DEDENT':([3,5,10,13,16,17,18,22,23,25,26,28,30,31,32,39,40,43,52,65,72,73,75,77,79,81,82,83,86,87,91,92,94,95,100,101,104,105,108,109,112,113,],[-7,-46,-8,-47,-51,-29,-12,-9,-6,-10,-11,-5,-29,-7,-48,-3,-52,-14,-20,-27,-13,-16,-4,-28,-21,-23,-25,-15,-22,-24,-32,-18,-54,-17,-30,-41,-42,109,-26,-50,-49,-53,]),'RETURN':([0,3,5,9,10,13,16,17,18,22,23,25,26,28,30,31,32,39,40,43,52,65,72,73,75,77,79,81,82,83,86,87,91,92,93,94,95,100,101,104,105,108,109,112,113,],[1,-7,-46,1,-8,-47,-51,-29,-12,-9,-6,-10,-11,-5,-29,-7,-48,-3,-52,-14,-20,-27,-13,-16,-4,-28,-21,-23,-25,-15,-22,-24,-32,-18,1,-54,-17,-30,-41,-42,1,-26,-50,-49,-53,]),'LSQUARE':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,35,36,37,38,39,40,41,43,44,46,47,51,52,53,54,55,56,57,58,59,60,61,65,66,67,72,73,75,76,77,78,79,80,81,82,83,85,86,87,89,90,91,92,93,94,95,99,100,101,102,104,105,108,109,112,113,],[2,2,2,-7,-46,2,2,2,-8,-47,2,-51,-29,-12,2,2,-9,-6,2,-10,-11,2,54,-29,-7,54,54,2,2,54,54,-52,2,-14,54,54,2,54,54,2,2,2,2,2,2,2,2,2,-27,2,54,-13,-16,54,2,-28,2,54,54,54,54,-15,54,54,54,2,54,-32,-18,2,-54,-17,54,-30,-41,2,54,2,54,-50,-49,-53,]),'MEMSET':([0,3,5,9,10,13,16,17,18,22,23,25,26,28,30,31,32,39,40,43,52,65,72,73,75,77,79,81,82,83,86,87,91,92,93,94,95,100,101,104,105,108,109,112,113,],[4,-7,-46,4,-8,-47,-51,-29,-12,-9,-6,-10,-11,-5,-29,-7,-48,-3,-52,-14,-20,-27,-13,-16,-4,-28,-21,-23,-25,-15,-22,-24,-32,-18,4,-54,-17,-30,-41,-42,4,-26,-50,-49,-53,]),'LCURLY':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[24,24,24,-7,-46,24,24,24,-8,-47,24,-51,-29,-12,24,24,-9,-6,24,-10,-11,24,-5,-29,-7,-48,24,24,-3,-52,24,-14,24,-20,24,24,24,24,24,24,24,24,24,-27,24,-13,-16,-4,24,-28,24,-21,-23,-25,-15,-22,-24,24,-32,-18,24,-54,-17,-30,-41,24,-42,24,-26,-50,-49,-53,]),'WHILE':([0,3,5,9,10,13,16,17,18,22,23,25,26,28,30,31,32,39,40,43,52,65,72,73,75,77,79,81,82,83,86,87,91,92,93,94,95,100,101,104,105,108,109,112,113,],[7,-7,-46,7,-8,-47,-51,-29,-12,-9,-6,-10,-11,-5,-29,-7,-48,-3,-52,-14,-20,-27,-13,-16,-4,-28,-21,-23,-25,-15,-22,-24,-32,-18,7,-54,-17,-30,-41,-42,7,-26,-50,-49,-53,]),'COLON':([10,18,22,25,26,29,30,31,38,43,46,51,52,62,63,64,65,72,73,77,79,81,82,83,86,87,100,101,103,104,106,107,108,],[-8,-12,-9,-10,-11,-19,-29,-7,69,-14,74,78,-20,-44,89,-43,-27,-13,-16,-28,-21,-23,-25,-15,-22,-24,-30,-41,-45,-42,110,111,-26,]),'PRINT':([0,3,5,9,10,13,16,17,18,22,23,25,26,28,30,31,32,39,40,43,52,65,72,73,75,77,79,81,82,83,86,87,91,92,93,94,95,100,101,104,105,108,109,112,113,],[8,-7,-46,8,-8,-47,-51,-29,-12,-9,-6,-10,-11,-5,-29,-7,-48,-3,-52,-14,-20,-27,-13,-16,-4,-28,-21,-23,-25,-15,-22,-24,-32,-18,8,-54,-17,-30,-41,-42,8,-26,-50,-49,-53,]),'TRUE':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[10,10,10,-7,-46,10,10,10,-8,-47,10,-51,-29,-12,10,10,-9,-6,10,-10,-11,10,-5,-29,-7,-48,10,10,-3,-52,10,-14,10,-20,10,10,10,10,10,10,10,10,10,-27,10,-13,-16,-4,10,-28,10,-21,-23,-25,-15,-22,-24,10,-32,-18,10,-54,-17,-30,-41,10,-42,10,-26,-50,-49,-53,]),'MEMCPY':([0,3,5,9,10,13,16,17,18,22,23,25,26,28,30,31,32,39,40,43,52,65,72,73,75,77,79,81,82,83,86,87,91,92,93,94,95,100,101,104,105,108,109,112,113,],[11,-7,-46,11,-8,-47,-51,-29,-12,-9,-6,-10,-11,-5,-29,-7,-48,-3,-52,-14,-20,-27,-13,-16,-4,-28,-21,-23,-25,-15,-22,-24,-32,-18,11,-54,-17,-30,-41,-42,11,-26,-50,-49,-53,]),'DEF':([0,3,5,9,10,13,16,17,18,22,23,25,26,28,30,31,32,39,40,43,52,65,72,73,75,77,79,81,82,83,86,87,91,92,93,94,95,100,101,104,105,108,109,112,113,],[12,-7,-46,12,-8,-47,-51,-29,-12,-9,-6,-10,-11,-5,-29,-7,-48,-3,-52,-14,-20,-27,-13,-16,-4,-28,-21,-23,-25,-15,-22,-24,-32,-18,12,-54,-17,-30,-41,-42,12,-26,-50,-49,-53,]),'NEQ':([3,10,17,18,22,25,26,28,30,31,32,35,38,39,43,44,46,51,52,65,67,72,73,75,77,79,80,81,82,83,85,86,87,90,99,100,101,104,108,],[-7,-8,-29,-12,-9,-10,-11,61,-29,-7,61,61,61,61,-14,61,61,61,61,-27,61,-13,-16,61,-28,61,61,61,61,-15,61,61,61,61,61,-30,-41,61,61,]),'RSQUARE':([2,10,18,22,25,26,30,31,33,34,35,43,52,65,72,73,77,79,80,81,82,83,86,87,90,100,101,104,108,],[-19,-8,-12,-9,-10,-11,-29,-7,65,-38,-39,-14,-20,-27,-13,-16,-28,-21,100,-23,-25,-15,-22,-24,-40,-30,-41,-42,-26,]),'RPAREN':([10,18,22,25,26,30,31,34,35,37,41,43,44,45,52,58,62,64,65,67,68,70,71,72,73,77,79,81,82,83,84,86,87,90,96,100,101,103,104,108,],[-8,-12,-9,-10,-11,-29,-7,-38,-39,-19,-19,-14,72,73,-20,-19,-44,-43,-27,91,92,95,-19,-13,-16,-28,-21,-23,-25,-15,101,-22,-24,-40,106,-30,-41,-45,-42,-26,]),'RCURLY':([10,18,22,24,25,26,30,31,43,48,49,50,52,65,72,73,77,79,81,82,83,86,87,98,99,100,101,104,108,],[-8,-12,-9,-19,-10,-11,-29,-7,-14,-35,-36,77,-20,-27,-13,-16,-28,-21,-23,-25,-15,-22,-24,-37,-34,-30,-41,-42,-26,]),'MINUS':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[14,14,14,-7,-46,14,14,14,-8,-47,14,-51,-29,-12,14,14,-9,-6,14,-10,-11,14,-5,-29,-7,-48,14,14,-3,-52,14,-14,14,-20,14,14,14,14,14,14,14,14,14,-27,14,-13,-16,-4,14,-28,14,-21,-23,-25,-15,-22,-24,14,-32,-18,14,-54,-17,-30,-41,14,-42,14,-26,-50,-49,-53,]),'COMMA':([2,10,18,22,24,25,26,29,30,31,33,34,35,37,41,43,48,49,50,52,58,62,63,64,65,68,70,71,72,73,77,79,81,82,83,84,86,87,90,96,98,99,100,101,103,104,108,],[-19,-8,-12,-9,-19,-10,-11,-19,-29,-7,66,-38,-39,-19,-19,-14,-35,-36,76,-20,-19,-44,88,-43,-27,66,66,-19,-13,-16,-28,-21,-23,-25,-15,66,-22,-24,-40,88,-37,-34,-30,-41,-45,-42,-26,]),'PLUS':([3,10,17,18,22,25,26,28,30,31,32,35,38,39,43,44,46,51,52,65,67,72,73,75,77,79,80,81,82,83,85,86,87,90,99,100,101,104,108,],[-7,-8,-29,-12,-9,-10,-11,57,-29,-7,57,57,57,57,-14,57,57,57,57,-27,57,-13,-16,57,-28,57,57,57,57,-15,57,57,57,57,57,-30,-41,57,57,]),'ASSIGN':([3,17,23,91,100,],[-31,-33,47,-32,-30,]),'$end':([3,5,6,9,10,13,15,16,17,18,22,23,25,26,28,30,31,32,39,40,43,52,65,72,73,75,77,79,81,82,83,86,87,91,92,94,95,100,101,104,108,109,112,113,],[-7,-46,-1,-2,-8,-47,0,-51,-29,-12,-9,-6,-10,-11,-5,-29,-7,-48,-3,-52,-14,-20,-27,-13,-16,-4,-28,-21,-23,-25,-15,-22,-24,-32,-18,-54,-17,-30,-41,-42,-26,-50,-49,-53,]),'STRING':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[18,18,18,-7,-46,18,18,18,-8,-47,18,-51,-29,-12,18,18,-9,-6,18,-10,-11,18,-5,-29,-7,-48,18,18,-3,-52,18,-14,18,-20,18,18,18,18,18,18,18,18,18,-27,18,-13,-16,-4,18,-28,18,-21,-23,-25,-15,-22,-24,18,-32,-18,18,-54,-17,-30,-41,18,-42,18,-26,-50,-49,-53,]),'IS':([3,10,17,18,22,25,26,28,30,31,32,35,38,39,43,44,46,51,52,65,67,72,73,75,77,79,80,81,82,83,85,86,87,90,99,100,101,104,108,],[-7,-8,-29,-12,-9,-10,-11,56,-29,-7,56,56,56,56,-14,56,56,56,56,-27,56,-13,-16,56,-28,56,56,56,56,-15,56,56,56,56,56,-30,-41,56,56,]),'ELSE':([10,18,22,25,26,30,31,43,52,65,72,73,77,79,81,82,83,85,86,87,97,100,101,104,108,109,],[-8,-12,-9,-10,-11,-29,-7,-14,-20,-27,-13,-16,-28,-21,-23,-25,-15,102,-22,-24,107,-30,-41,-42,-26,-50,]),'LPAREN':([0,1,2,3,4,5,7,8,9,10,11,13,14,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,35,36,37,38,39,40,41,42,43,44,46,47,51,52,53,54,55,56,57,58,59,60,61,65,66,67,72,73,75,76,77,78,79,80,81,82,83,85,86,87,89,90,91,92,93,94,95,99,100,101,102,104,105,108,109,112,113,],[19,19,19,36,37,-46,19,19,19,-8,41,-47,19,-51,-29,-12,19,45,19,-9,-6,19,-10,-11,19,58,-29,-7,58,58,19,19,58,58,-52,19,71,-14,58,58,19,58,58,19,19,19,19,19,19,19,19,19,-27,19,58,-13,-16,58,19,-28,19,58,58,58,58,-15,58,58,58,19,58,-32,-18,19,-54,-17,58,-30,-41,19,58,19,58,-50,-49,-53,]),'INPUT':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[20,20,20,-7,-46,20,20,20,-8,-47,20,-51,-29,-12,20,20,-9,-6,20,-10,-11,20,-5,-29,-7,-48,20,20,-3,-52,20,-14,20,-20,20,20,20,20,20,20,20,20,20,-27,20,-13,-16,-4,20,-28,20,-21,-23,-25,-15,-22,-24,20,-32,-18,20,-54,-17,-30,-41,20,-42,20,-26,-50,-49,-53,]),'EQ':([3,10,17,18,22,25,26,28,30,31,32,35,38,39,43,44,46,51,52,65,67,72,73,75,77,79,80,81,82,83,85,86,87,90,99,100,101,104,108,],[-7,-8,-29,-12,-9,-10,-11,55,-29,-7,55,55,55,55,-14,55,55,55,55,-27,55,-13,-16,55,-28,55,55,55,55,-15,55,55,55,55,55,-30,-41,55,55,]),'IF':([0,3,5,9,10,13,16,17,18,22,23,25,26,28,30,31,32,35,38,39,40,43,44,46,51,52,65,67,72,73,75,77,79,80,81,82,83,85,86,87,90,91,92,93,94,95,99,100,101,104,105,108,109,112,113,],[21,-7,-46,21,-8,-47,-51,-29,-12,-9,-6,-10,-11,59,-29,-7,59,59,59,59,-52,-14,59,59,59,59,-27,59,-13,-16,59,-28,59,59,59,59,-15,59,59,59,59,-32,-18,21,-54,-17,59,-30,-41,59,21,59,-50,-49,-53,]),'AND':([3,10,17,18,22,25,26,28,30,31,32,35,38,39,43,44,46,51,52,65,67,72,73,75,77,79,80,81,82,83,85,86,87,90,99,100,101,104,108,],[-7,-8,-29,-12,-9,-10,-11,53,-29,-7,53,53,53,53,-14,53,53,53,53,-27,53,-13,-16,53,-28,53,53,53,53,-15,53,53,53,53,53,-30,-41,53,53,]),'FALSE':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[22,22,22,-7,-46,22,22,22,-8,-47,22,-51,-29,-12,22,22,-9,-6,22,-10,-11,22,-5,-29,-7,-48,22,22,-3,-52,22,-14,22,-20,22,22,22,22,22,22,22,22,22,-27,22,-13,-16,-4,22,-28,22,-21,-23,-25,-15,-22,-24,22,-32,-18,22,-54,-17,-30,-41,22,-42,22,-26,-50,-49,-53,]),'NAME':([0,1,2,3,5,7,8,9,10,12,13,14,16,17,18,19,21,22,23,24,25,26,27,28,29,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,71,72,73,75,76,77,78,79,81,82,83,86,87,88,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[3,31,31,-7,-46,31,31,3,-8,42,-47,31,-51,-29,-12,31,31,-9,-6,31,-10,-11,31,-5,62,-29,-7,-48,31,31,-3,-52,31,-14,31,-20,31,31,31,31,31,31,31,31,31,-27,31,62,-13,-16,-4,31,-28,31,-21,-23,-25,-15,-22,-24,103,31,-32,-18,3,-54,-17,-30,-41,31,-42,3,-26,-50,-49,-53,]),'INT':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[25,25,25,-7,-46,25,25,25,-8,-47,25,-51,-29,-12,25,25,-9,-6,25,-10,-11,25,-5,-29,-7,-48,25,25,-3,-52,25,-14,25,-20,25,25,25,25,25,25,25,25,25,-27,25,-13,-16,-4,25,-28,25,-21,-23,-25,-15,-22,-24,25,-32,-18,25,-54,-17,-30,-41,25,-42,25,-26,-50,-49,-53,]),'FLOAT':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[26,26,26,-7,-46,26,26,26,-8,-47,26,-51,-29,-12,26,26,-9,-6,26,-10,-11,26,-5,-29,-7,-48,26,26,-3,-52,26,-14,26,-20,26,26,26,26,26,26,26,26,26,-27,26,-13,-16,-4,26,-28,26,-21,-23,-25,-15,-22,-24,26,-32,-18,26,-54,-17,-30,-41,26,-42,26,-26,-50,-49,-53,]),'INDENT':([69,74,110,111,],[93,93,93,93,]),'NOT':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[27,27,27,-7,-46,27,27,27,-8,-47,27,-51,-29,-12,27,27,-9,-6,27,-10,-11,27,-5,-29,-7,-48,27,27,-3,-52,27,-14,27,-20,27,27,27,27,27,27,27,27,27,-27,27,-13,-16,-4,27,-28,27,-21,-23,-25,-15,-22,-24,27,-32,-18,27,-54,-17,-30,-41,27,-42,27,-26,-50,-49,-53,]),'OR':([3,10,17,18,22,25,26,28,30,31,32,35,38,39,43,44,46,51,52,65,67,72,73,75,77,79,80,81,82,83,85,86,87,90,99,100,101,104,108,],[-7,-8,-29,-12,-9,-10,-11,60,-29,-7,60,60,60,60,-14,60,60,60,60,-27,60,-13,-16,60,-28,60,60,60,60,-15,60,60,60,60,60,-30,-41,60,60,]),'LAMBDA':([0,1,2,3,5,7,8,9,10,13,14,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,36,37,39,40,41,43,47,52,53,54,55,56,57,58,59,60,61,65,66,72,73,75,76,77,78,79,81,82,83,86,87,89,91,92,93,94,95,100,101,102,104,105,108,109,112,113,],[29,29,29,-7,-46,29,29,29,-8,-47,29,-51,-29,-12,29,29,-9,-6,29,-10,-11,29,-5,-29,-7,-48,29,29,-3,-52,29,-14,29,-20,29,29,29,29,29,29,29,29,29,-27,29,-13,-16,-4,29,-28,29,-21,-23,-25,-15,-22,-24,29,-32,-18,29,-54,-17,-30,-41,29,-42,29,-26,-50,-49,-53,]),}

_lr_action = {}
for _k, _v in _lr_action_items.items():
   for _x,_y in zip(_v[0],_v[1]):
      if not _x in _lr_action:  _lr_action[_x] = {}
      _lr_action[_x][_k] = _y
del _lr_action_items

_lr_goto_items = {'key_datum':([24,76,],[49,98,]),'key_datum_list':([24,],[50,]),'statements':([0,93,],[9,105,]),'target':([0,9,93,105,],[23,23,23,23,]),'compound_statement':([0,9,93,105,],[13,13,13,13,]),'expr_list':([2,37,41,58,],[33,68,70,84,]),'simple_statement':([0,9,93,105,],[5,5,5,5,]),'module':([0,],[6,]),'id_list':([29,71,],[63,96,]),'program':([0,],[15,]),'statement':([0,9,93,105,],[16,40,16,40,]),'suite':([69,74,110,111,],[94,97,112,113,]),'expression':([0,1,2,7,8,9,14,19,21,24,27,36,37,41,47,53,54,55,56,57,58,59,60,61,66,76,78,89,93,102,105,],[28,32,35,38,39,28,43,44,46,51,52,67,35,35,75,79,80,81,82,83,35,85,86,87,90,51,99,104,28,108,28,]),'empty':([2,24,29,37,41,58,71,],[34,48,64,34,34,34,64,]),'subscription':([0,1,2,7,8,9,14,19,21,24,27,36,37,41,47,53,54,55,56,57,58,59,60,61,66,76,78,89,93,102,105,],[17,30,30,30,30,17,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,17,30,17,]),}

_lr_goto = {}
for _k, _v in _lr_goto_items.items():
   for _x, _y in zip(_v[0], _v[1]):
       if not _x in _lr_goto: _lr_goto[_x] = {}
       _lr_goto[_x][_k] = _y
del _lr_goto_items
_lr_productions = [
  ("S' -> program","S'",1,None,None,None),
  ('program -> module','program',1,'p_program','lparser.py',147),
  ('module -> statements','module',1,'p_module','lparser.py',153),
  ('simple_statement -> PRINT expression','simple_statement',2,'p_print_statement','lparser.py',159),
  ('simple_statement -> target ASSIGN expression','simple_statement',3,'p_assign_statement','lparser.py',165),
  ('simple_statement -> expression','simple_statement',1,'p_expr_statement','lparser.py',172),
  ('simple_statement -> target','simple_statement',1,'p_expr_statement','lparser.py',173),
  ('expression -> NAME','expression',1,'p_expression_name','lparser.py',179),
  ('expression -> TRUE','expression',1,'p_expression_name','lparser.py',180),
  ('expression -> FALSE','expression',1,'p_expression_name','lparser.py',181),
  ('expression -> INT','expression',1,'p_expression_const','lparser.py',187),
  ('expression -> FLOAT','expression',1,'p_expression_const','lparser.py',188),
  ('expression -> STRING','expression',1,'p_expression_cstring','lparser.py',193),
  ('expression -> LPAREN expression RPAREN','expression',3,'p_expression_group','lparser.py',198),
  ('expression -> MINUS expression','expression',2,'p_expression_usub','lparser.py',204),
  ('expression -> expression PLUS expression','expression',3,'p_expression_add','lparser.py',210),
  ('expression -> INPUT LPAREN RPAREN','expression',3,'p_expression_input','lparser.py',217),
  ('simple_statement -> MEMCPY LPAREN expr_list RPAREN','simple_statement',4,'p_expression_memcpy','lparser.py',223),
  ('simple_statement -> MEMSET LPAREN expr_list RPAREN','simple_statement',4,'p_expression_memset','lparser.py',229),
  ('empty -> <empty>','empty',0,'p_empty','lparser.py',238),
  ('expression -> NOT expression','expression',2,'p_expression_unot','lparser.py',243),
  ('expression -> expression AND expression','expression',3,'p_expression_and','lparser.py',249),
  ('expression -> expression OR expression','expression',3,'p_expression_or','lparser.py',255),
  ('expression -> expression EQ expression','expression',3,'p_expression_compare','lparser.py',261),
  ('expression -> expression NEQ expression','expression',3,'p_expression_compare','lparser.py',262),
  ('expression -> expression IS expression','expression',3,'p_expression_compare','lparser.py',263),
  ('expression -> expression IF expression ELSE expression','expression',5,'p_expression_ternary','lparser.py',269),
  ('expression -> LSQUARE expr_list RSQUARE','expression',3,'p_expression_list','lparser.py',275),
  ('expression -> LCURLY key_datum_list RCURLY','expression',3,'p_expression_dict','lparser.py',281),
  ('expression -> subscription','expression',1,'p_expression_subscript','lparser.py',287),
  ('subscription -> expression LSQUARE expression RSQUARE','subscription',4,'p_subscript','lparser.py',293),
  ('target -> NAME','target',1,'p_target_name','lparser.py',299),
  ('target -> NAME LPAREN expression RPAREN','target',4,'p_target_func','lparser.py',306),
  ('target -> subscription','target',1,'p_target_subscript','lparser.py',313),
  ('key_datum -> expression COLON expression','key_datum',3,'p_key_datum','lparser.py',320),
  ('key_datum_list -> empty','key_datum_list',1,'p_key_datum_list_empty','lparser.py',326),
  ('key_datum_list -> key_datum','key_datum_list',1,'p_key_datum_list','lparser.py',332),
  ('key_datum_list -> key_datum_list COMMA key_datum','key_datum_list',3,'p_key_datum_list_extend','lparser.py',338),
  ('expr_list -> empty','expr_list',1,'p_expr_list_empty','lparser.py',345),
  ('expr_list -> expression','expr_list',1,'p_expr_list','lparser.py',351),
  ('expr_list -> expr_list COMMA expression','expr_list',3,'p_expr_list_extend','lparser.py',357),
  ('expression -> expression LPAREN expr_list RPAREN','expression',4,'p_expression_callfunc','lparser.py',368),
  ('expression -> LAMBDA id_list COLON expression','expression',4,'p_expression_lambda','lparser.py',374),
  ('id_list -> empty','id_list',1,'p_id_list_empty','lparser.py',380),
  ('id_list -> NAME','id_list',1,'p_id_list','lparser.py',386),
  ('id_list -> id_list COMMA NAME','id_list',3,'p_id_list_extend','lparser.py',392),
  ('statement -> simple_statement','statement',1,'p_statement','lparser.py',399),
  ('statement -> compound_statement','statement',1,'p_statement','lparser.py',400),
  ('simple_statement -> RETURN expression','simple_statement',2,'p_return_statement','lparser.py',406),
  ('compound_statement -> DEF NAME LPAREN id_list RPAREN COLON suite','compound_statement',7,'p_compound_statement','lparser.py',412),
  ('suite -> INDENT statements DEDENT','suite',3,'p_suite','lparser.py',418),
  ('statements -> statement','statements',1,'p_statements','lparser.py',424),
  ('statements -> statements statement','statements',2,'p_statements_extend','lparser.py',430),
  ('simple_statement -> IF expression COLON suite ELSE COLON suite','simple_statement',7,'p_if_else_statement','lparser.py',442),
  ('simple_statement -> WHILE expression COLON suite','simple_statement',4,'p_while_statement','lparser.py',448),
]
