.class public final Lnet/sf/smc/generator/SmcRubyGenerator;
.super Lnet/sf/smc/generator/SmcCodeGenerator;
.source "SmcRubyGenerator.java"


# direct methods
.method public constructor <init>(Lnet/sf/smc/generator/SmcOptions;)V
    .locals 1
    .param p1, "options"    # Lnet/sf/smc/generator/SmcOptions;

    .prologue
    .line 84
    const-string v0, "rb"

    invoke-direct {p0, p1, v0}, Lnet/sf/smc/generator/SmcCodeGenerator;-><init>(Lnet/sf/smc/generator/SmcOptions;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public visit(Lnet/sf/smc/model/SmcAction;)V
    .locals 7
    .param p1, "action"    # Lnet/sf/smc/model/SmcAction;

    .prologue
    const/4 v6, 0x1

    .line 1267
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1269
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 1271
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isProperty()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1273
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1274
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "ctxt."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1275
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1276
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1277
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1311
    :goto_0
    return-void

    .line 1285
    :cond_0
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isEmptyStateStack()Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 1288
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "fsm.emptyStateStack()"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1295
    :cond_1
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "ctxt."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1296
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1297
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v3, ""

    .line 1300
    .local v3, "sep":Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1303
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1304
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1301
    const-string v3, ", "

    goto :goto_1

    .line 1307
    :cond_2
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visit(Lnet/sf/smc/model/SmcFSM;)V
    .locals 22
    .param p1, "fsm"    # Lnet/sf/smc/model/SmcFSM;

    .prologue
    .line 101
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getPackage()Ljava/lang/String;

    move-result-object v12

    .line 102
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "context":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getSource()Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "rawSource":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getStartState()Ljava/lang/String;

    move-result-object v14

    .line 105
    .local v14, "startState":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v10

    .line 109
    .local v10, "maps":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcMap;>;"
    const/4 v11, 0x0

    .line 112
    .local v11, "packageDepth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "# ex: set ro:"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "# DO NOT EDIT."

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "# generated by smc (http://smc.sourceforge.net/)"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "# from file : "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcfileBase:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, ".sm"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 122
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 138
    :cond_0
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 139
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_1

    .line 141
    new-instance v17, Ljava/util/StringTokenizer;

    const-string v20, "::"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v17, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 147
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, "token":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "module "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 154
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "    "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    goto :goto_0

    .line 157
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "require \'statemap\'"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getImports()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 163
    .local v6, "imp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "require \'"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v6    # "imp":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "class "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "State < Statemap::State"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def Entry(fsm) end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def Exit(fsm) end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def method_missing(name, *args)"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        fsm = args.shift"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        Default(fsm)"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def Default(fsm)"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v20, v0

    if-ltz v20, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        if fsm.getDebugFlag then"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "            fsm.getDebugStream.write(\"TRANSITION   : Default\\n\")"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        msg = \"\\nState: \" + fsm.getState.getName +"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "            \"\\nTransition: \" + fsm.getTransition.to_s + \"\\n\""

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        raise Statemap::TransitionUndefinedException, msg"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/smc/model/SmcMap;

    .line 238
    .local v8, "map":Lnet/sf/smc/model/SmcMap;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lnet/sf/smc/model/SmcMap;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 244
    .end local v8    # "map":Lnet/sf/smc/model/SmcMap;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "class "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "_sm < Statemap::FSMContext"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def initialize(owner)"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        super("

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        @_owner = owner"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def enterStartState()"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        getState.Entry(self)"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def method_missing(name, *args)"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        @_transition = name"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        getState.send(name, self, *args)"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        @_transition = nil"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def getOwner()"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        return @_owner"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def getStates()"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        return ["

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/smc/model/SmcMap;

    .line 303
    .restart local v8    # "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v9

    .line 305
    .local v9, "mapName":Ljava/lang/String;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/sf/smc/model/SmcState;

    .line 307
    .local v15, "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "            "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "::"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 314
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "map":Lnet/sf/smc/model/SmcMap;
    .end local v9    # "mapName":Ljava/lang/String;
    .end local v15    # "state":Lnet/sf/smc/model/SmcState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        ]"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    def getTransitions()"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        return ["

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v19

    .line 322
    .local v19, "transitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/sf/smc/model/SmcTransition;

    .line 324
    .local v18, "trans":Lnet/sf/smc/model/SmcTransition;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "            \'"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "\',"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 328
    .end local v18    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "        ]"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 333
    .end local v19    # "transitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_a

    .line 342
    add-int/lit8 v3, v11, -0x1

    .local v3, "i":I
    :goto_5
    if-ltz v3, :cond_a

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 346
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    if-ge v7, v3, :cond_9

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "    "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 346
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 351
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "end"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 355
    .end local v3    # "i":I
    .end local v7    # "j":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintStream;->println()V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "# Local variables:"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "#  buffer-read-only: t"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    const-string v21, "# End:"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcGuard;)V
    .locals 30
    .param p1, "guard"    # Lnet/sf/smc/model/SmcGuard;

    .prologue
    .line 788
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransition()Lnet/sf/smc/model/SmcTransition;

    move-result-object v27

    .line 789
    .local v27, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v27 .. v27}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v23

    .line 790
    .local v23, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual/range {v23 .. v23}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v15

    .line 791
    .local v15, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lnet/sf/smc/model/SmcFSM;->getPackage()Ljava/lang/String;

    move-result-object v17

    .line 792
    .local v17, "packageName":Ljava/lang/String;
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v5

    .line 793
    .local v5, "context":Ljava/lang/String;
    invoke-virtual {v15}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v16

    .line 794
    .local v16, "mapName":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    .line 795
    .local v24, "stateName":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v25

    .line 796
    .local v25, "transName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v26

    .line 797
    .local v26, "transType":Lnet/sf/smc/model/SmcElement$TransType;
    const/4 v14, 0x0

    .line 801
    .local v14, "loopbackFlag":Z
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getEndState()Ljava/lang/String;

    move-result-object v6

    .line 802
    .local v6, "endStateName":Ljava/lang/String;
    const-string v9, ""

    .line 803
    .local v9, "fqEndStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPushState()Ljava/lang/String;

    move-result-object v21

    .line 804
    .local v21, "pushStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "condition":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getActions()Ljava/util/List;

    move-result-object v3

    .line 812
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    sget-object v28, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_0

    const-string v28, "nil"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    const-string v28, "::"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    if-gez v28, :cond_0

    .line 817
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "::"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 821
    :cond_0
    const-string v28, "::"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    if-gez v28, :cond_1

    .line 823
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "::"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 829
    :cond_1
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_2

    .line 832
    const-string v28, "::"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    if-gez v28, :cond_8

    .line 834
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "::"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 844
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Lnet/sf/smc/generator/SmcCodeGenerator;->isLoopback(Lnet/sf/smc/model/SmcElement$TransType;Ljava/lang/String;)Z

    move-result v14

    .line 850
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_b

    .line 852
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "    "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 856
    .local v11, "indent2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    move/from16 v28, v0

    if-nez v28, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_9

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "if "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, " then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 907
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    if-nez v28, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_d

    .line 909
    move-object v9, v6

    .line 938
    :cond_3
    :goto_2
    sget-object v28, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_4

    if-nez v14, :cond_6

    .line 941
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "if fsm.getDebugFlag then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    fsm.getDebugStream.write(\""

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "BEFORE EXIT     : "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ".Exit(fsm)\\n\")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    end"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 954
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "fsm.getState.Exit(fsm)"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_6

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "if fsm.getDebugFlag then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    fsm.getDebugStream.write(\""

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "AFTER EXIT      : "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ".Exit(fsm)\\n\")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    end"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 971
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v28, v0

    if-ltz v28, :cond_11

    .line 973
    invoke-virtual/range {v27 .. v27}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v18

    .line 978
    .local v18, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "if fsm.getDebugFlag then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    fsm.getDebugStream.write(\""

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "ENTER TRANSITION: "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 983
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_7

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "::"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 988
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 992
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_10

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "("

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 995
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v22, ""

    .line 996
    .local v22, "sep":Ljava/lang/String;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v29, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lnet/sf/smc/model/SmcParameter;

    invoke-virtual/range {v28 .. v28}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 997
    const-string v22, ", "

    goto :goto_3

    .line 836
    .end local v11    # "indent2":Ljava/lang/String;
    .end local v18    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v19    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v22    # "sep":Ljava/lang/String;
    :cond_8
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_2

    .line 839
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "::"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 865
    .restart local v11    # "indent2":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_a

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "elsif "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, " then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 878
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "else"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 884
    .end local v11    # "indent2":Ljava/lang/String;
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_c

    .line 887
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .restart local v11    # "indent2":Ljava/lang/String;
    goto/16 :goto_1

    .line 892
    .end local v11    # "indent2":Ljava/lang/String;
    :cond_c
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "        "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 894
    .restart local v11    # "indent2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    if "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, " then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 911
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_3

    .line 919
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_e

    .line 921
    const-string v9, "endState"

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, " = fsm.getState"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 929
    :cond_e
    move-object v9, v6

    goto/16 :goto_2

    .line 1002
    .restart local v18    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v19    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v22    # "sep":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1004
    .end local v19    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v22    # "sep":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "\\n\")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    end"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1010
    .end local v18    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    if-nez v28, :cond_15

    .line 1012
    invoke-virtual/range {v23 .. v23}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v7

    .line 1014
    .local v7, "entryActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    invoke-virtual/range {v23 .. v23}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v8

    .line 1016
    .local v8, "exitActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_12

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "# No actions."

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    :cond_12
    move-object v12, v11

    .line 1076
    .end local v7    # "entryActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    .end local v8    # "exitActions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    .local v12, "indent3":Ljava/lang/String;
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v28, v0

    if-ltz v28, :cond_1b

    .line 1078
    invoke-virtual/range {v27 .. v27}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v18

    .line 1083
    .restart local v18    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "if fsm.getDebugFlag then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    fsm.getDebugStream.write(\""

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "EXIT TRANSITION : "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1088
    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_14

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "::"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1093
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1097
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_1a

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "("

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1100
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v22, ""

    .line 1101
    .restart local v22    # "sep":Ljava/lang/String;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v29, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lnet/sf/smc/model/SmcParameter;

    invoke-virtual/range {v28 .. v28}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1102
    const-string v22, ", "

    goto :goto_5

    .line 1028
    .end local v12    # "indent3":Ljava/lang/String;
    .end local v18    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v19    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v22    # "sep":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "fsm.clearState"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1036
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v28, v0

    if-nez v28, :cond_16

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "begin"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1041
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "    "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1048
    .restart local v12    # "indent3":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1049
    .local v13, "indent4":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v12, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1051
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 1053
    .local v2, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_7

    .line 1045
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "indent3":Ljava/lang/String;
    .end local v13    # "indent4":Ljava/lang/String;
    :cond_16
    move-object v12, v11

    .restart local v12    # "indent3":Ljava/lang/String;
    goto :goto_6

    .line 1056
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "indent4":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iput-object v13, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1060
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v28, v0

    if-nez v28, :cond_13

    .line 1062
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v28, v0

    if-ltz v28, :cond_18

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "rescue RuntimeError => e"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    fsm.getDebugStream.write e"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1071
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "ensure"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1107
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "indent4":Ljava/lang/String;
    .restart local v18    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v19    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v22    # "sep":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1109
    .end local v19    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v22    # "sep":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "\\n\")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    end"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1118
    .end local v18    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    :cond_1b
    sget-object v28, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_25

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    if-gtz v28, :cond_1c

    if-nez v14, :cond_25

    .line 1121
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "fsm.setState("

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1190
    :cond_1d
    :goto_8
    sget-object v28, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1e

    if-eqz v14, :cond_1f

    :cond_1e
    sget-object v28, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_21

    .line 1194
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_20

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "if fsm.getDebugFlag then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    fsm.getDebugStream.write(\""

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "BEFORE ENTRY    : "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ".Entry(fsm)\\n\")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    end"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1207
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "fsm.getState.Entry(fsm)"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1210
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_21

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "if fsm.getDebugFlag then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    fsm.getDebugStream.write(\""

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "AFTER ENTRY     : "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ".Entry(fsm)\\n\")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    end"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1228
    :cond_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v28, v0

    if-nez v28, :cond_22

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "end"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1236
    :cond_22
    sget-object v28, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_24

    const-string v28, "nil"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_24

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_24

    .line 1240
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPopArgs()Ljava/lang/String;

    move-result-object v20

    .line 1242
    .local v20, "popArgs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "fsm."

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_23

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "("

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintStream;->println()V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1255
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintStream;->println()V

    .line 1258
    .end local v20    # "popArgs":Ljava/lang/String;
    :cond_24
    return-void

    .line 1126
    :cond_25
    sget-object v28, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_2a

    .line 1131
    if-eqz v14, :cond_26

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_27

    .line 1133
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "fsm.setState("

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1141
    :cond_27
    if-nez v14, :cond_29

    .line 1143
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_28

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "if fsm.getDebugFlag then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    fsm.getDebugStream.write(\""

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "BEFORE ENTRY    : "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ".Entry(fsm)\\n\")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    end"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1157
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "fsm.getState.Entry(fsm)"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_29

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "if fsm.getDebugFlag then"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    fsm.getDebugStream.write(\""

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "AFTER ENTRY     : "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ".Entry(fsm)\\n\")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "    end"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1175
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "fsm.pushState("

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1180
    :cond_2a
    sget-object v28, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v28, v0

    const-string v29, "fsm.popState"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public visit(Lnet/sf/smc/model/SmcMap;)V
    .locals 14
    .param p1, "map"    # Lnet/sf/smc/model/SmcMap;

    .prologue
    .line 370
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v2

    .line 371
    .local v2, "defaultState":Lnet/sf/smc/model/SmcState;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "context":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "mapName":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v8

    .line 378
    .local v8, "states":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcState;>;"
    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v3

    .line 390
    .local v3, "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_0
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 391
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 392
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "class "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 393
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 394
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "_Default < "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 395
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 396
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "State"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 400
    .local v5, "indent2":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 401
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcTransition;

    .line 403
    .local v11, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v11, p0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 385
    .end local v3    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "indent2":Ljava/lang/String;
    .end local v11    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    goto :goto_0

    .line 405
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "indent2":Ljava/lang/String;
    :cond_1
    iput-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 409
    iget-boolean v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 411
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v0

    .line 417
    .local v0, "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 418
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 419
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    def getTransitions()"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 421
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "        return {"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcTransition;

    .line 427
    .restart local v11    # "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v10

    .line 431
    .local v10, "transName":Ljava/lang/String;
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 434
    const/4 v9, 0x2

    .line 442
    .local v9, "transDefinition":I
    :goto_3
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 443
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "            \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 444
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 445
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "\' => "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 446
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v9}, Ljava/io/PrintStream;->print(I)V

    .line 447
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 439
    .end local v9    # "transDefinition":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "transDefinition":I
    goto :goto_3

    .line 449
    .end local v9    # "transDefinition":I
    .end local v10    # "transName":Ljava/lang/String;
    .end local v11    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_3
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 450
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "        }"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 452
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    end"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    .end local v0    # "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_4
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 456
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 457
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "end"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/smc/model/SmcState;

    .line 463
    .local v7, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v7, p0}, Lnet/sf/smc/model/SmcState;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_4

    .line 467
    .end local v7    # "state":Lnet/sf/smc/model/SmcState;
    :cond_5
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 468
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 469
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "module "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 470
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 473
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/smc/model/SmcState;

    .line 475
    .restart local v7    # "state":Lnet/sf/smc/model/SmcState;
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 476
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 477
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v7}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 478
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 479
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 480
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v13, 0x5f

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(C)V

    .line 481
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v7}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 482
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "::new(\'"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 483
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 484
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(C)V

    .line 485
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v7}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 486
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "\', "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 487
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getNextStateId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(I)V

    .line 488
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, ").freeze"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 492
    .end local v7    # "state":Lnet/sf/smc/model/SmcState;
    :cond_6
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 493
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    Default = "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 494
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 495
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "_Default::new(\'"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 496
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 497
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, ".Default\', -1).freeze"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 499
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 500
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 501
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "end"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcState;)V
    .locals 17
    .param p1, "state"    # Lnet/sf/smc/model/SmcState;

    .prologue
    .line 512
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v8

    .line 513
    .local v8, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v9

    .line 514
    .local v9, "mapName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 519
    .local v10, "stateName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 520
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "class "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v16, 0x5f

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(C)V

    .line 524
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, " < "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "_Default"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v2

    .line 532
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 534
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 535
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    def Entry(fsm)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        ctxt = fsm.getOwner"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 544
    .local v7, "indent2":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 545
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcAction;

    .line 547
    .local v1, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 549
    .end local v1    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_0
    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 552
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    end"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "indent2":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v2

    .line 557
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 560
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    def Exit(fsm)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        ctxt = fsm.getOwner"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 569
    .restart local v7    # "indent2":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "        "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 570
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcAction;

    .line 572
    .restart local v1    # "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 574
    .end local v1    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_2
    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 577
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    end"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 582
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "indent2":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 583
    .restart local v7    # "indent2":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 584
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/sf/smc/model/SmcTransition;

    .line 586
    .local v14, "transition":Lnet/sf/smc/model/SmcTransition;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 588
    .end local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_4
    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 592
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 594
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v3

    .line 596
    .local v3, "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v11

    .line 599
    .local v11, "stateTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v4

    .line 605
    .local v4, "defaultState":Lnet/sf/smc/model/SmcState;
    if-eqz v4, :cond_5

    .line 607
    invoke-virtual {v4}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v5

    .line 617
    .local v5, "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 618
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    def getTransitions()"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        return {"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/sf/smc/model/SmcTransition;

    .line 627
    .restart local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v14}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v13

    .line 631
    .local v13, "transName":Ljava/lang/String;
    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 634
    const/4 v12, 0x1

    .line 649
    .local v12, "transDefinition":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "            \'"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "\' => "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v12}, Ljava/io/PrintStream;->print(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 612
    .end local v5    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v12    # "transDefinition":I
    .end local v13    # "transName":Ljava/lang/String;
    .end local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    goto/16 :goto_3

    .line 638
    .restart local v13    # "transName":Ljava/lang/String;
    .restart local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_6
    invoke-interface {v5, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 641
    const/4 v12, 0x2

    .restart local v12    # "transDefinition":I
    goto :goto_5

    .line 646
    .end local v12    # "transDefinition":I
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "transDefinition":I
    goto :goto_5

    .line 656
    .end local v12    # "transDefinition":I
    .end local v13    # "transName":Ljava/lang/String;
    .end local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        }"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    end"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 663
    .end local v3    # "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v4    # "defaultState":Lnet/sf/smc/model/SmcState;
    .end local v5    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v11    # "stateTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "end"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcTransition;)V
    .locals 17
    .param p1, "transition"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 676
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v12

    .line 677
    .local v12, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v6

    .line 678
    .local v6, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v6}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getPackage()Ljava/lang/String;

    move-result-object v9

    .line 679
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v7

    .line 680
    .local v7, "mapName":Ljava/lang/String;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 681
    .local v13, "stateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v14

    .line 682
    .local v14, "transName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v11

    .line 684
    .local v11, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getGuards()Ljava/util/List;

    move-result-object v3

    .line 685
    .local v3, "guards":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v8, 0x0

    .line 691
    .local v8, "nullCondition":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 692
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "def "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "(fsm"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 698
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

    .line 700
    .local v10, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    .end local v10    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->hasCtxtReference()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 711
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    ctxt = fsm.getOwner"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    if-ltz v15, :cond_2

    .line 718
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    if fsm.getDebugFlag then"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        fsm.getDebugStream.write(\""

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "LEAVING STATE   : "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "::"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "\\n\")"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    end"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 734
    .local v5, "indent2":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 735
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 736
    .local v1, "git":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    .line 737
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    .line 738
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 741
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcGuard;

    .line 744
    .local v2, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    .line 746
    const/4 v8, 0x1

    .line 749
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcGuard;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 739
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    goto :goto_1

    .line 751
    .end local v2    # "guard":Lnet/sf/smc/model/SmcGuard;
    :cond_4
    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 757
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    if-lez v15, :cond_6

    if-nez v8, :cond_6

    .line 759
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    else"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        super"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    end"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 776
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "end"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 779
    return-void

    .line 770
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 772
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    end"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method
