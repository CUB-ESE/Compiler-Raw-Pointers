class Node:
    def __init__(self, name):
        self.name = name     # variable name 
        self.color = -1      # register mapping
        self.edges = []      # name list of neighbors
        self.exclude = []    # list of colors to exclude (used during coloring)
        self.priority = 0    # ignore spilled variable
        
    def addEdge(self, node_name):
        if(node_name not in self.edges):
            self.edges.append(node_name)
    
    def addExclusion(self, color):
        if(color not in self.exclude):
            self.exclude.append(color)

class Graph:
    
    # take liveness list and initialize nodes
    def __init__(self, liveness):
                
        # caller saved registers
        _eax = Node("eax"); _eax.color = 0
        _ecx = Node("ecx"); _ecx.color = 1
        _edx = Node("edx"); _edx.color = 2
        
        # callee saved registers
        _ebx = Node("ebx"); _ebx.color = 3
        _edi = Node("edi"); _edi.color = 4
        _esi = Node("esi"); _esi.color = 5
        
        # initialize graph with registers
        self.graph = {_eax.name : _eax,
                      _ecx.name : _ecx,
                      _edx.name : _edx,
                      _ebx.name : _ebx,
                      _edi.name : _edi,
                      _esi.name : _esi,
                     }
        
        self.max_color = 5
        
        # iterate through each liveness stage to determine unique nodes
        for var_set in liveness:
            for var in var_set:
                if not var:
                    continue
                if var not in self.graph:
                    n = Node(var)
                    self.graph[var] = n
                    
    def printNodes(self):
        for node in self.graph:
            print(self.graph[node].name)
            
    def printEdges(self):
        for node in self.graph:
            print("Node: " + self.graph[node].name)
            print("Edges: ")
            print(self.graph[node].edges)
        
    def printGraph(self):
        
        print("-----Graph-----")
        
        for node in self.graph:
            print("Node: " + self.graph[node].name)
            print("Color: " + str(self.graph[node].color))
            print("Edges: ")
            print(self.graph[node].edges)
            print("\n")
            
    # add edges to graph nodes based on liveness and x86 IR
    # temporary variables resulting from spillcode will all be given priority flag
    def buildGraph(self, x86_IR, liveness, temps):
        
        if (len(liveness) < 1):
            return -1
        
        for val in temps:
            self.graph[val].priority = 1
        
        for i in range(len(x86_IR)):
            
            
            try:
                after_set = liveness[i+1]
            except:
                break
            if(x86_IR[i][0] == "movl"):
                src = x86_IR[i][1]
                dest = x86_IR[i][2]
                
                for var in after_set:
                    
#                     if(dest == "%eax"):
#                         dest = "eax"
                    
                    if(dest not in self.graph):
                        continue
                        
#                     if not var:
#                         continue
                    
                    if(var not in self.graph[dest].edges and var != src and var != dest):
                        self.graph[dest].addEdge(var)
                        self.graph[var].addEdge(dest) # ensure edge appears for both nodes
                    
            elif(x86_IR[i][0] == "call" or x86_IR[i][0] == "print" ):
                
                # add edge between each node in after set and each caller saved register
                for var in after_set:
                    if not var:
                        continue
                    self.graph["eax"].addEdge(var)
                    self.graph["ecx"].addEdge(var)
                    self.graph["edx"].addEdge(var)
                    
                    self.graph[var].addEdge("eax")
                    self.graph[var].addEdge("ecx")
                    self.graph[var].addEdge("edx")
                    
            elif(x86_IR[i][0] == "sete"):
                
                for var in after_set:
                    if not var:
                        continue
                    self.graph["esi"].addEdge(var)
                    self.graph["edi"].addEdge(var)
                    
                    self.graph[var].addEdge("esi")
                    self.graph[var].addEdge("edi")
                continue
                    
                
            elif(x86_IR[i][0] == "else" or x86_IR[i][0] == "endif"):
                continue
            
            elif(x86_IR[i][0] == "if"):
                continue
                
            # arithmetic op
            else:
                
                for var in after_set:
                    if not var:
                        continue
                                        
                    dst = ""
                    if(x86_IR[i][0] == "shl" or x86_IR[i][0] == "shr"):
                        dst = x86_IR[i][1]
                    elif(x86_IR[i][0] == "negl" or x86_IR[i][0] == "not"):
                        dst = x86_IR[i][1]
                    elif(x86_IR[i][0] == "or" or x86_IR[i][0] == "and"):
                        # destination of and/or is the first operand
                        # ex: or dst, imm
                        dst = x86_IR[i][1]
                    else:
                        dst = x86_IR[i][2]
                        
                    if(dst not in self.graph):
                        continue
                        
                    if(var != dst and dst[0] != "%" and dst[0] != "$"):
                        self.graph[dst].addEdge(var)
                        self.graph[var].addEdge(dst)

                    # assign dest in case of single operand instruction i.e. NEG
