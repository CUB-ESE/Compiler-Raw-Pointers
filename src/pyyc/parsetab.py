
# parsetab.py
# This file is automatically generated. Do not edit.
# pylint: disable=W,C,R
_tabversion = '3.10'

_lr_method = 'LALR'

_lr_signature = 'leftPLUSMINUSleftTIMESDIVIDEAND ASSIGN COLON COMMA DEDENT DEF DIVIDE ELSE EQ FALSE FLOAT IF INDENT INPUT INT IS LAMBDA LCURLY LPAREN LSQUARE MINUS NAME NEQ NEWLINE NOT OR PLUS PRINT RCURLY RETURN RPAREN RSQUARE TIMES TRUE WHILE\n    program : module\n    \n    module : statements\n    \n    simple_statement : PRINT expression\n    \n    simple_statement : target ASSIGN expression\n                     \n    \n    simple_statement : expression\n                     | target   \n    \n    expression : NAME\n               | TRUE\n               | FALSE\n    \n    expression : INT\n               | FLOAT\n    \n    expression : LPAREN expression RPAREN\n    \n    expression : MINUS expression\n    \n    expression : expression PLUS expression\n    \n    expression :  INPUT LPAREN RPAREN\n    empty :\n    expression : NOT expression\n    \n    expression : expression AND expression\n    \n    expression : expression OR expression\n    \n    expression : expression EQ expression\n               | expression NEQ expression\n               | expression IS expression\n    \n    expression : expression IF expression ELSE expression\n    \n    expression : LSQUARE expr_list RSQUARE\n    \n    expression : LCURLY key_datum_list RCURLY\n    \n    expression : subscription\n    \n    subscription : expression LSQUARE expression RSQUARE\n    \n    target : NAME \n           \n     \n    target : NAME LPAREN expression RPAREN \n    \n    \n    target : subscription\n    \n    key_datum : expression COLON expression\n    \n    key_datum_list : empty\n    \n    key_datum_list : key_datum\n    \n    key_datum_list : key_datum_list COMMA key_datum\n    \n    expr_list : empty\n    \n    expr_list : expression\n    \n    expr_list : expr_list COMMA expression\n    \n    expression : expression LPAREN expr_list RPAREN\n    \n    expression : LAMBDA id_list COLON expression\n    \n    id_list : empty\n    \n    id_list : NAME\n    \n    id_list : id_list COMMA NAME\n    \n    statement : simple_statement\n              | compound_statement\n    \n    simple_statement : RETURN expression\n    \n    compound_statement : DEF NAME LPAREN id_list RPAREN COLON suite\n    \n    suite : INDENT statements DEDENT\n    \n    statements : statement\n    \n    statements : statements statement\n    \n    simple_statement : IF expression COLON suite ELSE COLON suite\n    \n    simple_statement : WHILE expression COLON suite\n    '
    
