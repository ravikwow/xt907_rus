.class public final Lnet/sf/smc/generator/SmcJSGenerator;
.super Lnet/sf/smc/generator/SmcCodeGenerator;
.source "SmcJSGenerator.java"


# instance fields
.field private jsCode:Lnet/sf/smc/generator/JSCode;


# direct methods
.method public constructor <init>(Lnet/sf/smc/generator/SmcOptions;)V
    .locals 1
    .param p1, "options"    # Lnet/sf/smc/generator/SmcOptions;

    .prologue
    .line 118
    const-string v0, "js"

    invoke-direct {p0, p1, v0}, Lnet/sf/smc/generator/SmcCodeGenerator;-><init>(Lnet/sf/smc/generator/SmcOptions;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lnet/sf/smc/generator/JSCode;

    invoke-direct {v0}, Lnet/sf/smc/generator/JSCode;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    .line 120
    return-void
.end method

.method private phpStateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1118
    const-string v2, "::"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1119
    .local v0, "index":I
    move-object v1, p1

    .line 1121
    .local v1, "retval":Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    :cond_0
    return-object v1
.end method

.method private sanitizeKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "transName"    # Ljava/lang/String;

    .prologue
    .line 1137
    move-object v0, p1

    .line 1139
    .local v0, "retval":Ljava/lang/String;
    const-string v1, "Default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    :cond_0
    return-object v0
.end method


# virtual methods
.method public visit(Lnet/sf/smc/model/SmcAction;)V
    .locals 7
    .param p1, "action"    # Lnet/sf/smc/model/SmcAction;

    .prologue
    const/4 v6, 0x1

    .line 1054
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1057
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    invoke-virtual {v4}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v1

    .line 1062
    .local v1, "jsFunc":Lnet/sf/smc/generator/JSFunction;
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1063
    const-string v4, "emptyStateStack"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1065
    const-string v4, "fsm."

    invoke-virtual {v1, v4}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1071
    :goto_0
    invoke-virtual {v1, v2}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1072
    const-string v4, "("

    invoke-virtual {v1, v4}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1074
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v3, ""

    .line 1075
    .local v3, "sep":Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 1078
    invoke-virtual {v1, v3}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1079
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1076
    const-string v3, ", "

    goto :goto_1

    .line 1069
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "sep":Ljava/lang/String;
    :cond_0
    const-string v4, "ctxt."

    invoke-virtual {v1, v4}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto :goto_0

    .line 1082
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "sep":Ljava/lang/String;
    :cond_1
    const-string v4, ");"

    invoke-virtual {v1, v4}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1084
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcFSM;)V
    .locals 24
    .param p1, "fsm"    # Lnet/sf/smc/model/SmcFSM;

    .prologue
    .line 136
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "context":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getSource()Ljava/lang/String;

    move-result-object v12

    .line 138
    .local v12, "rawSource":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getStartState()Ljava/lang/String;

    move-result-object v14

    .line 140
    .local v14, "startState":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v7

    .line 147
    .local v7, "maps":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcMap;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, "/*"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, " ex: set ro:"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, " DO NOT EDIT."

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, " generated by smc (http://smc.sourceforge.net/)"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, " from file : "

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcfileBase:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, ".sm"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, "*/"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->println()V

    .line 159
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->println()V

    .line 165
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, "//require_once \'StateMachine/statemap.php\';"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->println()V

    .line 169
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getImports()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 171
    .local v5, "imp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, "//require_once \'"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v19, "\';"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v5    # "imp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->println()V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "State"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "State"

    invoke-virtual/range {v18 .. v20}, Lnet/sf/smc/generator/JSCode;->addClass(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    const-string v19, "name,id"

    invoke-virtual/range {v18 .. v19}, Lnet/sf/smc/generator/JSClass;->addParams(Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    const-string v19, "Entry"

    const-string v20, "fsm"

    const-string v21, ""

    invoke-virtual/range {v18 .. v21}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    const-string v19, "Exit_"

    const-string v20, "fsm"

    const-string v21, ""

    invoke-virtual/range {v18 .. v21}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 183
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v17

    .line 184
    .local v17, "transitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/sf/smc/model/SmcTransition;

    .line 186
    .local v15, "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v9

    .line 189
    .local v9, "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Default"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "fsm"

    const-string v21, "this.Default_(fsm);"

    invoke-virtual/range {v18 .. v21}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 193
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/smc/model/SmcParameter;

    .line 195
    .local v8, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v18

    invoke-virtual {v8}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lnet/sf/smc/generator/JSFunction;->addParams(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto :goto_1

    .line 203
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "param":Lnet/sf/smc/model/SmcParameter;
    .end local v9    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v15    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    const-string v19, "Default_"

    const-string v20, "fsm"

    invoke-virtual/range {v18 .. v20}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 228
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/smc/model/SmcMap;

    .line 230
    .local v6, "map":Lnet/sf/smc/model/SmcMap;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lnet/sf/smc/model/SmcMap;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 233
    .end local v6    # "map":Lnet/sf/smc/model/SmcMap;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnet/sf/smc/generator/SmcJSGenerator;->phpStateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "phpState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_sm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "FSMContext"

    const-string v21, "owner"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "this.setState("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "); this._owner=owner;"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v18 .. v22}, Lnet/sf/smc/generator/JSCode;->addClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 238
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/sf/smc/model/SmcTransition;

    .line 240
    .restart local v15    # "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v16

    .line 241
    .local v16, "transName":Ljava/lang/String;
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v9

    .line 243
    .restart local v9    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v18, "Default"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 251
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v9

    .line 252
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v13, ""

    .line 253
    .local v13, "separator":Ljava/lang/String;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/sf/smc/model/SmcParameter;

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/sf/smc/generator/JSFunction;->addParams(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 254
    const-string v13, ", "

    goto :goto_4

    .line 264
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "this._transition = \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "     this.getState()."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(this"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 267
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 268
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v19

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/sf/smc/model/SmcParameter;

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto :goto_5

    .line 274
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v18

    const-string v19, "); this._transition = null;"

    invoke-virtual/range {v18 .. v19}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_3

    .line 283
    .end local v9    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v11    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v13    # "separator":Ljava/lang/String;
    .end local v15    # "trans":Lnet/sf/smc/model/SmcTransition;
    .end local v16    # "transName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    const-string v19, "getState"

    const-string v20, ""

    const-string v21, "        if (this._state == null) {            throw new StateUndefinedException();        }        return this._state;"

    invoke-virtual/range {v18 .. v21}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    const-string v19, "enterStartState"

    const-string v20, ""

    const-string v21, "this._state.Entry(this);"

    invoke-virtual/range {v18 .. v21}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    move-result-object v18

    const-string v19, "getOwner"

    const-string v20, ""

    const-string v21, "return this._owner;"

    invoke-virtual/range {v18 .. v21}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/generator/JSCode;->generateCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcGuard;)V
    .locals 26
    .param p1, "guard"    # Lnet/sf/smc/model/SmcGuard;

    .prologue
    .line 713
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransition()Lnet/sf/smc/model/SmcTransition;

    move-result-object v23

    .line 714
    .local v23, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v23 .. v23}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v20

    .line 715
    .local v20, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v16

    .line 716
    .local v16, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual/range {v16 .. v16}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v5

    .line 717
    .local v5, "context":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v17

    .line 718
    .local v17, "mapName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 719
    .local v21, "stateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v22

    .line 720
    .local v22, "transType":Lnet/sf/smc/model/SmcElement$TransType;
    const/4 v15, 0x0

    .line 724
    .local v15, "loopbackFlag":Z
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getEndState()Ljava/lang/String;

    move-result-object v6

    .line 725
    .local v6, "endStateName":Ljava/lang/String;
    const-string v9, ""

    .line 726
    .local v9, "fqEndStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPushState()Ljava/lang/String;

    move-result-object v19

    .line 727
    .local v19, "pushStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "condition":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getActions()Ljava/util/List;

    move-result-object v3

    .line 729
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v14

    .line 735
    .local v14, "jsFunc":Lnet/sf/smc/generator/JSFunction;
    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    const-string v24, "nil"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "::"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_0

    .line 740
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 742
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/sf/smc/generator/SmcJSGenerator;->phpStateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 745
    const-string v24, "::"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_1

    .line 747
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 749
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lnet/sf/smc/generator/SmcJSGenerator;->phpStateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 754
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_2

    .line 757
    const-string v24, "::"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_2

    .line 759
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 762
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lnet/sf/smc/generator/SmcJSGenerator;->phpStateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 764
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lnet/sf/smc/generator/SmcCodeGenerator;->isLoopback(Lnet/sf/smc/model/SmcElement$TransType;Ljava/lang/String;)Z

    move-result v15

    .line 770
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_13

    .line 772
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "    "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 776
    .local v11, "indent2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    move/from16 v24, v0

    if-nez v24, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_11

    .line 781
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "if ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") {"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 820
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_15

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_15

    .line 822
    move-object v9, v6

    .line 850
    :cond_3
    :goto_1
    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_4

    if-nez v15, :cond_5

    .line 854
    :cond_4
    const-string v24, "fsm.getState().Exit_(fsm);"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 858
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    .line 860
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v7

    .line 862
    .local v7, "entryActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v8

    .line 866
    .local v8, "exitActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    if-gtz v24, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_17

    .line 870
    :cond_6
    const-string v24, "//# No actions."

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 896
    :cond_7
    :goto_2
    move-object v12, v11

    .line 952
    .end local v7    # "entryActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    .end local v8    # "exitActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    .local v12, "indent3":Ljava/lang/String;
    :cond_8
    :goto_3
    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1d

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_9

    if-nez v15, :cond_1d

    .line 957
    :cond_9
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "fsm.setState("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 992
    :cond_a
    :goto_4
    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    if-eqz v15, :cond_c

    :cond_b
    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 997
    :cond_c
    const-string v24, "fsm.getState().Entry(fsm);"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1005
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v24, v0

    if-nez v24, :cond_e

    .line 1008
    const-string v24, "if (exception) {    throw exception; }"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1013
    :cond_e
    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_f

    const-string v24, "nil"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_f

    .line 1017
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPopArgs()Ljava/lang/String;

    move-result-object v18

    .line 1020
    .local v18, "popArgs":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "fsm."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1023
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_22

    .line 1025
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1038
    .end local v18    # "popArgs":Ljava/lang/String;
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 1041
    const-string v24, "}"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1044
    :cond_10
    return-void

    .line 783
    .end local v12    # "indent3":Ljava/lang/String;
    :cond_11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_12

    .line 788
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "} elseif ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") {"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_0

    .line 794
    :cond_12
    const-string v24, "else {"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_0

    .line 799
    .end local v11    # "indent2":Ljava/lang/String;
    :cond_13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_14

    .line 802
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .restart local v11    # "indent2":Ljava/lang/String;
    goto/16 :goto_0

    .line 807
    .end local v11    # "indent2":Ljava/lang/String;
    :cond_14
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "    "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 810
    .restart local v11    # "indent2":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "if ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") {"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_0

    .line 824
    :cond_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_3

    .line 832
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_16

    .line 834
    const-string v9, "endState"

    .line 837
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " = fsm.getState();"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_1

    .line 841
    :cond_16
    move-object v9, v6

    goto/16 :goto_1

    .line 881
    .restart local v7    # "entryActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    .restart local v8    # "exitActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    if-eqz v7, :cond_18

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    :cond_18
    if-eqz v8, :cond_19

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    :cond_19
    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_7

    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_7

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_7

    .line 892
    const-string v24, "//# No actions."

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_2

    .line 903
    .end local v7    # "entryActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    .end local v8    # "exitActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    :cond_1a
    const-string v24, "fsm.clearState();"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 910
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v24, v0

    if-nez v24, :cond_1b

    .line 913
    const-string v24, "var exception = null;"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 914
    invoke-virtual {v14, v11}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 915
    const-string v24, "try {"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 917
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "    "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 924
    .restart local v12    # "indent3":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 925
    .local v13, "indent4":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v12, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 927
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 929
    .local v2, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_7

    .line 921
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "indent3":Ljava/lang/String;
    .end local v13    # "indent4":Ljava/lang/String;
    :cond_1b
    move-object v12, v11

    .restart local v12    # "indent3":Ljava/lang/String;
    goto :goto_6

    .line 932
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "indent4":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 939
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 942
    const-string v24, "}"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 944
    const-string v24, "catch (exception) {}"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_3

    .line 959
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "indent4":Ljava/lang/String;
    :cond_1d
    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 964
    if-eqz v15, :cond_1e

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1f

    .line 968
    :cond_1e
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "fsm.setState("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 973
    :cond_1f
    if-nez v15, :cond_20

    .line 976
    const-string v24, "fsm.getState().Entry(fsm);"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 980
    :cond_20
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "fsm.pushState("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_4

    .line 982
    :cond_21
    sget-object v24, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 985
    const-string v24, "fsm.popState();"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_4

    .line 1029
    .restart local v18    # "popArgs":Ljava/lang/String;
    :cond_22
    const-string v24, ");"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto/16 :goto_5
.end method

.method public visit(Lnet/sf/smc/model/SmcMap;)V
    .locals 17
    .param p1, "map"    # Lnet/sf/smc/model/SmcMap;

    .prologue
    .line 303
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v3

    .line 304
    .local v3, "defaultState":Lnet/sf/smc/model/SmcState;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "context":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "mapName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v9

    .line 307
    .local v9, "states":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcState;>;"
    const/4 v7, 0x1

    .line 311
    .local v7, "needPass":Z
    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v3}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v4

    .line 323
    .local v4, "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_Default"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "State"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lnet/sf/smc/generator/JSCode;->addClass(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 326
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sf/smc/model/SmcTransition;

    .line 328
    .local v12, "transition":Lnet/sf/smc/model/SmcTransition;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 318
    .end local v4    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v12    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    goto :goto_0

    .line 333
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 335
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v1

    .line 341
    .local v1, "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13}, Ljava/io/PrintStream;->println()V

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    invoke-virtual {v13}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v13

    const-string v14, "getTransitions"

    const-string v15, ""

    const-string v16, "return ["

    invoke-virtual/range {v13 .. v16}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 348
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sf/smc/model/SmcTransition;

    .line 350
    .restart local v12    # "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v11

    .line 354
    .local v11, "transName":Ljava/lang/String;
    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 357
    const/4 v10, 0x2

    .line 365
    .local v10, "transDefinition":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    invoke-virtual {v13}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\':"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto :goto_2

    .line 362
    .end local v10    # "transDefinition":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "transDefinition":I
    goto :goto_3

    .line 367
    .end local v10    # "transDefinition":I
    .end local v11    # "transName":Ljava/lang/String;
    .end local v12    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    invoke-virtual {v13}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v13

    const-string v14, "        ];"

    invoke-virtual {v13, v14}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 373
    .end local v1    # "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/smc/model/SmcState;

    .line 375
    .local v8, "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lnet/sf/smc/model/SmcState;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_4

    .line 386
    .end local v8    # "state":Lnet/sf/smc/model/SmcState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    const-string v14, ""

    invoke-virtual {v13, v6, v14}, Lnet/sf/smc/generator/JSCode;->addClass(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 388
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/smc/model/SmcState;

    .line 390
    .restart local v8    # "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    invoke-virtual {v13}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v13

    invoke-virtual {v8}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "new "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "(\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\',"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getNextStateId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ");"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lnet/sf/smc/generator/JSClass;->addStaticMember(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    goto :goto_5

    .line 392
    .end local v8    # "state":Lnet/sf/smc/model/SmcState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    invoke-virtual {v13}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v13

    const-string v14, "Default_"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " new "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_Default(\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".Default_\',-1);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lnet/sf/smc/generator/JSClass;->addStaticMember(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 425
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcParameter;)V
    .locals 3
    .param p1, "parameter"    # Lnet/sf/smc/model/SmcParameter;

    .prologue
    .line 1094
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcParameter;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, "type":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    iget-object v1, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1107
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1103
    iget-object v1, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1104
    iget-object v1, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visit(Lnet/sf/smc/model/SmcState;)V
    .locals 21
    .param p1, "state"    # Lnet/sf/smc/model/SmcState;

    .prologue
    .line 435
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v9

    .line 436
    .local v9, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v10

    .line 437
    .local v10, "mapName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 440
    .local v12, "stateName":Ljava/lang/String;
    const/4 v11, 0x1

    .line 451
    .local v11, "needPass":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_Default"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lnet/sf/smc/generator/JSCode;->addClass(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 454
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v3

    .line 455
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 457
    const/4 v11, 0x0

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v17

    const-string v18, "Entry"

    const-string v19, "fsm"

    const-string v20, "ctxt = fsm.getOwner();"

    invoke-virtual/range {v17 .. v20}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 467
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 468
    .local v8, "indent2":Ljava/lang/String;
    const-string v17, "        "

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 469
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 471
    .local v2, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 473
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_0
    move-object/from16 v0, p0

    iput-object v8, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 478
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "indent2":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v3

    .line 479
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 481
    const/4 v11, 0x0

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v17

    const-string v18, "Exit_"

    const-string v19, "fsm"

    const-string v20, "ctxt = fsm.getOwner();\n"

    invoke-virtual/range {v17 .. v20}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 488
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 489
    .restart local v8    # "indent2":Ljava/lang/String;
    const-string v17, "        "

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 490
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 492
    .restart local v2    # "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 494
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_2
    move-object/from16 v0, p0

    iput-object v8, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 500
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "indent2":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnet/sf/smc/model/SmcTransition;

    .line 502
    .local v16, "transition":Lnet/sf/smc/model/SmcTransition;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 507
    .end local v16    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 509
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v4

    .line 511
    .local v4, "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v13

    .line 513
    .local v13, "stateTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v5

    .line 520
    .local v5, "defaultState":Lnet/sf/smc/model/SmcState;
    if-eqz v5, :cond_5

    .line 522
    invoke-virtual {v5}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v6

    .line 535
    .local v6, "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v17

    const-string v18, "getTransition"

    const-string v19, "return ["

    invoke-virtual/range {v17 .. v19}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 538
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnet/sf/smc/model/SmcTransition;

    .line 540
    .restart local v16    # "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v16 .. v16}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v15

    .line 544
    .local v15, "transName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 547
    const/4 v14, 0x1

    .line 563
    .local v14, "transDefinition":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto :goto_4

    .line 527
    .end local v6    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v14    # "transDefinition":I
    .end local v15    # "transName":Ljava/lang/String;
    .end local v16    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    goto :goto_3

    .line 551
    .restart local v15    # "transName":Ljava/lang/String;
    .restart local v16    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_6
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 554
    const/4 v14, 0x2

    .restart local v14    # "transDefinition":I
    goto :goto_5

    .line 559
    .end local v14    # "transDefinition":I
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "transDefinition":I
    goto :goto_5

    .line 568
    .end local v14    # "transDefinition":I
    .end local v15    # "transName":Ljava/lang/String;
    .end local v16    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v17

    const-string v18, "];"

    invoke-virtual/range {v17 .. v18}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 577
    .end local v4    # "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v5    # "defaultState":Lnet/sf/smc/model/SmcState;
    .end local v6    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v13    # "stateTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_9
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcTransition;)V
    .locals 17
    .param p1, "transition"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 587
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v12

    .line 588
    .local v12, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v7

    .line 589
    .local v7, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v8

    .line 590
    .local v8, "mapName":Ljava/lang/String;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 591
    .local v13, "stateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v14

    .line 592
    .local v14, "transName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v11

    .line 594
    .local v11, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getGuards()Ljava/util/List;

    move-result-object v3

    .line 595
    .local v3, "guards":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v9, 0x0

    .line 602
    .local v9, "nullCondition":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    invoke-virtual {v15}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v5

    .line 603
    .local v5, "jsClass":Lnet/sf/smc/generator/JSClass;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnet/sf/smc/generator/SmcJSGenerator;->sanitizeKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "fsm"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 604
    invoke-virtual {v5}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v6

    .line 608
    .local v6, "jsFunc":Lnet/sf/smc/generator/JSFunction;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sf/smc/model/SmcParameter;

    .line 611
    .local v10, "param":Lnet/sf/smc/model/SmcParameter;
    invoke-virtual {v5}, Lnet/sf/smc/generator/JSClass;->getCurrentFunction()Lnet/sf/smc/generator/JSFunction;

    move-result-object v15

    invoke-virtual {v10}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lnet/sf/smc/generator/JSFunction;->addParams(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    goto :goto_0

    .line 619
    .end local v10    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->hasCtxtReference()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 621
    const-string v15, "     var   ctxt = fsm.getOwner(); "

    invoke-virtual {v6, v15}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 655
    :cond_1
    const-string v15, "        "

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 656
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 657
    .local v1, "git":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    .line 658
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    .line 659
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 662
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcGuard;

    .line 665
    .local v2, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    .line 667
    const/4 v9, 0x1

    .line 670
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcGuard;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 660
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    goto :goto_1

    .line 677
    .end local v2    # "guard":Lnet/sf/smc/model/SmcGuard;
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    if-lez v15, :cond_5

    if-nez v9, :cond_5

    .line 679
    const-string v15, "        } else {"

    invoke-virtual {v6, v15}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 683
    const-string v15, "            "

    invoke-virtual {v6, v15}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 684
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcJSGenerator;->jsCode:Lnet/sf/smc/generator/JSCode;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lnet/sf/smc/generator/JSCode;->getCurrentClass()Lnet/sf/smc/generator/JSClass;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/sf/smc/generator/JSClass;->getBaseClass()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".prototype."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apply(this,arguments);"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 694
    const-string v15, "        }"

    invoke-virtual {v6, v15}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 703
    :cond_4
    :goto_2
    return-void

    .line 697
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    goto :goto_2
.end method