#                     dest = ""
#                     if(x86_IR[i][2] != None):
#                         dest = x86_IR[i][2]
#                         if(var != dest and dest[0] != "$"):
#                             self.graph[dest].addEdge(var)
#                             self.graph[var].addEdge(dest) # ensure edge appears for both nodes
#                     src = x86_IR[i][1]
                    
#                     if(var != src and src[0] != "$"):
#                         self.graph[src].addEdge(var)
#                         self.graph[var].addEdge(src) # ensure edge appears for both nodes
    
    def colorGraph(self):
    
        
        def updateNodes():
            # add all neighboring colors to exclude list for each node in graph
            uncolored_priority = []
            for node in self.graph:
                for neighbor in self.graph[node].edges:
                    # if neighbor is colored, exclude that color
                    if(self.graph[neighbor].color != -1):
                        self.graph[node].addExclusion(self.graph[neighbor].color)
                        
                # keep track of all priority nodes that remain uncolored
                if(self.graph[node].priority == 1 and self.graph[node].color == -1):
                    uncolored_priority.append(node)
                    
            return uncolored_priority
        
        # determine if the graph is fully colored
        # termination criteria for our coloring loop
        def colored():
            for node in self.graph:
                if(self.graph[node].color == -1):
                    return False
            return True
        
        # choose next node to be colored
        # nodes in uncolored priority list are chosen first
        # if no uncolored priority nodes exist, return node with the longest exclude list
        def chooseNode(unc_pri):
            
            if(len(unc_pri) > 0):
                return unc_pri[0]
            
            max_excl = -1
            choice = ""
            for node in self.graph:
                
                if(self.graph[node].color != -1):
                    continue
                
                n_excl = len(self.graph[node].exclude)
                if(n_excl > max_excl):
                    max_excl = n_excl
                    choice = node
            return choice
        
        # determine color for a given node
        # if node's exclude list contains all possible colors, add new color and spill to stack
        def colorNode(node):
            n_excl = len(self.graph[node].exclude)
            i = 0
            spill = False
            while i < n_excl:
                # no spill
                if(i not in self.graph[node].exclude):
                    break
                i += 1
            self.graph[node].color = i
            if(i > self.max_color):
                self.max_color += 1
                spill = True
            return spill
            
        spill = False
        it = 0
        while (colored() == False): 
            
#             print("ITERATION ", it)
            
            # add neighbor's colors to each node's exclusion list
            # get list of priority nodes that havent yet been colored
            unc_pri = updateNodes()
            
            # determine what node to color
            chosen_node = chooseNode(unc_pri)
                        
            # color node
            if(colorNode(chosen_node) == True):
                spill = True
                
            it += 1
            
        return spill
            
    # return list of all variables spilled onto the stack
    def getStackVars(self):
        spilled_vars = []
        for node in self.graph:
            if(self.graph[node].color > 5):
                spilled_vars.append(node)
        return spilled_vars
    
    # assign homes based on color
    # returns a dictionary containing node name and home
    # also return number of stack variables used in final representation
    def assignHomes(self):
        assign = {}
        n_stack = 0
        for node in self.graph:
            color = self.graph[node].color
            home = ""
            
            if(color == 0):
                home = "%eax"
            elif(color == 1):
                home = "%ecx"
            elif(color == 2):
                home = "%edx"
            elif(color == 3):
                home = "%ebx"
            elif(color == 4):
                home = "%edi"
            elif(color == 5):
                home = "%esi"
            else:
                home = "-" + str((color - 5) * 4) + "(%ebp)"
                n_stack += 1
                
            assign[node] = home
        
        return assign, n_stack
    
