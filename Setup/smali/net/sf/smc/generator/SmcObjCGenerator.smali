.class public final Lnet/sf/smc/generator/SmcObjCGenerator;
.super Lnet/sf/smc/generator/SmcCodeGenerator;
.source "SmcObjCGenerator.java"


# direct methods
.method public constructor <init>(Lnet/sf/smc/generator/SmcOptions;)V
    .locals 1
    .param p1, "options"    # Lnet/sf/smc/generator/SmcOptions;

    .prologue
    .line 80
    const-string v0, "m"

    invoke-direct {p0, p1, v0}, Lnet/sf/smc/generator/SmcCodeGenerator;-><init>(Lnet/sf/smc/generator/SmcOptions;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private convertScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1451
    const-string v1, "::"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1453
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public visit(Lnet/sf/smc/model/SmcAction;)V
    .locals 6
    .param p1, "action"    # Lnet/sf/smc/model/SmcAction;

    .prologue
    .line 1398
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1399
    .local v2, "name":Ljava/lang/String;
    const-string v3, ":"

    .line 1405
    .local v3, "sep":Ljava/lang/String;
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isEmptyStateStack()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1408
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "[context emptyStateStack];"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1426
    :goto_0
    return-void

    .line 1412
    :cond_0
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "[ctxt "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1413
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1417
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1419
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1420
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1424
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "];"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visit(Lnet/sf/smc/model/SmcFSM;)V
    .locals 25
    .param p1, "fsm"    # Lnet/sf/smc/model/SmcFSM;

    .prologue
    .line 107
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getPackage()Ljava/lang/String;

    move-result-object v13

    .line 108
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getSource()Ljava/lang/String;

    move-result-object v17

    .line 109
    .local v17, "rawSource":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "context":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "fsmClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getStartState()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "fqStateName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 125
    .local v12, "packageDepth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "/*"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " * ex: set ro:"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " * DO NOT EDIT."

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " * generated by smc (http://smc.sourceforge.net/)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " * from file : "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcfileBase:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ".sm"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " */"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 136
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 143
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getIncludes()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 145
    .local v7, "include":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "#import "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v7    # "include":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "#import \""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_targetfileBase:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ".h\""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "// Class declarations."

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "mapIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcMap;>;"
    const/4 v8, 0x0

    .line 159
    .local v8, "index":I
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 162
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/smc/model/SmcMap;

    .line 163
    .local v9, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, "mapName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "@implementation "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 171
    .local v20, "stateIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcState;>;"
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 174
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/sf/smc/model/SmcState;

    .line 176
    .local v19, "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "static "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " *g"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " = nil;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 188
    .end local v19    # "state":Lnet/sf/smc/model/SmcState;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 191
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 192
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 195
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/sf/smc/model/SmcState;

    .line 196
    .restart local v19    # "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "+ ("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "*)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    if (!g"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    {"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        g"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " = [["

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " alloc] initWithName:@\""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "::"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "\" stateId:"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->print(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    }"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "return g"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_3

    .line 251
    .end local v19    # "state":Lnet/sf/smc/model/SmcState;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "+ (void) cleanupStates"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 258
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 261
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/sf/smc/model/SmcState;

    .line 263
    .restart local v19    # "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "[g"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " release]; g"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " = nil;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 276
    .end local v19    # "state":Lnet/sf/smc/model/SmcState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "@end"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 284
    .end local v9    # "map":Lnet/sf/smc/model/SmcMap;
    .end local v11    # "mapName":Ljava/lang/String;
    .end local v20    # "stateIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcState;>;"
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v22

    .line 286
    .local v22, "transList":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "@implementation "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- (void)Entry:("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "*)context"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- (void)Exit:("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "*)context"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnet/sf/smc/model/SmcTransition;

    .line 315
    .local v21, "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "Default"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- (void)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ":("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "*)context"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/sf/smc/model/SmcParameter;

    .line 326
    .local v14, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " :"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_6

    .line 330
    .end local v14    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    [self Default:context];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 342
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v21    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- (void)Default:("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "*)context;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v23, v0

    if-ltz v23, :cond_9

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    if ( [context debugFlag] )"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        TRACE(@"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "\"TRANSITION   : Default\\n\\r\");"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    }"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    NSAssert( NO, @\"Default transition\" );"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "@end"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 384
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 385
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 388
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnet/sf/smc/model/SmcMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcMap;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_7

    .line 396
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "@implementation "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    const-string v23, "::"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-ltz v23, :cond_b

    .line 404
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lnet/sf/smc/generator/SmcObjCGenerator;->convertScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- (id)initWithOwner:("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "*)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "owner;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "self = [super initWithState:"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "if (!self)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "return nil;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    }"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_owner = owner;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "return self;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- (id)initWithOwner:("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "*)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "owner state:(SMCState*)aState;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "self = [super initWithState: aState];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "if (!self)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "return nil;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    }"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "_owner = owner;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "return self;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- (void)dealloc"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v8, 0x0

    .line 496
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 499
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/smc/model/SmcMap;

    .line 500
    .restart local v9    # "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v11

    .line 502
    .restart local v11    # "mapName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    ["

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " cleanupStates];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 508
    .end local v9    # "map":Lnet/sf/smc/model/SmcMap;
    .end local v11    # "mapName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    [super dealloc];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- ("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State*)state;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "return ("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State*)_state;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- ("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "*)owner;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "return _owner;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- (void)enterStartState;"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    [[self state] Entry:self];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 565
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnet/sf/smc/model/SmcTransition;

    .line 567
    .restart local v21    # "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "Default"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "- (void)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v15

    .line 575
    .local v15, "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 576
    .local v16, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v18, ":"

    .line 577
    .local v18, "separator":Ljava/lang/String;
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 581
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 578
    const-string v18, " :"

    goto :goto_a

    .line 583
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v23, v0

    if-ltz v23, :cond_f

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    [self setTransition:@\""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "\"];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 598
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    [[self state] "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ":self"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 602
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 603
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " :"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v24, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnet/sf/smc/model/SmcParameter;

    invoke-virtual/range {v23 .. v23}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_b

    .line 609
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v23, v0

    if-ltz v23, :cond_11

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    [self setTransition:nil];"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 618
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 624
    .end local v15    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v18    # "separator":Ljava/lang/String;
    .end local v21    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "@end"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "/*"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " * Local variables:"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " *  buffer-read-only: t"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " * End:"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " */"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcGuard;)V
    .locals 29
    .param p1, "guard"    # Lnet/sf/smc/model/SmcGuard;

    .prologue
    .line 921
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransition()Lnet/sf/smc/model/SmcTransition;

    move-result-object v26

    .line 922
    .local v26, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v26 .. v26}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v22

    .line 923
    .local v22, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual/range {v22 .. v22}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v15

    .line 924
    .local v15, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v6

    .line 925
    .local v6, "context":Ljava/lang/String;
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v16

    .line 926
    .local v16, "mapName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v23

    .line 927
    .local v23, "stateName":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    .line 928
    .local v24, "transName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v25

    .line 929
    .local v25, "transType":Lnet/sf/smc/model/SmcElement$TransType;
    const/4 v14, 0x0

    .line 932
    .local v14, "loopbackFlag":Z
    const-string v13, ""

    .line 933
    .local v13, "indent4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getEndState()Ljava/lang/String;

    move-result-object v8

    .line 934
    .local v8, "endStateName":Ljava/lang/String;
    const-string v9, ""

    .line 935
    .local v9, "fqEndStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPushState()Ljava/lang/String;

    move-result-object v20

    .line 936
    .local v20, "pushStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v5

    .line 937
    .local v5, "condition":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getActions()Ljava/util/List;

    move-result-object v3

    .line 944
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    sget-object v27, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_0

    const-string v27, "nil"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    const-string v27, "::"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    if-gez v27, :cond_0

    .line 949
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "::"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 954
    :cond_0
    const-string v27, "::"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    if-ltz v27, :cond_1

    .line 956
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lnet/sf/smc/generator/SmcObjCGenerator;->convertScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 960
    :cond_1
    const-string v27, "::"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    if-ltz v27, :cond_2

    .line 962
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lnet/sf/smc/generator/SmcObjCGenerator;->convertScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 965
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lnet/sf/smc/generator/SmcCodeGenerator;->isLoopback(Lnet/sf/smc/model/SmcElement$TransType;Ljava/lang/String;)Z

    move-result v14

    .line 970
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_3

    const-string v27, "::"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    if-gez v27, :cond_3

    .line 974
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 978
    :cond_3
    const-string v27, "::"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    if-ltz v27, :cond_4

    .line 980
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/sf/smc/generator/SmcObjCGenerator;->convertScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 987
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_b

    .line 989
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "        "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 992
    .local v11, "indent2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    move/from16 v27, v0

    if-nez v27, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_9

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    if ("

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    {"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1057
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v27

    if-nez v27, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_d

    .line 1059
    move-object v9, v8

    .line 1091
    :cond_5
    :goto_1
    sget-object v27, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_6

    if-nez v14, :cond_8

    .line 1094
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_7

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "if ( [context debugFlag] )"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "{"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    TRACE(@\"BEFORE EXIT     : "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "\\n\\r\");"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "}"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1108
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "[[context state] Exit:context];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_8

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "if ( [context debugFlag] )"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "{"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    TRACE(@\"AFTER EXIT      : "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "\\n\\r\");"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "}"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1126
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v27, v0

    if-ltz v27, :cond_10

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "if ( [context debugFlag] )"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "{"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    TRACE(@\"ENTER TRANSITION: "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "("

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {v26 .. v26}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1143
    .local v17, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v21, ""

    .line 1144
    .local v21, "sep":Ljava/lang/String;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1148
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1145
    const-string v21, " "

    goto :goto_2

    .line 1003
    .end local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v21    # "sep":Ljava/lang/String;
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_a

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintStream;->println()V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    else if ("

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    {"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1020
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintStream;->println()V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    else"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    {"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1031
    .end local v11    # "indent2":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_c

    .line 1035
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "indent2":Ljava/lang/String;
    goto/16 :goto_0

    .line 1040
    .end local v11    # "indent2":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    if ("

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    {"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1046
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "        "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "indent2":Ljava/lang/String;
    goto/16 :goto_0

    .line 1061
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_5

    .line 1069
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v14, v0, :cond_e

    .line 1071
    const-string v9, "EndStateName"

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "State* "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, " = [context state];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_1

    .line 1082
    :cond_e
    move-object v9, v8

    goto/16 :goto_1

    .line 1151
    .restart local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v21    # "sep":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, ")\\n\\r\");"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "}"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1158
    .end local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v21    # "sep":Ljava/lang/String;
    :cond_10
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 1160
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_11

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "// No actions."

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1166
    :cond_11
    move-object v12, v11

    .line 1187
    .local v12, "indent3":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v27, v0

    if-ltz v27, :cond_15

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "if ( [context debugFlag] )"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "{"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    TRACE(@\"EXIT TRANSITION : "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "("

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {v26 .. v26}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1204
    .restart local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v21, ""

    .line 1205
    .restart local v21    # "sep":Ljava/lang/String;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1209
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1206
    const-string v21, " "

    goto :goto_4

    .line 1172
    .end local v12    # "indent3":Ljava/lang/String;
    .end local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v21    # "sep":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "[context clearState];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1175
    move-object v12, v11

    .line 1176
    .restart local v12    # "indent3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1177
    move-object/from16 v0, p0

    iput-object v12, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1179
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 1181
    .local v2, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_5

    .line 1184
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_13
    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    goto/16 :goto_3

    .line 1212
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v21    # "sep":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, ")\\n\\r\");"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "}"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1226
    .end local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v21    # "sep":Ljava/lang/String;
    :cond_15
    sget-object v27, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_1c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_16

    if-nez v14, :cond_1c

    .line 1230
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "[context setState:"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1305
    :cond_17
    :goto_6
    sget-object v27, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_18

    if-eqz v14, :cond_19

    :cond_18
    sget-object v27, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_1b

    .line 1309
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1a

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "if ( [context debugFlag] )"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "{"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    TRACE(@\"BEFORE ENTRY    : "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "\\n\\r\");"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "}"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1323
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "[[context state] Entry:context];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1326
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1b

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "if ( [context debugFlag] )"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "{"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    TRACE(@\"AFTER ENTRY     : "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "\\n\\r\");"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "}"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1343
    :cond_1b
    sget-object v27, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_24

    const-string v27, "nil"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_24

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_24

    .line 1347
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPopArgs()Ljava/lang/String;

    move-result-object v18

    .line 1348
    .local v18, "popArgs":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    .line 1350
    .local v19, "popLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "[context "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1355
    if-lez v19, :cond_23

    .line 1360
    const/4 v7, 0x0

    .local v7, "cur":I
    const/16 v27, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1361
    .local v4, "comma":I
    :goto_7
    if-ltz v4, :cond_22

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const/16 v28, 0x3a

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(C)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1362
    add-int/lit8 v7, v4, 0x1

    .line 1363
    const/16 v27, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_7

    .line 1235
    .end local v4    # "comma":I
    .end local v7    # "cur":I
    .end local v18    # "popArgs":Ljava/lang/String;
    .end local v19    # "popLength":I
    :cond_1c
    sget-object v27, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_21

    .line 1240
    if-eqz v14, :cond_1d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_1e

    .line 1242
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "[context setState:"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1250
    :cond_1e
    if-nez v14, :cond_20

    .line 1252
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1f

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "if ( [context debugFlag] )"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "{"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    TRACE(@\"BEFORE ENTRY    : "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "\\n\\r\");"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "}"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1268
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintStream;->println()V

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "[[context state] Entry:context];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_20

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "if ( [context debugFlag] )"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "{"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    TRACE(@\"AFTER ENTRY     : "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "\\n\\r\");"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "}"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1290
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "[context pushState:"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1295
    :cond_21
    sget-object v27, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "[context popState];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1369
    .restart local v4    # "comma":I
    .restart local v7    # "cur":I
    .restart local v18    # "popArgs":Ljava/lang/String;
    .restart local v19    # "popLength":I
    :cond_22
    move/from16 v0, v19

    if-ge v7, v0, :cond_23

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const/16 v28, 0x3a

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(C)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1375
    .end local v4    # "comma":I
    .end local v7    # "cur":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "];"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1383
    .end local v18    # "popArgs":Ljava/lang/String;
    .end local v19    # "popLength":I
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_25

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    const-string v28, "    }"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1389
    :cond_25
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcMap;)V
    .locals 6
    .param p1, "map"    # Lnet/sf/smc/model/SmcMap;

    .prologue
    .line 644
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 645
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 646
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "@implementation "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 647
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 648
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "_Default"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->hasDefaultState()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 653
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v0

    .line 656
    .local v0, "defaultState":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v0}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/smc/model/SmcTransition;

    .line 658
    .local v3, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v3, p0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 662
    .end local v0    # "defaultState":Lnet/sf/smc/model/SmcState;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_0
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "@end"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcState;

    .line 667
    .local v2, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v2, p0}, Lnet/sf/smc/model/SmcState;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 670
    .end local v2    # "state":Lnet/sf/smc/model/SmcState;
    :cond_1
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcParameter;)V
    .locals 2
    .param p1, "parameter"    # Lnet/sf/smc/model/SmcParameter;

    .prologue
    .line 1436
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcParameter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1438
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1441
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcState;)V
    .locals 12
    .param p1, "state"    # Lnet/sf/smc/model/SmcState;

    .prologue
    .line 679
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v7

    .line 680
    .local v7, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "context":Ljava/lang/String;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v4

    .line 682
    .local v4, "fsmClassName":Ljava/lang/String;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v8

    .line 683
    .local v8, "mapName":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, "className":Ljava/lang/String;
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 688
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "@implementation "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 689
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 690
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 691
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v1

    .line 696
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 698
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 699
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "- (void)Entry:("

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 700
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 701
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "*)context;"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 703
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 706
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 707
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 708
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 709
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, " *ctxt = [context owner];"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 710
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 713
    iget-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 714
    .local v6, "indent2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 715
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcAction;

    .line 717
    .local v0, "action":Lnet/sf/smc/model/SmcAction;
    invoke-virtual {v0, p0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 719
    .end local v0    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_0
    iput-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 722
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 723
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 726
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "indent2":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v1

    .line 727
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 729
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 730
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "- (void)Exit:("

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 731
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 732
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "*)context;"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 734
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 737
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 738
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 739
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 740
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, " *ctxt = [context owner];"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 741
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 744
    iget-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 745
    .restart local v6    # "indent2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 746
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcAction;

    .line 748
    .restart local v0    # "action":Lnet/sf/smc/model/SmcAction;
    invoke-virtual {v0, p0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 750
    .end local v0    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_2
    iput-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 752
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 753
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 757
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "indent2":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/smc/model/SmcTransition;

    .line 759
    .local v9, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v9, p0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 762
    .end local v9    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_4
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 763
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "@end"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 764
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 766
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcTransition;)V
    .locals 17
    .param p1, "transition"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 776
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v12

    .line 777
    .local v12, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v8

    .line 778
    .local v8, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "context":Ljava/lang/String;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, "fsmClassName":Ljava/lang/String;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v9

    .line 781
    .local v9, "mapName":Ljava/lang/String;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 782
    .local v13, "stateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v14

    .line 783
    .local v14, "transName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 784
    .local v10, "nullCondition":Z
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getGuards()Ljava/util/List;

    move-result-object v6

    .line 790
    .local v6, "guards":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcGuard;>;"
    const-string v15, "::"

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_0

    .line 792
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, "fqStateName":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 800
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "- (void)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ":("

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "*)context"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcParameter;

    .line 810
    .local v11, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, " :"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 796
    .end local v2    # "fqStateName":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_0
    move-object v2, v13

    .restart local v2    # "fqStateName":Ljava/lang/String;
    goto :goto_0

    .line 814
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "{"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 822
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->hasCtxtReference()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 824
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, " *ctxt = [context owner];"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 831
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    if-ltz v15, :cond_3

    .line 833
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    if ( [context debugFlag] )"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    {"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        TRACE(@\"LEAVING STATE   : "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "::"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "\\n\\r\");"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    }"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 850
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 851
    .local v4, "git":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    .line 852
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    .line 853
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 856
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/smc/model/SmcGuard;

    .line 859
    .local v5, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v5}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_4

    .line 861
    const/4 v10, 0x1

    .line 864
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lnet/sf/smc/model/SmcGuard;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 854
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    goto :goto_2

    .line 870
    .end local v5    # "guard":Lnet/sf/smc/model/SmcGuard;
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    if-lez v15, :cond_9

    if-nez v10, :cond_9

    .line 874
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 876
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    }"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 884
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    else"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    {"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "         [super "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ":context"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcParameter;

    .line 896
    .restart local v11    # "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, " :"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v11}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 899
    .end local v11    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "];"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    }"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 908
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 911
    return-void

    .line 903
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    .line 905
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    goto :goto_4
.end method
