.class public final Lnet/sf/smc/generator/SmcCppGenerator;
.super Lnet/sf/smc/generator/SmcCodeGenerator;
.source "SmcCppGenerator.java"


# direct methods
.method public constructor <init>(Lnet/sf/smc/generator/SmcOptions;)V
    .locals 1
    .param p1, "options"    # Lnet/sf/smc/generator/SmcOptions;

    .prologue
    .line 79
    const-string v0, "cpp"

    invoke-direct {p0, p1, v0}, Lnet/sf/smc/generator/SmcCodeGenerator;-><init>(Lnet/sf/smc/generator/SmcOptions;Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public visit(Lnet/sf/smc/model/SmcAction;)V
    .locals 6
    .param p1, "action"    # Lnet/sf/smc/model/SmcAction;

    .prologue
    const/4 v5, 0x1

    .line 1649
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1658
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isEmptyStateStack()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1660
    iget-object v3, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v4, "context.emptyStateStack();"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1683
    :goto_0
    return-void

    .line 1664
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isStatic()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1666
    iget-object v3, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v4, "ctxt."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1669
    :cond_1
    iget-object v3, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1670
    iget-object v3, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(C)V

    .line 1672
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v2, ""

    .line 1673
    .local v2, "sep":Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1676
    iget-object v3, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1677
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1674
    const-string v2, ", "

    goto :goto_1

    .line 1679
    :cond_2
    iget-object v3, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visit(Lnet/sf/smc/model/SmcFSM;)V
    .locals 28
    .param p1, "fsm"    # Lnet/sf/smc/model/SmcFSM;

    .prologue
    .line 115
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getPackage()Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getSource()Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, "rawSource":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "context":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "fsmClassName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 131
    .local v14, "packageDepth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "/*"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " * ex: set ro:"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " * DO NOT EDIT."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " * generated by smc (http://smc.sourceforge.net/)"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " * from file : "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcfileBase:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ".sm"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " */"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 142
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 149
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getIncludes()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 151
    .local v8, "include":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "#include "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v8    # "include":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "#include \""

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcDirectory:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_headerDirectory:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcDirectory:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_headerDirectory:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcDirectory:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_headerDirectory:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 167
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_headerDirectory:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 174
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_targetfileBase:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ".h\""

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "using namespace statemap;"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getImports()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 185
    .local v7, "imp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "using namespace "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 170
    .end local v7    # "imp":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcDirectory:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcDirectory:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 203
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_7

    .line 205
    const-string v26, ""

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 206
    new-instance v23, Ljava/util/StringTokenizer;

    const-string v26, "::"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v23, "tokenizer":Ljava/util/StringTokenizer;
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 212
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    .line 213
    .local v22, "token":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "namespace "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "{"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    goto :goto_3

    .line 225
    .end local v22    # "token":Ljava/lang/String;
    .end local v23    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "// Static class declarations."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "mapIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcMap;>;"
    const/4 v9, 0x0

    .line 228
    .local v9, "index":I
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 231
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcMap;

    .line 232
    .local v11, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v13

    .line 233
    .local v13, "mapName":Ljava/lang/String;
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 234
    .local v21, "stateIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcState;>;"
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 237
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/sf/smc/model/SmcState;

    .line 238
    .local v20, "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "_"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "::"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "(\""

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "::"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\", "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ");"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 258
    .end local v11    # "map":Lnet/sf/smc/model/SmcMap;
    .end local v13    # "mapName":Ljava/lang/String;
    .end local v20    # "state":Lnet/sf/smc/model/SmcState;
    .end local v21    # "stateIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcState;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "const int "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "::MIN_INDEX = 0;"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "const int "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "::MAX_INDEX = "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "State* "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "::_States[] = "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "{"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 279
    const-string v19, ""

    .line 280
    .local v19, "separator":Ljava/lang/String;
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 283
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcMap;

    .line 284
    .restart local v11    # "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v13

    .line 285
    .restart local v13    # "mapName":Ljava/lang/String;
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 286
    .restart local v21    # "stateIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcState;>;"
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 289
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/sf/smc/model/SmcState;

    .line 290
    .restart local v20    # "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    &"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "::"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 287
    const-string v19, ","

    goto :goto_5

    .line 300
    .end local v11    # "map":Lnet/sf/smc/model/SmcMap;
    .end local v13    # "mapName":Ljava/lang/String;
    .end local v20    # "state":Lnet/sf/smc/model/SmcState;
    .end local v21    # "stateIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcState;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "};"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    .end local v19    # "separator":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "State& "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "::valueOf(int stateId)"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "{"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    if (stateId < MIN_INDEX || "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "stateId > MAX_INDEX)"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    {"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noExceptionFlag:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "        assert(1==0);"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    }"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    return (static_cast<"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "State&>(*("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "_States[stateId])));"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v25

    .line 360
    .local v25, "transList":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_e
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnet/sf/smc/model/SmcTransition;

    .line 362
    .local v24, "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v26

    const-string v27, "Default"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "void "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "State::"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "& context"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v17

    .line 375
    .local v17, "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnet/sf/smc/model/SmcParameter;

    .line 377
    .local v16, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_8

    .line 332
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v16    # "param":Lnet/sf/smc/model/SmcParameter;
    .end local v17    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v24    # "trans":Lnet/sf/smc/model/SmcTransition;
    .end local v25    # "transList":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "        throw ("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "            IndexOutOfBoundsException("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "                stateId, MIN_INDEX, "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "MAX_INDEX));"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 381
    .end local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v17    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v24    # "trans":Lnet/sf/smc/model/SmcTransition;
    .restart local v25    # "transList":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "{"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    Default(context);"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    return;"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 395
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v17    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v24    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "void "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "State::Default("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "& context)"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "{"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v26, v0

    if-ltz v26, :cond_12

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    if (context.getDebugFlag() == true)"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    {"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "        TRACE("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\"TRANSITION   : Default\\n\");"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    }"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 447
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noExceptionFlag:Z

    move/from16 v26, v0

    if-nez v26, :cond_14

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    throw ("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "        TransitionUndefinedException("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "            context.getState().getName(),"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "            context.getTransition()));"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 470
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    return;"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 477
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 480
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lnet/sf/smc/model/SmcMap;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcMap;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_b

    .line 426
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "        std::ostream& str = "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context.getDebugStream();"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "        str << \"TRANSITION   : Default\""

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "            << std::endl;"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 465
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    assert(1==0);"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_a

    .line 485
    :cond_15
    if-eqz v15, :cond_17

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_17

    .line 490
    add-int/lit8 v4, v14, -0x1

    .local v4, "i":I
    :goto_c
    if-ltz v4, :cond_17

    .line 493
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_d
    if-ge v10, v4, :cond_16

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 493
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 498
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 502
    .end local v4    # "i":I
    .end local v10    # "j":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "/*"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " * Local variables:"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " *  buffer-read-only: t"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " * End:"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " */"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcGuard;)V
    .locals 27
    .param p1, "guard"    # Lnet/sf/smc/model/SmcGuard;

    .prologue
    .line 815
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransition()Lnet/sf/smc/model/SmcTransition;

    move-result-object v24

    .line 816
    .local v24, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v20

    .line 817
    .local v20, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v13

    .line 818
    .local v13, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v13}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v5

    .line 819
    .local v5, "context":Ljava/lang/String;
    invoke-virtual {v13}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v14

    .line 820
    .local v14, "mapName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 821
    .local v21, "stateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v23

    .line 822
    .local v23, "transType":Lnet/sf/smc/model/SmcElement$TransType;
    const/4 v12, 0x0

    .line 825
    .local v12, "loopbackFlag":Z
    const-string v11, ""

    .line 826
    .local v11, "indent4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getEndState()Ljava/lang/String;

    move-result-object v6

    .line 827
    .local v6, "endStateName":Ljava/lang/String;
    const-string v7, ""

    .line 828
    .local v7, "fqEndStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPushState()Ljava/lang/String;

    move-result-object v18

    .line 829
    .local v18, "pushStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v4

    .line 830
    .local v4, "condition":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getActions()Ljava/util/List;

    move-result-object v3

    .line 837
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_0

    const-string v25, "nil"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    const-string v25, "::"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-gez v25, :cond_0

    .line 842
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "::"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 846
    :cond_0
    const-string v25, "::"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-gez v25, :cond_1

    .line 848
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "::"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 851
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lnet/sf/smc/generator/SmcCodeGenerator;->isLoopback(Lnet/sf/smc/model/SmcElement$TransType;Ljava/lang/String;)Z

    move-result v12

    .line 856
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_2

    const-string v25, "::"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-gez v25, :cond_2

    .line 860
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "::"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 867
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_9

    .line 869
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "        "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 872
    .local v9, "indent2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    move/from16 v25, v0

    if-nez v25, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_7

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    if ("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    {"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 937
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_b

    .line 939
    move-object v7, v6

    .line 971
    :cond_3
    :goto_1
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_4

    if-nez v12, :cond_6

    .line 974
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 982
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    TRACE(\"BEFORE EXIT     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Exit(context)\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1007
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1012
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "(context.getState()).Exit(context);"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    TRACE(\"AFTER EXIT      : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Exit(context)\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1049
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1056
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    if-ltz v25, :cond_10

    .line 1058
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1059
    .local v22, "transName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v15

    .line 1064
    .local v15, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1070
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    TRACE(\"ENTER TRANSITION: "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1079
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v19, ""

    .line 1080
    .local v19, "sep":Ljava/lang/String;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1084
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1081
    const-string v19, ", "

    goto :goto_4

    .line 883
    .end local v15    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v19    # "sep":Ljava/lang/String;
    .end local v22    # "transName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_8

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    else if ("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    {"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 900
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    else"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    {"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 911
    .end local v9    # "indent2":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_a

    .line 915
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "indent2":Ljava/lang/String;
    goto/16 :goto_0

    .line 920
    .end local v9    # "indent2":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    if ("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    {"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 926
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "        "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "indent2":Ljava/lang/String;
    goto/16 :goto_0

    .line 941
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_3

    .line 949
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v12, v0, :cond_c

    .line 951
    const-string v7, "endState"

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "State& "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, " = context.getState();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_1

    .line 962
    :cond_c
    move-object v7, v6

    goto/16 :goto_1

    .line 993
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    str << \"BEFORE EXIT     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Exit(context)\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1035
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    str << \"AFTER EXIT      : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Exit(context)\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "            << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1087
    .restart local v15    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v19    # "sep":Ljava/lang/String;
    .restart local v22    # "transName":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1115
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1120
    .end local v15    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v19    # "sep":Ljava/lang/String;
    .end local v22    # "transName":Ljava/lang/String;
    :cond_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_11

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.clearState();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1129
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    .line 1131
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_12

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "// No actions."

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1137
    :cond_12
    move-object v10, v9

    .line 1171
    .local v10, "indent3":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    if-ltz v25, :cond_1a

    .line 1173
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1174
    .restart local v22    # "transName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v15

    .line 1179
    .restart local v15    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v25, v0

    if-nez v25, :cond_18

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_18

    .line 1182
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1189
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_27

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    TRACE(\"EXIT TRANSITION : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1205
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v19, ""

    .line 1206
    .restart local v19    # "sep":Ljava/lang/String;
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1210
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1207
    const-string v19, ", "

    goto :goto_8

    .line 1091
    .end local v10    # "indent3":Ljava/lang/String;
    .end local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v19    # "sep":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    str << \"ENTER TRANSITION: "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1102
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v19, ""

    .line 1103
    .restart local v19    # "sep":Ljava/lang/String;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1107
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1104
    const-string v19, ", "

    goto :goto_9

    .line 1110
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1146
    .end local v15    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v19    # "sep":Ljava/lang/String;
    .end local v22    # "transName":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v25, v0

    if-nez v25, :cond_16

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "try"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1153
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1160
    .restart local v10    # "indent3":Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1161
    move-object/from16 v0, p0

    iput-object v10, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1163
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 1165
    .local v2, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_b

    .line 1157
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "indent3":Ljava/lang/String;
    :cond_16
    move-object v10, v9

    .restart local v10    # "indent3":Ljava/lang/String;
    goto :goto_a

    .line 1168
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_17
    move-object/from16 v0, p0

    iput-object v11, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    goto/16 :goto_6

    .line 1186
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v15    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v22    # "transName":Ljava/lang/String;
    :cond_18
    move-object v10, v9

    goto/16 :goto_7

    .line 1213
    .restart local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v19    # "sep":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1243
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1256
    .end local v15    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v19    # "sep":Ljava/lang/String;
    .end local v22    # "transName":Ljava/lang/String;
    :cond_1a
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_29

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_1b

    if-nez v12, :cond_29

    .line 1259
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.setState("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1381
    :cond_1c
    :goto_d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v25, v0

    if-nez v25, :cond_1f

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "catch (...)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1391
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_31

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.setState("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1511
    :cond_1d
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noExceptionFlag:Z

    move/from16 v25, v0

    if-nez v25, :cond_1e

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "throw;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1517
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1524
    :cond_1f
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_20

    if-eqz v12, :cond_21

    :cond_20
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_23

    .line 1528
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_22

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_37

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    TRACE(\"BEFORE ENTRY    : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1561
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1565
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "(context.getState()).Entry(context);"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1569
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_23

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1578
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_38

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    TRACE(\"AFTER ENTRY     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1602
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1610
    :cond_23
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_25

    const-string v25, "nil"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_25

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_25

    .line 1614
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPopArgs()Ljava/lang/String;

    move-result-object v17

    .line 1616
    .local v17, "popArgs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context."

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1622
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_24

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1626
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1634
    .end local v17    # "popArgs":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_26

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    }"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1640
    :cond_26
    return-void

    .line 1217
    .restart local v15    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v22    # "transName":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    str << \"EXIT TRANSITION : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1230
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v19, ""

    .line 1231
    .restart local v19    # "sep":Ljava/lang/String;
    :goto_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_28

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1235
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1232
    const-string v19, ", "

    goto :goto_11

    .line 1238
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1264
    .end local v15    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v16    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v19    # "sep":Ljava/lang/String;
    .end local v22    # "transName":Ljava/lang/String;
    :cond_29
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_30

    .line 1269
    if-eqz v12, :cond_2a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_2b

    .line 1271
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.setState("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1279
    :cond_2b
    if-nez v12, :cond_2d

    .line 1281
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_2c

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1290
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2e

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    TRACE(\"BEFORE ENTRY    : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1315
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1319
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "(context.getState()).Entry(context);"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_2d

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2f

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    TRACE(\"AFTER ENTRY     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1358
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1363
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.pushState("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1301
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    str << \"BEFORE ENTRY    : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1344
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    str << \"AFTER ENTRY     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1368
    :cond_30
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.popState();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1398
    :cond_31
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_36

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.setState("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1410
    if-nez v12, :cond_33

    .line 1412
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_32

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "{"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1421
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_34

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    TRACE(\"BEFORE ENTRY    : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1446
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "}"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1451
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "(context.getState()).Entry(context);"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1456
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_33

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    if (context.getDebugFlag() == true)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    {"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1464
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_35

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        TRACE(\"AFTER ENTRY     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\\n\");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1489
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    }"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1495
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.pushState("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ");"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1432
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    str << \"BEFORE ENTRY    : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1475
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        str << \"AFTER ENTRY     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "            << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1500
    :cond_36
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.popState();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1547
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    str << \"BEFORE ENTRY    : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1589
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    std::ostream& str = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.getDebugStream();"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    str << \"AFTER ENTRY     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "::Entry(context)\""

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        << std::endl;"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method public visit(Lnet/sf/smc/model/SmcMap;)V
    .locals 6
    .param p1, "map"    # Lnet/sf/smc/model/SmcMap;

    .prologue
    .line 519
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->hasDefaultState()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 521
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v0

    .line 524
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

    .line 526
    .local v3, "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v3, p0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 531
    .end local v0    # "defaultState":Lnet/sf/smc/model/SmcState;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_0
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

    .line 533
    .local v2, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v2, p0}, Lnet/sf/smc/model/SmcState;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 536
    .end local v2    # "state":Lnet/sf/smc/model/SmcState;
    :cond_1
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcParameter;)V
    .locals 2
    .param p1, "parameter"    # Lnet/sf/smc/model/SmcParameter;

    .prologue
    .line 1692
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcParameter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1693
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1696
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcState;)V
    .locals 12
    .param p1, "state"    # Lnet/sf/smc/model/SmcState;

    .prologue
    .line 545
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v7

    .line 546
    .local v7, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "context":Ljava/lang/String;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, "fsmClassName":Ljava/lang/String;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v8

    .line 549
    .local v8, "mapName":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v1

    .line 556
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 558
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 559
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 560
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "void "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 561
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 562
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 563
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 564
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "::Entry("

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 565
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 566
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "& context)"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 567
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 568
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 571
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 572
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 573
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 574
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "& ctxt = context.getOwner();"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 575
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 578
    iget-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 579
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

    .line 580
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

    .line 582
    .local v0, "action":Lnet/sf/smc/model/SmcAction;
    invoke-virtual {v0, p0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 584
    .end local v0    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_0
    iput-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 587
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 588
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "    return;"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 589
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 590
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 593
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "indent2":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 596
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 597
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 598
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "void "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 599
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 600
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 601
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 602
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "::Exit("

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 603
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 604
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "& context)"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 606
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 610
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 611
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 612
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "& ctxt = context.getOwner();"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 613
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 616
    iget-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 617
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

    .line 618
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

    .line 620
    .restart local v0    # "action":Lnet/sf/smc/model/SmcAction;
    invoke-virtual {v0, p0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 622
    .end local v0    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_2
    iput-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 625
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 626
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "    return;"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 628
    iget-object v10, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
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

    .line 634
    .local v9, "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v9, p0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 637
    .end local v9    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_4
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcTransition;)V
    .locals 17
    .param p1, "transition"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 646
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v12

    .line 647
    .local v12, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v8

    .line 648
    .local v8, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "context":Ljava/lang/String;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, "fsmClassName":Ljava/lang/String;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v9

    .line 651
    .local v9, "mapName":Ljava/lang/String;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 652
    .local v13, "stateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v14

    .line 653
    .local v14, "transName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 654
    .local v10, "nullCondition":Z
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getGuards()Ljava/util/List;

    move-result-object v6

    .line 661
    .local v6, "guards":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcGuard;>;"
    const-string v15, "::"

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_0

    .line 663
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "::"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "fqStateName":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 671
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "void "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "::"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "& context"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 683
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

    .line 685
    .local v11, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 667
    .end local v2    # "fqStateName":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_0
    move-object v2, v13

    .restart local v2    # "fqStateName":Ljava/lang/String;
    goto/16 :goto_0

    .line 689
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "{"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->hasCtxtReference()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 699
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "& ctxt = context.getOwner();"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 708
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    if-ltz v15, :cond_3

    .line 710
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    if (context.getDebugFlag() == true)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    {"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

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

    const-string v16, "        TRACE(\"LEAVING STATE   : "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "\\n\");"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 738
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    }"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 744
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 745
    .local v4, "git":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    .line 746
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    .line 747
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 750
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/smc/model/SmcGuard;

    .line 753
    .local v5, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v5}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_4

    .line 755
    const/4 v10, 0x1

    .line 758
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lnet/sf/smc/model/SmcGuard;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 748
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    goto :goto_3

    .line 726
    .end local v4    # "git":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    .end local v5    # "guard":Lnet/sf/smc/model/SmcGuard;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        std::ostream& str = "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "context.getDebugStream();"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 730
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        str << \"LEAVING STATE   : "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "            << std::endl;"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 764
    .restart local v4    # "git":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    if-lez v15, :cond_a

    if-nez v10, :cond_a

    .line 768
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 770
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    }"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 774
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    else"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    {"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "         "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "_Default::"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "(context"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcParameter;

    .line 788
    .restart local v11    # "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v11}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 791
    .end local v11    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ");"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    }"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 800
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 801
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    return;"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 806
    return-void

    .line 795
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_9

    .line 797
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    goto :goto_5
.end method