CFG_ID = 0
class CFGNode:
    def __init__(self, insts):
        
        global CFG_ID
        
        self.id = CFG_ID       # identifier for node
        self.insts = insts     # instructions
        self.children = []     # connections to other blocks
        self.parents = []      # parent node
        self.liveness = []     # liveness for block
        
        CFG_ID += 1
    
    def addChild(self, node_id):
        if(node_id not in self.children):
            self.children.append(node_id)
    
    def addParent(self, node_id):
        if(node_id not in self.parents):
            self.parents.append(node_id)
        
# Control flow graph
# Used to perform liveness analysis on x86 IR with control flow branching
class CFG:
    
    def __init__(self, x86_IR):
        
        self.graph = {}
        
        # swap pointer to next block from root to leaf
        def fixEndNode(node):            
            tmp_child = node.children.pop()
                
            # traverse to leaf node
            def recurseEnd(n):
                for child in n.children:
                    if(len(self.graph[child].children) == 0):
                        return child
                    return recurseEnd(self.graph[child])
                    
            c = recurseEnd(node)
            if(c is not None):
                self.graph[c].addChild(tmp_child)
                        
        
        # recursively pull out if blocks
        def recurse(insts):
            
            # if no instructions left, dont return anything
            if (len(insts) == 0):
                return None
            
            # block of instructions prior to branch
            inst_block = []
            
            # indices for location of each branch
            if_index = -1
            else_index = -1
            endif_index = -1

            # used to match if statements to corresponding else/endifs
            if_id = -1
            
            # return indices of "outermost" if/else blocks
            for i in range(len(insts)):
                inst = insts[i]
                
                if(inst[0] == "if" and if_id == -1):   
                    # save value of current if block
                    if_id = int(inst[2])
                    if_index = i
                    
                # else matches our if statement
                elif(inst[0] == "else"):
                    if(int(inst[2]) == int(if_id)):
                        else_index = i
                    
                # endif matches our if statement
                elif(inst[0] == "endif"):
                    if(int(inst[2]) == int(if_id)):
                        endif_index = i
                        break
                    
                else:
                    # havent seen an if statement yet
                    if(if_index == -1):
                        inst_block.append(inst)
            
            # add all instructions prior to branch to block and add to graph
            curr_block = CFGNode(inst_block)
            self.graph[curr_block.id] = curr_block
            
            # if no if statements present, no need to branch
            if(if_index == -1):
                return curr_block
            
            curr_block.insts.append(["if", insts[if_index][1], insts[if_index][2], insts[if_index][3]])
            
            # else statement present
            if(else_index != -1):
                # recursively generate if block
                if_block = recurse(insts[if_index+1:else_index])
                
                # recursively generate else block
                else_block = recurse(insts[else_index+1:endif_index])
                else_block.insts.insert(0,["else", None, "-1"])
                
                # save end block 
                end_block = CFGNode([insts[endif_index]])

                # recursively handle everything after the endif statement
                sub_block = recurse(insts[endif_index+1:])
                if(sub_block is not None):
                    end_block.addChild(sub_block.id)
                    
                self.graph[end_block.id] = end_block
                

                if(if_block is not None):                    
                    if_block.addChild(end_block.id)
                    curr_block.addChild(if_block.id)
                    
                if(else_block is not None):
                    else_block.addChild(end_block.id)
                    curr_block.addChild(else_block.id)
                
                # update endifs to point to end of parent block
                if(len(curr_block.children) > 2):
                    fixEndNode(curr_block)
                if(len(if_block.children) > 2):
                    fixEndNode(if_block)
                if(len(else_block.children) > 2):
                    fixEndNode(else_block)

                    
            # no else statement
            else:
                if_block = recurse(insts[if_index+1:endif_index])
                end_block = CFGNode([insts[endif_index]])
                
                sub_block = recurse(insts[endif_index+1:])
                if(sub_block is not None):
                    end_block.addChild(sub_block.id)
                    
                self.graph[end_block.id] = end_block
                
                if(if_block is not None):
                    if_block.addChild(end_block.id)
                    curr_block.addChild(if_block.id)

                
                curr_block.addChild(end_block.id)
                
                # update endifs to point to end of parent block
                if(len(curr_block.children) > 2):
                    fixEndNode(curr_block)
                if(len(if_block.children) > 2):
                    fixEndNode(if_block)

            return curr_block
        
        recurse(x86_IR)
        
    def addParents(self):
        for node in self.graph:
            for child in self.graph[node].children:
                self.graph[child].addParent(node)
            
    
    def printCFG(self):
        for node in self.graph:
            print("NODE: ", node)
            print(self.graph[node].insts)
            print("CHILDREN: ")
            for child in self.graph[node].children:
                print(child)
            print("PARENTS: ")
            for parent in self.graph[node].parents:
                print(parent)
            print("LIVENESS :")
            print(self.graph[node].liveness)
            print("\n")
