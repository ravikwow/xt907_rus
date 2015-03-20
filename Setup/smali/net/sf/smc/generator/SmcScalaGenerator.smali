.class public final Lnet/sf/smc/generator/SmcScalaGenerator;
.super Lnet/sf/smc/generator/SmcCodeGenerator;
.source "SmcScalaGenerator.java"


# direct methods
.method public constructor <init>(Lnet/sf/smc/generator/SmcOptions;)V
    .locals 1
    .param p1, "options"    # Lnet/sf/smc/generator/SmcOptions;

    .prologue
    .line 85
    const-string v0, "scala"

    invoke-direct {p0, p1, v0}, Lnet/sf/smc/generator/SmcCodeGenerator;-><init>(Lnet/sf/smc/generator/SmcOptions;Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public visit(Lnet/sf/smc/model/SmcAction;)V
    .locals 7
    .param p1, "action"    # Lnet/sf/smc/model/SmcAction;

    .prologue
    const/4 v6, 0x1

    .line 1264
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 1267
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isProperty()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1269
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1270
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "ctxt."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1271
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1272
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1273
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1307
    :goto_0
    return-void

    .line 1281
    :cond_0
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isEmptyStateStack()Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 1284
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "context.emptyStateStack()"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1291
    :cond_1
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "ctxt."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1292
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1293
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v3, ""

    .line 1296
    .local v3, "sep":Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1299
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1300
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1297
    const-string v3, ", "

    goto :goto_1

    .line 1303
    :cond_2
    iget-object v4, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visit(Lnet/sf/smc/model/SmcFSM;)V
    .locals 25
    .param p1, "fsm"    # Lnet/sf/smc/model/SmcFSM;

    .prologue
    .line 102
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getSource()Ljava/lang/String;

    move-result-object v16

    .line 103
    .local v16, "rawSource":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getPackage()Ljava/lang/String;

    move-result-object v12

    .line 104
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "context":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "fsmClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getStartState()Ljava/lang/String;

    move-result-object v18

    .line 107
    .local v18, "startState":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v11

    .line 116
    .local v11, "maps":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcMap;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "// ex: set ro:"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "// DO NOT EDIT."

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "// generated by smc (http://smc.sourceforge.net/)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "// from file : "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcfileBase:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ".sm"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "package "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 141
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_syncFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "import scala.concurrent"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 147
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getImports()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "imp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "import "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v6    # "imp":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "@serializable"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "class "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "(owner: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ") extends statemap.FSMContext["

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State] {"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    private val _owner: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " = owner"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 179
    const-string v23, "::"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .local v7, "index":I
    if-ltz v7, :cond_6

    .line 181
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v24, v7, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "javaState":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    setState("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 199
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v22

    .line 202
    .local v22, "transitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/sf/smc/model/SmcTransition;

    .line 204
    .local v20, "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "Default"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    def "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v14

    .line 211
    .local v14, "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v17, ""

    .line 212
    .local v17, "separator":Ljava/lang/String;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 216
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 213
    const-string v17, ", "

    goto :goto_3

    .line 188
    .end local v8    # "javaState":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v17    # "separator":Ljava/lang/String;
    .end local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    .end local v22    # "transitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_6
    move-object/from16 v8, v18

    .restart local v8    # "javaState":Ljava/lang/String;
    goto/16 :goto_1

    .line 218
    .restart local v14    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v17    # "separator":Ljava/lang/String;
    .restart local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    .restart local v22    # "transitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "): Unit = "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_syncFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "synchronized "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 225
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "{"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        _transition = \""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        getState()."

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "(this"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 237
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 238
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v24, v0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnet/sf/smc/model/SmcParameter;

    invoke-virtual/range {v23 .. v23}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 244
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        _transition = \"\""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    }"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_2

    .line 254
    .end local v14    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v17    # "separator":Ljava/lang/String;
    .end local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    override def enterStartState(): Unit = {"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        getState().Entry(this)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    }"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    def getOwner(): "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " = _owner"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    def getStates(): List["

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State] = List("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    const-string v17, ""

    .line 272
    .restart local v17    # "separator":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/smc/model/SmcMap;

    .line 274
    .local v9, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v10

    .line 276
    .local v10, "mapName":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/sf/smc/model/SmcState;

    .line 278
    .local v19, "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    const-string v17, ",\n"

    goto :goto_5

    .line 286
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "map":Lnet/sf/smc/model/SmcMap;
    .end local v10    # "mapName":Ljava/lang/String;
    .end local v19    # "state":Lnet/sf/smc/model/SmcState;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    )"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    def getTransitions(): List[String] = List("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    const-string v17, ""

    .line 293
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/sf/smc/model/SmcTransition;

    .line 295
    .restart local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        \""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 299
    const-string v17, ",\n"

    goto :goto_6

    .line 301
    .end local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    )"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 307
    .end local v17    # "separator":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 310
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "@serializable"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "class "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State(name: String, id: Int) {"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    private val _name = name"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    private val _id = id"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    def getName(): String = _name"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    override def toString(): String = _name"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    def Entry(context: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "): Unit = {}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    def Exit(context: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "): Unit = {}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 336
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_10
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/sf/smc/model/SmcTransition;

    .line 338
    .restart local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v21

    .line 341
    .local v21, "transName":Ljava/lang/String;
    const-string v23, "Default"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_10

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    def "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "(context: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sf/smc/model/SmcParameter;

    .line 351
    .local v13, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_8

    .line 355
    .end local v13    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "): Unit = {"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Default(context)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    }"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_7

    .line 369
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    .end local v21    # "transName":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    def Default(context: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "): Unit = {"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v23, v0

    if-ltz v23, :cond_13

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        if (context.getDebugFlag())"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            context.getDebugStream().println(\"TRANSITION   : Default\")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 382
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        throw new statemap.TransitionUndefinedException("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                \"State: \" + context.getState()._name +"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                \", Transition: \" + context.getTransition())"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    }"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "}"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 396
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/smc/model/SmcMap;

    .line 398
    .restart local v9    # "map":Lnet/sf/smc/model/SmcMap;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lnet/sf/smc/model/SmcMap;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_9

    .line 401
    .end local v9    # "map":Lnet/sf/smc/model/SmcMap;
    :cond_14
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcGuard;)V
    .locals 28
    .param p1, "guard"    # Lnet/sf/smc/model/SmcGuard;

    .prologue
    .line 832
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransition()Lnet/sf/smc/model/SmcTransition;

    move-result-object v25

    .line 833
    .local v25, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v25 .. v25}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v21

    .line 834
    .local v21, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v14

    .line 835
    .local v14, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v14}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v5

    .line 836
    .local v5, "context":Ljava/lang/String;
    invoke-virtual {v14}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v15

    .line 837
    .local v15, "mapName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v22

    .line 838
    .local v22, "stateName":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v23

    .line 839
    .local v23, "transName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v24

    .line 840
    .local v24, "transType":Lnet/sf/smc/model/SmcElement$TransType;
    const/4 v13, 0x0

    .line 844
    .local v13, "loopbackFlag":Z
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getEndState()Ljava/lang/String;

    move-result-object v6

    .line 845
    .local v6, "endStateName":Ljava/lang/String;
    const-string v7, ""

    .line 846
    .local v7, "fqEndStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPushState()Ljava/lang/String;

    move-result-object v19

    .line 847
    .local v19, "pushStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v4

    .line 848
    .local v4, "condition":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getActions()Ljava/util/List;

    move-result-object v3

    .line 849
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_4

    const/4 v8, 0x1

    .line 856
    .local v8, "hasActions":Z
    :goto_0
    sget-object v26, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_0

    const-string v26, "nil"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 860
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lnet/sf/smc/generator/SmcCodeGenerator;->scopeStateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 864
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Lnet/sf/smc/generator/SmcCodeGenerator;->scopeStateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 865
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lnet/sf/smc/generator/SmcCodeGenerator;->scopeStateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lnet/sf/smc/generator/SmcCodeGenerator;->isLoopback(Lnet/sf/smc/model/SmcElement$TransType;Ljava/lang/String;)Z

    move-result v13

    .line 873
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_7

    .line 875
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "        "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 879
    .local v10, "indent2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    move/from16 v26, v0

    if-nez v26, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_5

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    if ("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ") {"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 932
    :goto_1
    if-nez v8, :cond_9

    .line 934
    move-object v7, v6

    .line 956
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 963
    sget-object v26, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_1

    if-nez v13, :cond_3

    .line 966
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "if (context.getDebugFlag())"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    context.getDebugStream().println("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\"BEFORE EXIT     : "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ".Exit(fsm)\")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 978
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context.getState().Exit(context)"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "if (context.getDebugFlag())"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    context.getDebugStream().println("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\"AFTER EXIT      : "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ".Exit(fsm)\")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 994
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v26, v0

    if-ltz v26, :cond_c

    .line 996
    invoke-virtual/range {v25 .. v25}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v16

    .line 1001
    .local v16, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "if (context.getDebugFlag())"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    context.getDebugStream().println("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\"ENTER TRANSITION: "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(C)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const/16 v27, 0x28

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(C)V

    .line 1012
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v20, ""

    .line 1013
    .local v20, "sep":Ljava/lang/String;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1017
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1014
    const-string v20, ", "

    goto :goto_3

    .line 849
    .end local v8    # "hasActions":Z
    .end local v10    # "indent2":Ljava/lang/String;
    .end local v16    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v20    # "sep":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 888
    .restart local v8    # "hasActions":Z
    .restart local v10    # "indent2":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_6

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    else if ("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ") {"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 902
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    else {"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 909
    .end local v10    # "indent2":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_8

    .line 912
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

    move-result-object v10

    .restart local v10    # "indent2":Ljava/lang/String;
    goto/16 :goto_1

    .line 917
    .end local v10    # "indent2":Ljava/lang/String;
    :cond_8
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "        "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 919
    .restart local v10    # "indent2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    if ("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ") {"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 942
    :cond_9
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_a

    .line 944
    const-string v7, "endState"

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "val "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, " = context.getState()"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 953
    :cond_a
    move-object v7, v6

    goto/16 :goto_2

    .line 1019
    .restart local v16    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v20    # "sep":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ")\")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1023
    .end local v16    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v20    # "sep":Ljava/lang/String;
    :cond_c
    if-nez v8, :cond_f

    .line 1025
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_d

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "// No actions."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1031
    :cond_d
    move-object v11, v10

    .line 1078
    .local v11, "indent3":Ljava/lang/String;
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v26, v0

    if-ltz v26, :cond_13

    .line 1080
    invoke-virtual/range {v25 .. v25}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v16

    .line 1085
    .restart local v16    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "if (context.getDebugFlag())"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    context.getDebugStream().println("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\"EXIT TRANSITION : "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(C)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const/16 v27, 0x28

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(C)V

    .line 1096
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v20, ""

    .line 1097
    .restart local v20    # "sep":Ljava/lang/String;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1101
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1098
    const-string v20, ", "

    goto :goto_5

    .line 1037
    .end local v11    # "indent3":Ljava/lang/String;
    .end local v16    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v20    # "sep":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context.clearState()"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v26, v0

    if-nez v26, :cond_10

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "try {"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1050
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1057
    .restart local v11    # "indent3":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1058
    .local v12, "indent4":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v11, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1060
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 1062
    .local v2, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_7

    .line 1054
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "indent3":Ljava/lang/String;
    .end local v12    # "indent4":Ljava/lang/String;
    :cond_10
    move-object v11, v10

    .restart local v11    # "indent3":Ljava/lang/String;
    goto :goto_6

    .line 1065
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "indent4":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iput-object v12, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1069
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v26, v0

    if-nez v26, :cond_e

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const/16 v27, 0x7d

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(C)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "finally {"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1103
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "indent4":Ljava/lang/String;
    .restart local v16    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v20    # "sep":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ")\")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1110
    .end local v16    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v17    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v20    # "sep":Ljava/lang/String;
    :cond_13
    sget-object v26, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1e

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_14

    if-nez v13, :cond_1e

    .line 1113
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context.setState("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1180
    :cond_15
    :goto_8
    sget-object v26, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_16

    if-eqz v13, :cond_17

    :cond_16
    sget-object v26, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 1184
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_18

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "if (context.getDebugFlag())"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    context.getDebugStream().println("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\"BEFORE ENTRY    : "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ".Entry(fsm)\")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1196
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context.getState().Entry(context)"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_19

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "if (context.getDebugFlag())"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    context.getDebugStream().println("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\"AFTER ENTRY     : "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ".Entry(fsm)\")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1216
    :cond_19
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v26, v0

    if-nez v26, :cond_1a

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const/16 v27, 0x7d

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(C)V

    .line 1224
    :cond_1a
    sget-object v26, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1c

    const-string v26, "nil"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_1c

    .line 1228
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPopArgs()Ljava/lang/String;

    move-result-object v18

    .line 1230
    .local v18, "popArgs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_1b

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1241
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1249
    .end local v18    # "popArgs":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1d

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    }"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1255
    :cond_1d
    return-void

    .line 1118
    :cond_1e
    sget-object v26, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_23

    .line 1123
    if-eqz v13, :cond_1f

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_20

    .line 1125
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context.setState("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1133
    :cond_20
    if-nez v13, :cond_22

    .line 1135
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_21

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "if (context.getDebugFlag())"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    context.getDebugStream().println("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\"BEFORE ENTRY    : "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ".Entry(fsm)\")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1148
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context.getState().Entry(context)"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1151
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_22

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "if (context.getDebugFlag())"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "    context.getDebugStream().println("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "\"AFTER ENTRY     : "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ".Entry(fsm)\")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1165
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context.pushState("

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1170
    :cond_23
    sget-object v26, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_15

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v26, v0

    const-string v27, "context.popState()"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public visit(Lnet/sf/smc/model/SmcMap;)V
    .locals 15
    .param p1, "map"    # Lnet/sf/smc/model/SmcMap;

    .prologue
    .line 411
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v2

    .line 412
    .local v2, "defaultState":Lnet/sf/smc/model/SmcState;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "context":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "mapName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v8

    .line 418
    .local v8, "states":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcState;>;"
    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v3

    .line 430
    .local v3, "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_0
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "private class "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 431
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 432
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "_Default(name: String, id: Int) extends "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 433
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 434
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "State(name, id) {"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    const-string v13, "    "

    iput-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 438
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/smc/model/SmcTransition;

    .line 440
    .local v9, "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v9, p0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 425
    .end local v3    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    goto :goto_0

    .line 445
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-boolean v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 447
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v0

    .line 454
    .local v0, "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13}, Ljava/io/PrintStream;->println()V

    .line 455
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "    def getTransitions(): Map[String, Int] = Map("

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 459
    const-string v6, ""

    .line 460
    .local v6, "sep":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sf/smc/model/SmcTransition;

    .line 462
    .local v12, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v11

    .line 466
    .local v11, "transName":Ljava/lang/String;
    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 469
    const/4 v10, 0x2

    .line 477
    .local v10, "transDefinition":I
    :goto_3
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "        \""

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 479
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 480
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "\" -> "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 481
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v10}, Ljava/io/PrintStream;->print(I)V

    .line 482
    const-string v6, ","

    goto :goto_2

    .line 474
    .end local v10    # "transDefinition":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "transDefinition":I
    goto :goto_3

    .line 484
    .end local v10    # "transDefinition":I
    .end local v11    # "transName":Ljava/lang/String;
    .end local v12    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_3
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13}, Ljava/io/PrintStream;->println()V

    .line 485
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "    )"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13}, Ljava/io/PrintStream;->println()V

    .line 490
    .end local v0    # "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v6    # "sep":Ljava/lang/String;
    :cond_4
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "}"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/smc/model/SmcState;

    .line 496
    .local v7, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v7, p0}, Lnet/sf/smc/model/SmcState;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_4

    .line 500
    .end local v7    # "state":Lnet/sf/smc/model/SmcState;
    :cond_5
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13}, Ljava/io/PrintStream;->println()V

    .line 501
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "private object "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 502
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 503
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, " {"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/smc/model/SmcState;

    .line 508
    .restart local v7    # "state":Lnet/sf/smc/model/SmcState;
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "    val "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 509
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v7}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 510
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, " = new "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 511
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 512
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v14, 0x5f

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(C)V

    .line 513
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v7}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 514
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "(\""

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 515
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 516
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(C)V

    .line 517
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v7}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 518
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "\", "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 519
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcMap;->getNextStateId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(I)V

    .line 520
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 524
    .end local v7    # "state":Lnet/sf/smc/model/SmcState;
    :cond_6
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "    val Default = new "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 525
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 526
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "_Default(\""

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 527
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 528
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, ".Default\", -1)"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v14, "}"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v13}, Ljava/io/PrintStream;->println()V

    .line 534
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcParameter;)V
    .locals 2
    .param p1, "parameter"    # Lnet/sf/smc/model/SmcParameter;

    .prologue
    .line 1317
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcParameter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcState;)V
    .locals 21
    .param p1, "state"    # Lnet/sf/smc/model/SmcState;

    .prologue
    .line 543
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v11

    .line 544
    .local v11, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, "context":Ljava/lang/String;
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v8

    .line 546
    .local v8, "fsmClassName":Ljava/lang/String;
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v12

    .line 547
    .local v12, "mapName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 551
    .local v14, "stateName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "private class "

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const/16 v20, 0x5f

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(C)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "(name: String, id: Int) extends "

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "_Default(name, id) {"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v3

    .line 563
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_1

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "    override def Entry (context: "

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "): Unit = {"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "        val ctxt = context.getOwner()"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V

    .line 575
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 576
    .local v10, "indent2":Ljava/lang/String;
    const-string v19, "        "

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 577
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 579
    .local v2, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 582
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_0
    move-object/from16 v0, p0

    iput-object v10, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "    }"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 588
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "indent2":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v3

    .line 589
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_3

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "    override def Exit (context: "

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "): Unit = {"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "        val ctxt: "

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, " = context.getOwner()"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V

    .line 603
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 604
    .restart local v10    # "indent2":Ljava/lang/String;
    const-string v19, "        "

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 605
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 607
    .restart local v2    # "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 611
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "    }"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 615
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "indent2":Ljava/lang/String;
    :cond_3
    const-string v19, "    "

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 616
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/sf/smc/model/SmcTransition;

    .line 618
    .local v18, "transition":Lnet/sf/smc/model/SmcTransition;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 623
    .end local v18    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 625
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v4

    .line 627
    .local v4, "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v15

    .line 629
    .local v15, "stateTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v6

    .line 636
    .local v6, "defaultState":Lnet/sf/smc/model/SmcState;
    if-eqz v6, :cond_5

    .line 638
    invoke-virtual {v6}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v7

    .line 649
    .local v7, "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "    override def getTransitions(): Map[String, Int] = Map("

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 654
    const-string v13, ""

    .line 655
    .local v13, "sep":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/sf/smc/model/SmcTransition;

    .line 657
    .restart local v18    # "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v18 .. v18}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v17

    .line 661
    .local v17, "transName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 664
    const/16 v16, 0x1

    .line 679
    .local v16, "transDefinition":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "        \""

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "\" -> "

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 684
    const-string v13, ","

    goto :goto_4

    .line 643
    .end local v7    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v13    # "sep":Ljava/lang/String;
    .end local v16    # "transDefinition":I
    .end local v17    # "transName":Ljava/lang/String;
    .end local v18    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    goto :goto_3

    .line 668
    .restart local v13    # "sep":Ljava/lang/String;
    .restart local v17    # "transName":Ljava/lang/String;
    .restart local v18    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_6
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 671
    const/16 v16, 0x2

    .restart local v16    # "transDefinition":I
    goto :goto_5

    .line 676
    .end local v16    # "transDefinition":I
    :cond_7
    const/16 v16, 0x0

    .restart local v16    # "transDefinition":I
    goto :goto_5

    .line 686
    .end local v16    # "transDefinition":I
    .end local v17    # "transName":Ljava/lang/String;
    .end local v18    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "    )"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V

    .line 692
    .end local v4    # "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v6    # "defaultState":Lnet/sf/smc/model/SmcState;
    .end local v7    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v13    # "sep":Ljava/lang/String;
    .end local v15    # "stateTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    const-string v20, "}"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcTransition;)V
    .locals 19
    .param p1, "transition"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 703
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v14

    .line 704
    .local v14, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v14}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v8

    .line 705
    .local v8, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "fsmClassName":Ljava/lang/String;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, "context":Ljava/lang/String;
    invoke-virtual {v8}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v9

    .line 708
    .local v9, "mapName":Ljava/lang/String;
    invoke-virtual {v14}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 709
    .local v15, "stateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v16

    .line 710
    .local v16, "transName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v13

    .line 712
    .local v13, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getGuards()Ljava/util/List;

    move-result-object v6

    .line 713
    .local v6, "guards":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v10, 0x0

    .line 718
    .local v10, "nullCondition":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintStream;->println()V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "override def "

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "(context: "

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 727
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sf/smc/model/SmcParameter;

    .line 729
    .local v12, "parameter":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 732
    .end local v12    # "parameter":Lnet/sf/smc/model/SmcParameter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "): Unit = {"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->hasCtxtReference()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "    "

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "val ctxt: "

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, " = context.getOwner()"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintStream;->println()V

    .line 749
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v17, v0

    if-ltz v17, :cond_2

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "    if (context.getDebugFlag())"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "        context.getDebugStream().println("

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "\"LEAVING STATE   : "

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(C)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "\")"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 764
    .local v4, "git":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    .line 765
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    .line 766
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 769
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/smc/model/SmcGuard;

    .line 772
    .local v5, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v5}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    .line 774
    const/4 v10, 0x1

    .line 777
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lnet/sf/smc/model/SmcGuard;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 767
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    goto :goto_1

    .line 784
    .end local v5    # "guard":Lnet/sf/smc/model/SmcGuard;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    move/from16 v17, v0

    if-lez v17, :cond_8

    if-nez v10, :cond_8

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "    }"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 792
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "    else {"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "        super."

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "(context"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 802
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcParameter;

    .line 804
    .local v11, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 808
    .end local v11    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "    }"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintStream;->println()V

    .line 820
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    const-string v18, "}"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 823
    return-void

    .line 814
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintStream;->println()V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintStream;->println()V

    goto :goto_3
.end method