_lr_action_items = {'DEDENT':([3,9,12,14,15,18,19,20,22,23,25,27,29,31,35,36,37,47,60,65,66,68,70,72,74,75,76,79,80,85,88,91,92,95,96,99,100,103,104,],[-43,-8,-44,-48,-26,-7,-9,-6,-10,-11,-5,-49,-26,-7,-3,-45,-13,-17,-24,-12,-15,-4,-25,-18,-20,-22,-14,-19,-21,-51,-29,-27,-38,-39,100,-23,-47,-50,-46,]),'RETURN':([0,1,3,9,12,14,15,18,19,20,22,23,25,27,29,31,35,36,37,47,60,65,66,68,70,72,74,75,76,79,80,84,85,88,91,92,95,96,99,100,103,104,],[8,8,-43,-8,-44,-48,-26,-7,-9,-6,-10,-11,-5,-49,-26,-7,-3,-45,-13,-17,-24,-12,-15,-4,-25,-18,-20,-22,-14,-19,-21,8,-51,-29,-27,-38,-39,8,-23,-47,-50,-46,]),'LSQUARE':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,32,33,34,35,36,37,39,41,42,46,47,48,49,50,51,52,53,54,55,56,60,61,65,66,67,68,69,70,71,72,73,74,75,76,78,79,80,82,83,84,85,88,90,91,92,93,95,96,99,100,103,104,],[2,2,2,-43,2,2,2,2,-8,2,-44,-48,-26,2,-7,-9,-6,2,-10,-11,2,49,-49,-26,-7,49,49,49,49,49,-13,49,2,2,49,49,2,2,2,2,2,2,2,2,2,-24,2,-12,-15,49,49,2,-25,2,49,49,49,49,-14,49,49,49,2,49,2,-51,-29,49,-27,-38,2,49,2,49,-47,-50,-46,]),'LCURLY':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,65,66,68,69,70,71,72,74,75,76,79,80,82,84,85,88,91,92,93,95,96,99,100,103,104,],[21,21,21,-43,21,21,21,21,-8,21,-44,-48,-26,21,-7,-9,-6,21,-10,-11,21,-5,-49,-26,-7,-3,-45,-13,21,21,-17,21,21,21,21,21,21,21,21,21,-24,21,-12,-15,-4,21,-25,21,-18,-20,-22,-14,-19,-21,21,21,-51,-29,-27,-38,21,-39,21,-23,-47,-50,-46,]),'WHILE':([0,1,3,9,12,14,15,18,19,20,22,23,25,27,29,31,35,36,37,47,60,65,66,68,70,72,74,75,76,79,80,84,85,88,91,92,95,96,99,100,103,104,],[5,5,-43,-8,-44,-48,-26,-7,-9,-6,-10,-11,-5,-49,-26,-7,-3,-45,-13,-17,-24,-12,-15,-4,-25,-18,-20,-22,-14,-19,-21,5,-51,-29,-27,-38,-39,5,-23,-47,-50,-46,]),'PRINT':([0,1,3,9,12,14,15,18,19,20,22,23,25,27,29,31,35,36,37,47,60,65,66,68,70,72,74,75,76,79,80,84,85,88,91,92,95,96,99,100,103,104,],[7,7,-43,-8,-44,-48,-26,-7,-9,-6,-10,-11,-5,-49,-26,-7,-3,-45,-13,-17,-24,-12,-15,-4,-25,-18,-20,-22,-14,-19,-21,7,-51,-29,-27,-38,-39,7,-23,-47,-50,-46,]),'TRUE':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,65,66,68,69,70,71,72,74,75,76,79,80,82,84,85,88,91,92,93,95,96,99,100,103,104,],[9,9,9,-43,9,9,9,9,-8,9,-44,-48,-26,9,-7,-9,-6,9,-10,-11,9,-5,-49,-26,-7,-3,-45,-13,9,9,-17,9,9,9,9,9,9,9,9,9,-24,9,-12,-15,-4,9,-25,9,-18,-20,-22,-14,-19,-21,9,9,-51,-29,-27,-38,9,-39,9,-23,-47,-50,-46,]),'MINUS':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,65,66,68,69,70,71,72,74,75,76,79,80,82,84,85,88,91,92,93,95,96,99,100,103,104,],[10,10,10,-43,10,10,10,10,-8,10,-44,-48,-26,10,-7,-9,-6,10,-10,-11,10,-5,-49,-26,-7,-3,-45,-13,10,10,-17,10,10,10,10,10,10,10,10,10,-24,10,-12,-15,-4,10,-25,10,-18,-20,-22,-14,-19,-21,10,10,-51,-29,-27,-38,10,-39,10,-23,-47,-50,-46,]),'DEF':([0,1,3,9,12,14,15,18,19,20,22,23,25,27,29,31,35,36,37,47,60,65,66,68,70,72,74,75,76,79,80,84,85,88,91,92,95,96,99,100,103,104,],[11,11,-43,-8,-44,-48,-26,-7,-9,-6,-10,-11,-5,-49,-26,-7,-3,-45,-13,-17,-24,-12,-15,-4,-25,-18,-20,-22,-14,-19,-21,11,-51,-29,-27,-38,-39,11,-23,-47,-50,-46,]),'NEQ':([9,15,18,19,22,23,25,29,31,32,33,34,35,36,37,39,46,47,60,65,66,67,68,70,72,73,74,75,76,78,79,80,83,90,91,92,95,99,],[-8,-26,-7,-9,-10,-11,56,-26,-7,56,56,56,56,56,-13,56,56,56,-24,-12,-15,56,56,-25,56,56,56,56,-14,56,56,56,56,56,-27,-38,56,56,]),'RSQUARE':([2,9,19,22,23,28,29,30,31,32,37,47,60,65,66,70,72,73,74,75,76,79,80,83,91,92,95,99,],[-16,-8,-9,-10,-11,60,-26,-35,-7,-36,-13,-17,-24,-12,-15,-25,-18,91,-20,-22,-14,-19,-21,-37,-27,-38,-39,-23,]),'RPAREN':([9,19,22,23,29,30,31,32,37,39,40,47,53,57,59,60,64,65,66,67,70,72,74,75,76,77,79,80,83,87,91,92,94,95,99,],[-8,-9,-10,-11,-26,-35,-7,-36,-13,65,66,-17,-16,-41,-40,-24,-16,-12,-15,88,-25,-18,-20,-22,-14,92,-19,-21,-37,98,-27,-38,-42,-39,-23,]),'RCURLY':([9,19,21,22,23,29,31,37,43,44,45,47,60,65,66,70,72,74,75,76,79,80,89,90,91,92,95,99,],[-8,-9,-16,-10,-11,-26,-7,-13,-32,-33,70,-17,-24,-12,-15,-25,-18,-20,-22,-14,-19,-21,-34,-31,-27,-38,-39,-23,]),'PLUS':([9,15,18,19,22,23,25,29,31,32,33,34,35,36,37,39,46,47,60,65,66,67,68,70,72,73,74,75,76,78,79,80,83,90,91,92,95,99,],[-8,-26,-7,-9,-10,-11,52,-26,-7,52,52,52,52,52,-13,52,52,52,-24,-12,-15,52,52,-25,52,52,52,52,-14,52,52,52,52,52,-27,-38,52,52,]),'COLON':([9,19,22,23,26,29,31,33,34,37,46,47,57,58,59,60,65,66,70,72,74,75,76,79,80,91,92,94,95,97,98,99,],[-8,-9,-10,-11,-16,-26,-7,62,63,-13,71,-17,-41,82,-40,-24,-12,-15,-25,-18,-20,-22,-14,-19,-21,-27,-38,-42,-39,101,102,-23,]),'COMMA':([2,9,19,21,22,23,26,28,29,30,31,32,37,43,44,45,47,53,57,58,59,60,64,65,66,70,72,74,75,76,77,79,80,83,87,89,90,91,92,94,95,99,],[-16,-8,-9,-16,-10,-11,-16,61,-26,-35,-7,-36,-13,-32,-33,69,-17,-16,-41,81,-40,-24,-16,-12,-15,-25,-18,-20,-22,-14,61,-19,-21,-37,81,-34,-31,-27,-38,-42,-39,-23,]),'ASSIGN':([15,18,20,88,91,],[-30,-28,42,-29,-27,]),'$end':([1,3,4,9,12,13,14,15,18,19,20,22,23,25,27,29,31,35,36,37,47,60,65,66,68,70,72,74,75,76,79,80,85,88,91,92,95,99,100,103,104,],[-2,-43,-1,-8,-44,0,-48,-26,-7,-9,-6,-10,-11,-5,-49,-26,-7,-3,-45,-13,-17,-24,-12,-15,-4,-25,-18,-20,-22,-14,-19,-21,-51,-29,-27,-38,-39,-23,-47,-50,-46,]),'IS':([9,15,18,19,22,23,25,29,31,32,33,34,35,36,37,39,46,47,60,65,66,67,68,70,72,73,74,75,76,78,79,80,83,90,91,92,95,99,],[-8,-26,-7,-9,-10,-11,51,-26,-7,51,51,51,51,51,-13,51,51,51,-24,-12,-15,51,51,-25,51,51,51,51,-14,51,51,51,51,51,-27,-38,51,51,]),'ELSE':([9,19,22,23,29,31,37,47,60,65,66,70,72,74,75,76,78,79,80,86,91,92,95,99,100,],[-8,-9,-10,-11,-26,-7,-13,-17,-24,-12,-15,-25,-18,-20,-22,-14,93,-19,-21,97,-27,-38,-39,-23,-47,]),'LPAREN':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,17,18,19,20,21,22,23,24,25,27,29,31,32,33,34,35,36,37,38,39,41,42,46,47,48,49,50,51,52,53,54,55,56,60,61,65,66,67,68,69,70,71,72,73,74,75,76,78,79,80,82,83,84,85,88,90,91,92,93,95,96,99,100,103,104,],[16,16,16,-43,16,16,16,16,-8,16,-44,-48,-26,16,40,41,-9,-6,16,-10,-11,16,53,-49,-26,-7,53,53,53,53,53,-13,64,53,16,16,53,53,16,16,16,16,16,16,16,16,16,-24,16,-12,-15,53,53,16,-25,16,53,53,53,53,-14,53,53,53,16,53,16,-51,-29,53,-27,-38,16,53,16,53,-47,-50,-46,]),'INPUT':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,65,66,68,69,70,71,72,74,75,76,79,80,82,84,85,88,91,92,93,95,96,99,100,103,104,],[17,17,17,-43,17,17,17,17,-8,17,-44,-48,-26,17,-7,-9,-6,17,-10,-11,17,-5,-49,-26,-7,-3,-45,-13,17,17,-17,17,17,17,17,17,17,17,17,17,-24,17,-12,-15,-4,17,-25,17,-18,-20,-22,-14,-19,-21,17,17,-51,-29,-27,-38,17,-39,17,-23,-47,-50,-46,]),'EQ':([9,15,18,19,22,23,25,29,31,32,33,34,35,36,37,39,46,47,60,65,66,67,68,70,72,73,74,75,76,78,79,80,83,90,91,92,95,99,],[-8,-26,-7,-9,-10,-11,50,-26,-7,50,50,50,50,50,-13,50,50,50,-24,-12,-15,50,50,-25,50,50,50,50,-14,50,50,50,50,50,-27,-38,50,50,]),'IF':([0,1,3,9,12,14,15,18,19,20,22,23,25,27,29,31,32,33,34,35,36,37,39,46,47,60,65,66,67,68,70,72,73,74,75,76,78,79,80,83,84,85,88,90,91,92,95,96,99,100,103,104,],[6,6,-43,-8,-44,-48,-26,-7,-9,-6,-10,-11,54,-49,-26,-7,54,54,54,54,54,-13,54,54,54,-24,-12,-15,54,54,-25,54,54,54,54,-14,54,54,54,54,6,-51,-29,54,-27,-38,54,6,54,-47,-50,-46,]),'AND':([9,15,18,19,22,23,25,29,31,32,33,34,35,36,37,39,46,47,60,65,66,67,68,70,72,73,74,75,76,78,79,80,83,90,91,92,95,99,],[-8,-26,-7,-9,-10,-11,48,-26,-7,48,48,48,48,48,-13,48,48,48,-24,-12,-15,48,48,-25,48,48,48,48,-14,48,48,48,48,48,-27,-38,48,48,]),'FALSE':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,65,66,68,69,70,71,72,74,75,76,79,80,82,84,85,88,91,92,93,95,96,99,100,103,104,],[19,19,19,-43,19,19,19,19,-8,19,-44,-48,-26,19,-7,-9,-6,19,-10,-11,19,-5,-49,-26,-7,-3,-45,-13,19,19,-17,19,19,19,19,19,19,19,19,19,-24,19,-12,-15,-4,19,-25,19,-18,-20,-22,-14,-19,-21,19,19,-51,-29,-27,-38,19,-39,19,-23,-47,-50,-46,]),'NAME':([0,1,2,3,5,6,7,8,9,10,11,12,14,15,16,18,19,20,21,22,23,24,25,26,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,64,65,66,68,69,70,71,72,74,75,76,79,80,81,82,84,85,88,91,92,93,95,96,99,100,103,104,],[18,18,31,-43,31,31,31,31,-8,31,38,-44,-48,-26,31,-7,-9,-6,31,-10,-11,31,-5,57,-49,-26,-7,-3,-45,-13,31,31,-17,31,31,31,31,31,31,31,31,31,-24,31,57,-12,-15,-4,31,-25,31,-18,-20,-22,-14,-19,-21,94,31,18,-51,-29,-27,-38,31,-39,18,-23,-47,-50,-46,]),'INT':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,65,66,68,69,70,71,72,74,75,76,79,80,82,84,85,88,91,92,93,95,96,99,100,103,104,],[22,22,22,-43,22,22,22,22,-8,22,-44,-48,-26,22,-7,-9,-6,22,-10,-11,22,-5,-49,-26,-7,-3,-45,-13,22,22,-17,22,22,22,22,22,22,22,22,22,-24,22,-12,-15,-4,22,-25,22,-18,-20,-22,-14,-19,-21,22,22,-51,-29,-27,-38,22,-39,22,-23,-47,-50,-46,]),'FLOAT':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,65,66,68,69,70,71,72,74,75,76,79,80,82,84,85,88,91,92,93,95,96,99,100,103,104,],[23,23,23,-43,23,23,23,23,-8,23,-44,-48,-26,23,-7,-9,-6,23,-10,-11,23,-5,-49,-26,-7,-3,-45,-13,23,23,-17,23,23,23,23,23,23,23,23,23,-24,23,-12,-15,-4,23,-25,23,-18,-20,-22,-14,-19,-21,23,23,-51,-29,-27,-38,23,-39,23,-23,-47,-50,-46,]),'INDENT':([62,63,101,102,],[84,84,84,84,]),'NOT':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,65,66,68,69,70,71,72,74,75,76,79,80,82,84,85,88,91,92,93,95,96,99,100,103,104,],[24,24,24,-43,24,24,24,24,-8,24,-44,-48,-26,24,-7,-9,-6,24,-10,-11,24,-5,-49,-26,-7,-3,-45,-13,24,24,-17,24,24,24,24,24,24,24,24,24,-24,24,-12,-15,-4,24,-25,24,-18,-20,-22,-14,-19,-21,24,24,-51,-29,-27,-38,24,-39,24,-23,-47,-50,-46,]),'OR':([9,15,18,19,22,23,25,29,31,32,33,34,35,36,37,39,46,47,60,65,66,67,68,70,72,73,74,75,76,78,79,80,83,90,91,92,95,99,],[-8,-26,-7,-9,-10,-11,55,-26,-7,55,55,55,55,55,-13,55,55,55,-24,-12,-15,55,55,-25,55,55,55,55,-14,55,55,55,55,55,-27,-38,55,55,]),'LAMBDA':([0,1,2,3,5,6,7,8,9,10,12,14,15,16,18,19,20,21,22,23,24,25,27,29,31,35,36,37,41,42,47,48,49,50,51,52,53,54,55,56,60,61,65,66,68,69,70,71,72,74,75,76,79,80,82,84,85,88,91,92,93,95,96,99,100,103,104,],[26,26,26,-43,26,26,26,26,-8,26,-44,-48,-26,26,-7,-9,-6,26,-10,-11,26,-5,-49,-26,-7,-3,-45,-13,26,26,-17,26,26,26,26,26,26,26,26,26,-24,26,-12,-15,-4,26,-25,26,-18,-20,-22,-14,-19,-21,26,26,-51,-29,-27,-38,26,-39,26,-23,-47,-50,-46,]),}