#             for live in self.graph[node].liveness:
#                 print(live)
                
    def doLiveness(self, x86_IR):
                
        # return a list of current 
        def blockLiveness(n, prev_l):
            
            rev = reversed(n.insts)
            live = []
            live.insert(0,prev_l)
            
            def isValid(n):
                return n[0] != "$" and n[0] != "%"

            for inst in rev:
                
                tmp = live
                curr_set = []
                after_set = tmp[0]
                if(inst[0] == "movl"):
                    src = inst[1]
                    dst = inst[2]

                    for var in after_set:
                        if(var != dst):
                            curr_set.append(var)

                    if((src not in curr_set) and isValid(src)):
                        curr_set.append(src)

                elif(inst[0] == "print"):
                    for i in after_set:
                        curr_set.append(i)
#                     curr_set = after_set
                    dst = inst[1]
                    if(isValid(dst) and (dst not in curr_set)):
                        curr_set.append(dst)

                elif(inst[0] == "call"):

                    for i in after_set:
                        curr_set.append(i)
                    # parameters for function call
                    if(isinstance(inst[2], list)):
                        for i in inst[2]:
                            if(isValid(i) and (i not in curr_set)):
                                curr_set.append(i)
                    else:
                        if(isValid(inst[2]) and (inst[2] not in curr_set)):
                            curr_set.append(inst[2])

                elif(inst[0] == "else" or inst[0] == "endif"):
                    for i in after_set:
                        curr_set.append(i)

                elif(inst[0] == "if"):
                    for i in after_set:
                        curr_set.append(i)
                    cond = inst[1]
#                     print(inst)
                    if(cond not in curr_set):
                        curr_set.append(cond)
                    if(inst[3] not in curr_set):
                        curr_set.append(inst[3])
                
                elif(inst[0] == "sete"):
                    for i in after_set:
                        if(i != inst[1] and i != inst[2]):
                            curr_set.append(i)
                
                elif(inst[0] == "cmp"):
                    for i in after_set:
                        curr_set.append(i)
                    lvar = inst[1]
                    rvar = inst[2]
                    
                    if(lvar not in curr_set):
                        curr_set.append(lvar)
                    if(rvar not in curr_set):
                        curr_set.append(rvar)
                # arithmetic operation
                else:

                    # negl and not
                    for i in after_set:
                        curr_set.append(i)
                        
                    if(inst[2] is None):
                        live.insert(0, curr_set)
                        continue

                    src = inst[1]
                    dst = inst[2]

                    if(isValid(dst) and (dst not in curr_set)):
                        curr_set.append(dst)
                    if(isValid(src) and (src not in curr_set)):
                        curr_set.append(src)
                
                live.insert(0, curr_set)
                
            n.liveness = live
            return live
        
        # start at highest node (no children)
        for node in reversed(sorted(self.graph.keys())):
            n = self.graph[node]
            prev_set = []
            if(len(n.children) == 0):
                blockLiveness(n ,[])
                continue
            # if not leaf node, compute prev_set from all children
            for child in n.children:
                c_liveness = self.graph[child].liveness[0]
                for item in c_liveness:
                    if item not in prev_set:
                        prev_set.append(item)
            blockLiveness(n, prev_set)
    
    def orderLiveness(self):
        
        ordered = []
        for node in sorted(self.graph):
            if(len(self.graph[node].parents) != 0):
                ordered += self.graph[node].liveness[:-1]
            else:
                ordered += self.graph[node].liveness
            
        ordered.append([])
        return ordered
            
    def printLiveness(self):
        for node in self.graph:
            print("NODE: ", node)
            print("LIVENESS")
            print(self.graph[node].liveness)
        