_lr_action = {}
for _k, _v in _lr_action_items.items():
   for _x,_y in zip(_v[0],_v[1]):
      if not _x in _lr_action:  _lr_action[_x] = {}
      _lr_action[_x][_k] = _y
del _lr_action_items

_lr_goto_items = {'key_datum':([21,69,],[44,89,]),'key_datum_list':([21,],[45,]),'statements':([0,84,],[1,96,]),'target':([0,1,84,96,],[20,20,20,20,]),'compound_statement':([0,1,84,96,],[12,12,12,12,]),'expr_list':([2,53,],[28,77,]),'simple_statement':([0,1,84,96,],[3,3,3,3,]),'module':([0,],[4,]),'id_list':([26,64,],[58,87,]),'program':([0,],[13,]),'statement':([0,1,84,96,],[14,27,14,27,]),'suite':([62,63,101,102,],[85,86,103,104,]),'expression':([0,1,2,5,6,7,8,10,16,21,24,41,42,48,49,50,51,52,53,54,55,56,61,69,71,82,84,93,96,],[25,25,32,33,34,35,36,37,39,46,47,67,68,72,73,74,75,76,32,78,79,80,83,46,90,95,25,99,25,]),'empty':([2,21,26,53,64,],[30,43,59,30,59,]),'subscription':([0,1,2,5,6,7,8,10,16,21,24,41,42,48,49,50,51,52,53,54,55,56,61,69,71,82,84,93,96,],[15,15,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,15,29,15,]),}

_lr_goto = {}
for _k, _v in _lr_goto_items.items():
   for _x, _y in zip(_v[0], _v[1]):
       if not _x in _lr_goto: _lr_goto[_x] = {}
       _lr_goto[_x][_k] = _y
del _lr_goto_items
_lr_productions = [
  ("S' -> program","S'",1,None,None,None),
  ('program -> module','program',1,'p_program','lparser.py',134),
  ('module -> statements','module',1,'p_module','lparser.py',140),
  ('simple_statement -> PRINT expression','simple_statement',2,'p_print_statement','lparser.py',146),
  ('simple_statement -> target ASSIGN expression','simple_statement',3,'p_assign_statement','lparser.py',152),
  ('simple_statement -> expression','simple_statement',1,'p_expr_statement','lparser.py',167),
  ('simple_statement -> target','simple_statement',1,'p_expr_statement','lparser.py',168),
  ('expression -> NAME','expression',1,'p_expression_name','lparser.py',178),
  ('expression -> TRUE','expression',1,'p_expression_name','lparser.py',179),
  ('expression -> FALSE','expression',1,'p_expression_name','lparser.py',180),
  ('expression -> INT','expression',1,'p_expression_const','lparser.py',186),
  ('expression -> FLOAT','expression',1,'p_expression_const','lparser.py',187),
  ('expression -> LPAREN expression RPAREN','expression',3,'p_expression_group','lparser.py',193),
  ('expression -> MINUS expression','expression',2,'p_expression_usub','lparser.py',199),
  ('expression -> expression PLUS expression','expression',3,'p_expression_add','lparser.py',205),
  ('expression -> INPUT LPAREN RPAREN','expression',3,'p_expression_input','lparser.py',212),
  ('empty -> <empty>','empty',0,'p_empty','lparser.py',221),
  ('expression -> NOT expression','expression',2,'p_expression_unot','lparser.py',226),
  ('expression -> expression AND expression','expression',3,'p_expression_and','lparser.py',232),
  ('expression -> expression OR expression','expression',3,'p_expression_or','lparser.py',238),
  ('expression -> expression EQ expression','expression',3,'p_expression_compare','lparser.py',244),
  ('expression -> expression NEQ expression','expression',3,'p_expression_compare','lparser.py',245),
  ('expression -> expression IS expression','expression',3,'p_expression_compare','lparser.py',246),
  ('expression -> expression IF expression ELSE expression','expression',5,'p_expression_ternary','lparser.py',252),
  ('expression -> LSQUARE expr_list RSQUARE','expression',3,'p_expression_list','lparser.py',258),
  ('expression -> LCURLY key_datum_list RCURLY','expression',3,'p_expression_dict','lparser.py',264),
  ('expression -> subscription','expression',1,'p_expression_subscript','lparser.py',270),
  ('subscription -> expression LSQUARE expression RSQUARE','subscription',4,'p_subscript','lparser.py',276),
  ('target -> NAME','target',1,'p_target_name','lparser.py',282),
  ('target -> NAME LPAREN expression RPAREN','target',4,'p_target_func','lparser.py',289),
  ('target -> subscription','target',1,'p_target_subscript','lparser.py',296),
  ('key_datum -> expression COLON expression','key_datum',3,'p_key_datum','lparser.py',303),
  ('key_datum_list -> empty','key_datum_list',1,'p_key_datum_list_empty','lparser.py',309),
  ('key_datum_list -> key_datum','key_datum_list',1,'p_key_datum_list','lparser.py',315),
  ('key_datum_list -> key_datum_list COMMA key_datum','key_datum_list',3,'p_key_datum_list_extend','lparser.py',321),
  ('expr_list -> empty','expr_list',1,'p_expr_list_empty','lparser.py',328),
  ('expr_list -> expression','expr_list',1,'p_expr_list','lparser.py',334),
  ('expr_list -> expr_list COMMA expression','expr_list',3,'p_expr_list_extend','lparser.py',340),
  ('expression -> expression LPAREN expr_list RPAREN','expression',4,'p_expression_callfunc','lparser.py',351),
  ('expression -> LAMBDA id_list COLON expression','expression',4,'p_expression_lambda','lparser.py',357),
  ('id_list -> empty','id_list',1,'p_id_list_empty','lparser.py',363),
  ('id_list -> NAME','id_list',1,'p_id_list','lparser.py',369),
  ('id_list -> id_list COMMA NAME','id_list',3,'p_id_list_extend','lparser.py',375),
  ('statement -> simple_statement','statement',1,'p_statement','lparser.py',382),
  ('statement -> compound_statement','statement',1,'p_statement','lparser.py',383),
  ('simple_statement -> RETURN expression','simple_statement',2,'p_return_statement','lparser.py',389),
  ('compound_statement -> DEF NAME LPAREN id_list RPAREN COLON suite','compound_statement',7,'p_compound_statement','lparser.py',395),
  ('suite -> INDENT statements DEDENT','suite',3,'p_suite','lparser.py',401),
  ('statements -> statement','statements',1,'p_statements','lparser.py',407),
  ('statements -> statements statement','statements',2,'p_statements_extend','lparser.py',413),
  ('simple_statement -> IF expression COLON suite ELSE COLON suite','simple_statement',7,'p_if_else_statement','lparser.py',425),
  ('simple_statement -> WHILE expression COLON suite','simple_statement',4,'p_while_statement','lparser.py',431),
]
