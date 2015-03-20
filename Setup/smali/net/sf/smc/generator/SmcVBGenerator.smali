.class public final Lnet/sf/smc/generator/SmcVBGenerator;
.super Lnet/sf/smc/generator/SmcCodeGenerator;
.source "SmcVBGenerator.java"


# direct methods
.method public constructor <init>(Lnet/sf/smc/generator/SmcOptions;)V
    .locals 1
    .param p1, "options"    # Lnet/sf/smc/generator/SmcOptions;

    .prologue
    .line 79
    const-string v0, "vb"

    invoke-direct {p0, p1, v0}, Lnet/sf/smc/generator/SmcCodeGenerator;-><init>(Lnet/sf/smc/generator/SmcOptions;Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public visit(Lnet/sf/smc/model/SmcAction;)V
    .locals 9
    .param p1, "action"    # Lnet/sf/smc/model/SmcAction;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1855
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1856
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->getArguments()Ljava/util/List;

    move-result-object v1

    .line 1864
    .local v1, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isEmptyStateStack()Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 1868
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v6, "context.EmptyStateStack()"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1902
    :goto_0
    return-void

    .line 1874
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isStatic()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1876
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v6, "ctxt."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1878
    :cond_1
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcAction;->isProperty()Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 1881
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1883
    .local v0, "arg":Ljava/lang/String;
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1884
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1888
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1890
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v4, ""

    .line 1891
    .local v4, "sep":Ljava/lang/String;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-ne v5, v7, :cond_3

    .line 1894
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1895
    iget-object v6, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1892
    const-string v4, ", "

    goto :goto_1

    .line 1898
    :cond_3
    iget-object v5, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public visit(Lnet/sf/smc/model/SmcFSM;)V
    .locals 25
    .param p1, "fsm"    # Lnet/sf/smc/model/SmcFSM;

    .prologue
    .line 96
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getSource()Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, "rawSource":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getPackage()Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "context":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "fsmClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getStartState()Ljava/lang/String;

    move-result-object v18

    .line 101
    .local v18, "startState":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v11

    .line 112
    .local v11, "maps":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcMap;>;"
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 120
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_genericFlag:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Imports System.Collections"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getImports()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 135
    .local v6, "imp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Imports "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "imp":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Imports System.Collections.Generic"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Imports System.Runtime.Serialization"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 150
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_5

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Namespace "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 155
    const-string v23, "    "

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 160
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "<Serializable()> "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 167
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Public NotInheritable Class "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Inherits statemap.FSMContext"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Implements ISerializable"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'------------------------------------------------------------"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \' Member data"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \' The associated application class instance."

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Private _owner As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 208
    :cond_8
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

    const-string v24, "    \'------------------------------------------------------------"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \' Shared data"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \' State instance array. "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Used to deserialize."

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Private Shared ReadOnly _States() As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State = _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        {"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 228
    const-string v17, " _"

    .line 229
    .local v17, "separator":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/smc/model/SmcMap;

    .line 231
    .local v9, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "mapName":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/sf/smc/model/SmcState;

    .line 237
    .local v19, "state":Lnet/sf/smc/model/SmcState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const/16 v24, 0x2e

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(C)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 244
    const-string v17, ", _"

    goto :goto_2

    .line 248
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "map":Lnet/sf/smc/model/SmcMap;
    .end local v10    # "mapName":Ljava/lang/String;
    .end local v19    # "state":Lnet/sf/smc/model/SmcState;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, " _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        }"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 255
    .end local v17    # "separator":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'------------------------------------------------------------"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \' Properties"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 263
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

    const-string v24, "    Public Property State() As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Get"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            If state_ Is Nothing _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            Then"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                Throw "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "New statemap.StateUndefinedException()"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            End If"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            Return state_"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        End Get"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Set(ByVal state As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            state_ = state"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        End Set"

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

    const-string v24, "    End Property"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Public Property Owner() As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

    const-string v24, "        Get"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            Return _owner"

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

    const-string v24, "        End Get"

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

    const-string v24, "        Set(ByVal owner As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            If owner Is Nothing _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            Then"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                Throw New NullReferenceException"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            End If"

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            _owner = owner"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        End Set"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Property"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

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

    const-string v24, "    Public ReadOnly Property States() As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State()"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Get"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            Return _States"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        End Get"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Property"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 353
    :cond_c
    const-string v23, "::"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .local v8, "index":I
    if-ltz v8, :cond_e

    .line 355
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v24, v8, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 366
    .local v22, "vbState":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'------------------------------------------------------------"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \' Member methods"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Public Sub New(ByRef owner As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        MyBase.New("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        _owner = owner"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Public Overrides Sub EnterStartState()"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        State.Entry(Me)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 402
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v21

    .line 403
    .local v21, "transitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/sf/smc/model/SmcTransition;

    .line 406
    .local v20, "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "Default"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Public Sub "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v14

    .line 415
    .local v14, "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v17, ""

    .line 416
    .restart local v17    # "separator":Ljava/lang/String;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 420
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 417
    const-string v17, ", "

    goto :goto_5

    .line 361
    .end local v14    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v17    # "separator":Ljava/lang/String;
    .end local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    .end local v21    # "transitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v22    # "vbState":Ljava/lang/String;
    :cond_e
    move-object/from16 v22, v18

    .restart local v22    # "vbState":Ljava/lang/String;
    goto/16 :goto_3

    .line 422
    .restart local v14    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v17    # "separator":Ljava/lang/String;
    .restart local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    .restart local v21    # "transitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_syncFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        SyncLock Me"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "            "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 441
    .local v7, "indent2":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "transition_ = \""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State."

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "(Me"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 451
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sf/smc/model/SmcParameter;

    .line 453
    .local v13, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 436
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "indent2":Ljava/lang/String;
    .end local v13    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_10
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "        "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "indent2":Ljava/lang/String;
    goto/16 :goto_6

    .line 456
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "transition_ = \"\""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_syncFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

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

    const-string v24, "        End SyncLock"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 468
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_4

    .line 476
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "indent2":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v17    # "separator":Ljava/lang/String;
    .end local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

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

    const-string v24, "    Public Function ValueOf("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "ByVal stateId As Integer) As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Return _States(stateId)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Function"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

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

    const-string v24, "    Private Sub GetObjectData("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "ByVal info As SerializationInfo, _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                              "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "ByVal context As StreamingContext) _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Implements ISerializable.GetObjectData"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Dim stackSize As Integer = 0"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 508
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

    const-string v24, "        Dim index As Integer"

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

    const-string v24, "        Dim it As IEnumerator"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        If Not IsNothing(stateStack_) _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Then"

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

    const-string v24, "            stackSize = stateStack_.Count"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            it = stateStack_.GetEnumerator()"

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

    const-string v24, "        End If"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "info.AddValue(\"stackSize\", stackSize)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        index = 0"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        While index < stackSize"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            it.MoveNext()"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            info.AddValue( _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "String.Concat(\"stackItem\", index), _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                              it.Current.Id)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            index += 1"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        End While"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        info.AddValue(\"state\", state_.Id)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

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

    const-string v24, "    Private Sub New("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "ByVal info As SerializationInfo, _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "ByVal context As StreamingContext)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        MyBase.New(Nothing)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

    const-string v24, "        Dim stackSize As Integer"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Dim stateId As Integer"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        stackSize = "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "info.GetInt32(\"stackSize\")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        If stackSize > 0 _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Then"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            Dim index As Integer"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

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

    const-string v24, "            stateStack_ = New Stack()"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            index = stackSize - 1"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            While index >= 0"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                stateId = _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                    info.GetInt32( _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                        "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "String.Concat(\"stackItem\", index))"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                    "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "stateStack_.Push(_States(stateId))"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "                    index -= 1"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            End While"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        End If"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        stateId = info.GetInt32(\"state\")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        state_ = _States(stateId)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 629
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "End Class"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Public MustInherit Class "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "State"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Inherits statemap.State"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'------------------------------------------------------------"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \' Properties"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Public MustOverride ReadOnly "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "Property Transitions() As IDictionary"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_genericFlag:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "(Of String, Integer)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 662
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 666
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'------------------------------------------------------------"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \' Member methods"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    \'"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Protected Sub New("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "ByVal name As String, ByVal id As Integer)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        MyBase.New(name, id)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Public Overridable Sub Entry("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "ByRef context As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Public Overridable Sub Exit_("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "ByRef context As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 702
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/sf/smc/model/SmcTransition;

    .line 705
    .restart local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "Default"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_17

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Public Overridable Sub "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "(ByRef context As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {v20 .. v20}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sf/smc/model/SmcParameter;

    .line 716
    .restart local v13    # "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_9

    .line 720
    .end local v13    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Default_(context)"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_8

    .line 741
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v20    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    Public Overridable Sub Default_("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "ByRef context As "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 748
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v23, v0

    if-ltz v23, :cond_1a

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "#If TRACE Then"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Trace.WriteLine("

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "\"TRANSITION   : Default\")"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "#End If"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 758
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "        Throw "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "New statemap.TransitionUndefinedException( _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "            String.Concat(\"State: \", _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "               context.State.Name, _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "               \", Transition: \", _"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "               context.GetTransition()))"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "    End Sub"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "End Class"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 780
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/smc/model/SmcMap;

    .line 782
    .restart local v9    # "map":Lnet/sf/smc/model/SmcMap;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lnet/sf/smc/model/SmcMap;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_a

    .line 787
    .end local v9    # "map":Lnet/sf/smc/model/SmcMap;
    :cond_1b
    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1c

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v23, v0

    const-string v24, "End Namespace"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 793
    :cond_1c
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcGuard;)V
    .locals 27
    .param p1, "guard"    # Lnet/sf/smc/model/SmcGuard;

    .prologue
    .line 1423
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransition()Lnet/sf/smc/model/SmcTransition;

    move-result-object v24

    .line 1424
    .local v24, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v19

    .line 1425
    .local v19, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v12

    .line 1426
    .local v12, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v5

    .line 1427
    .local v5, "context":Ljava/lang/String;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1428
    .local v13, "mapName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v20

    .line 1429
    .local v20, "stateName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1430
    .local v22, "transName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v23

    .line 1431
    .local v23, "transType":Lnet/sf/smc/model/SmcElement$TransType;
    const/4 v11, 0x0

    .line 1436
    .local v11, "loopbackFlag":Z
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getEndState()Ljava/lang/String;

    move-result-object v6

    .line 1437
    .local v6, "endStateName":Ljava/lang/String;
    const-string v7, ""

    .line 1438
    .local v7, "fqEndStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPushState()Ljava/lang/String;

    move-result-object v17

    .line 1439
    .local v17, "pushStateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v4

    .line 1440
    .local v4, "condition":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getActions()Ljava/util/List;

    move-result-object v3

    .line 1447
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

    .line 1451
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lnet/sf/smc/generator/SmcCodeGenerator;->scopeStateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1454
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lnet/sf/smc/generator/SmcCodeGenerator;->scopeStateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1455
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lnet/sf/smc/generator/SmcCodeGenerator;->scopeStateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1457
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lnet/sf/smc/generator/SmcCodeGenerator;->isLoopback(Lnet/sf/smc/model/SmcElement$TransType;Ljava/lang/String;)Z

    move-result v11

    .line 1463
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 1465
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "            "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1469
    .local v9, "indent1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    move/from16 v25, v0

    if-nez v25, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_4

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        If "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, " _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1530
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_8

    .line 1532
    move-object v7, v6

    .line 1561
    :goto_1
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_1

    if-nez v11, :cond_3

    .line 1564
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#If TRACE Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Trace.WriteLine( _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    \"BEFORE EXIT     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ".Exit_(context)\")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#End If"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1577
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.State.Exit_(context)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1580
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#If TRACE Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Trace.WriteLine( _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    \"AFTER EXIT      : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ".Exit_(context)\")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#End If"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1594
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    if-ltz v25, :cond_b

    .line 1596
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v14

    .line 1601
    .local v14, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#If TRACE Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Trace.WriteLine( _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    \"ENTER TRANSITION: "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1611
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v18, ""

    .line 1612
    .local v18, "sep":Ljava/lang/String;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1616
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1613
    const-string v18, ", "

    goto :goto_2

    .line 1480
    .end local v14    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v18    # "sep":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_5

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        ElseIf "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, " _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1496
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        Else"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1505
    .end local v9    # "indent1":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_7

    .line 1508
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

    .restart local v9    # "indent1":Ljava/lang/String;
    goto/16 :goto_0

    .line 1513
    .end local v9    # "indent1":Ljava/lang/String;
    :cond_7
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "            "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1514
    .restart local v9    # "indent1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        If "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, " _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "        Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1540
    :cond_8
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_9

    .line 1542
    const-string v7, "endState"

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Dim "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, " As "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "State = context.State"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_1

    .line 1553
    :cond_9
    move-object v7, v6

    goto/16 :goto_1

    .line 1619
    .restart local v14    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v18    # "sep":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")\")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#End If"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1625
    .end local v14    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v18    # "sep":Ljava/lang/String;
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_e

    .line 1627
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_c

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "\' No actions."

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1633
    :cond_c
    move-object v10, v9

    .line 1678
    .local v10, "indent2":Ljava/lang/String;
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    if-ltz v25, :cond_12

    .line 1680
    invoke-virtual/range {v24 .. v24}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v14

    .line 1685
    .restart local v14    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#If TRACE Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Trace.WriteLine( _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    \"EXIT TRANSITION : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1695
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v18, ""

    .line 1696
    .restart local v18    # "sep":Ljava/lang/String;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1700
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnet/sf/smc/model/SmcParameter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1697
    const-string v18, ", "

    goto :goto_4

    .line 1641
    .end local v10    # "indent2":Ljava/lang/String;
    .end local v14    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v18    # "sep":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.ClearState()"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1649
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v25, v0

    if-nez v25, :cond_f

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Try"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1654
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

    .line 1661
    .restart local v10    # "indent2":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1662
    .local v21, "tempIndent":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v10, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1663
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcAction;

    .line 1665
    .local v2, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_6

    .line 1658
    .end local v2    # "action":Lnet/sf/smc/model/SmcAction;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "indent2":Ljava/lang/String;
    .end local v21    # "tempIndent":Ljava/lang/String;
    :cond_f
    move-object v10, v9

    .restart local v10    # "indent2":Ljava/lang/String;
    goto :goto_5

    .line 1667
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v21    # "tempIndent":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 1671
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v25, v0

    if-nez v25, :cond_d

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Finally"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1703
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v21    # "tempIndent":Ljava/lang/String;
    .restart local v14    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .restart local v18    # "sep":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")\")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#End If"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1712
    .end local v14    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v18    # "sep":Ljava/lang/String;
    :cond_12
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_13

    if-nez v11, :cond_1c

    .line 1715
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.State = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1780
    :cond_14
    :goto_7
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_15

    if-eqz v11, :cond_16

    :cond_15
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 1784
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_17

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#If TRACE Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Trace.WriteLine( _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    \"BEFORE ENTRY    : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ".Entry(context)\")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#End If"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1797
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.State.Entry(context)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1800
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_18

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#If TRACE Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Trace.WriteLine( _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    \"AFTER ENTRY     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ".Entry(context)\")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#End If"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1818
    :cond_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    move/from16 v25, v0

    if-nez v25, :cond_19

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "End Try"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1826
    :cond_19
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1b

    const-string v25, "nil"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_1b

    .line 1830
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcGuard;->getPopArgs()Ljava/lang/String;

    move-result-object v16

    .line 1832
    .local v16, "popArgs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context."

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1839
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_1a

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1843
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1846
    .end local v16    # "popArgs":Ljava/lang/String;
    :cond_1b
    return-void

    .line 1719
    :cond_1c
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_21

    .line 1724
    if-eqz v11, :cond_1d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_1e

    .line 1726
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.State = "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1733
    :cond_1e
    if-nez v11, :cond_20

    .line 1735
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1f

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#If TRACE Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Trace.WriteLine( _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    \"BEFORE ENTRY    : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ".Entry(context)\")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#End If"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1748
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.State.Entry(context)"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1751
    move-object/from16 v0, p0

    iget v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_20

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#If TRACE Then"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "Trace.WriteLine( _"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "    \"AFTER ENTRY     : "

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ".Entry(context)\")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "#End If"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/PrintStream;->println()V

    .line 1765
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.PushState("

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1770
    :cond_21
    sget-object v25, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v25, v0

    const-string v26, "context.PopState()"

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public visit(Lnet/sf/smc/model/SmcMap;)V
    .locals 14
    .param p1, "map"    # Lnet/sf/smc/model/SmcMap;

    .prologue
    .line 803
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v2

    .line 804
    .local v2, "defaultState":Lnet/sf/smc/model/SmcState;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "context":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, "mapName":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v8

    .line 811
    .local v8, "states":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcState;>;"
    if-eqz v2, :cond_0

    .line 813
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v3

    .line 824
    .local v3, "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_0
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 825
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 826
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "Public MustInherit Class "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 827
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 829
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 830
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \'------------------------------------------------------------"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 832
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 833
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \' Shared data"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 834
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 835
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 839
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/smc/model/SmcState;

    .line 841
    .local v6, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v6}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 843
    .local v7, "stateName":Ljava/lang/String;
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 844
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    Public Shared "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 845
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v6}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 846
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, " As "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 847
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 848
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v13, 0x5f

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(C)V

    .line 849
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 850
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, " = _"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 851
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 852
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "        New "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 853
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 854
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v13, 0x5f

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(C)V

    .line 855
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 856
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "(\""

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 857
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 858
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(C)V

    .line 859
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 860
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "\", "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 861
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getNextStateId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(I)V

    .line 862
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 818
    .end local v3    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "state":Lnet/sf/smc/model/SmcState;
    .end local v7    # "stateName":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    goto/16 :goto_0

    .line 866
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 867
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    Private Shared Default_ As "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 868
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 869
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "_Default = _"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 870
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 871
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "        New "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 872
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 873
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "_Default(\""

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 874
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 875
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, ".Default\", -1)"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 876
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 879
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 880
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "End Class"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 881
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 884
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 885
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "Public Class "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 886
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 887
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "_Default"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 888
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 889
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    Inherits "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 890
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 891
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "State"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 892
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 895
    iget-boolean v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 897
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 898
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \'------------------------------------------------------------"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 900
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 901
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \' Properties"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 902
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 903
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 904
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 905
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 906
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    Public Overrides ReadOnly "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 907
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "Property Transitions() As IDictionary"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 909
    iget-boolean v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_genericFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 911
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "(of String, Integer)"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 913
    :cond_2
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 914
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 915
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "        Get"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 916
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 917
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 918
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "            Return _transitions"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 919
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 920
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "        End Get"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 921
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 922
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    End Property"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 923
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 926
    :cond_3
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 927
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \'------------------------------------------------------------"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 929
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 930
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \' Member methods"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 931
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 932
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 933
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 936
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 937
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    Public Sub New("

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 938
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "ByVal name As String, ByVal id As Integer)"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 940
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 941
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 942
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "        MyBase.New(name, id)"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 943
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 944
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    End Sub"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 945
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 948
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcTransition;

    .line 950
    .local v11, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v11, p0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 954
    .end local v11    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_4
    iget-boolean v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 956
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v0

    .line 961
    .local v0, "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 962
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 963
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \'------------------------------------------------------------"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 965
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 966
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \' Shared data"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 967
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 968
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 969
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 970
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 971
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 972
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "Private Shared _transitions As IDictionary"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 974
    iget-boolean v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_genericFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 976
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "(Of String, Integer)"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 978
    :cond_5
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 979
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 980
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 981
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    Shared Sub New()"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 982
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 983
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 984
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "        "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 985
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "_transitions = New "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 986
    iget-boolean v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_genericFlag:Z

    if-nez v12, :cond_6

    .line 988
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "Hashtable"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 994
    :goto_3
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "()"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/smc/model/SmcTransition;

    .line 999
    .restart local v11    # "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v11}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1003
    .local v10, "transName":Ljava/lang/String;
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 1006
    const/4 v9, 0x2

    .line 1014
    .local v9, "transDefinition":I
    :goto_5
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1015
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "        "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1016
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "_transitions.Add(\""

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1017
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1018
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "\", "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1019
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12, v9}, Ljava/io/PrintStream;->print(I)V

    .line 1020
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 992
    .end local v9    # "transDefinition":I
    .end local v10    # "transName":Ljava/lang/String;
    .end local v11    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_6
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "Dictionary(Of String, Integer)"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 1011
    .restart local v10    # "transName":Ljava/lang/String;
    .restart local v11    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "transDefinition":I
    goto :goto_5

    .line 1022
    .end local v9    # "transDefinition":I
    .end local v10    # "transName":Ljava/lang/String;
    .end local v11    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_8
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 1023
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1024
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "    End Sub"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1027
    .end local v0    # "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_9
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    iget-object v13, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1028
    iget-object v12, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v13, "End Class"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1032
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/smc/model/SmcState;

    .line 1034
    .restart local v6    # "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v6, p0}, Lnet/sf/smc/model/SmcState;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_6

    .line 1037
    .end local v6    # "state":Lnet/sf/smc/model/SmcState;
    :cond_a
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcParameter;)V
    .locals 2
    .param p1, "parameter"    # Lnet/sf/smc/model/SmcParameter;

    .prologue
    .line 1912
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v1, "ByVal "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1913
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v1, " As "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcParameter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1917
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcState;)V
    .locals 17
    .param p1, "state"    # Lnet/sf/smc/model/SmcState;

    .prologue
    .line 1046
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v9

    .line 1047
    .local v9, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v4

    .line 1048
    .local v4, "context":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v7

    .line 1049
    .local v7, "fsmClassName":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1053
    .local v10, "mapName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1054
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "Public NotInheritable Class "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const/16 v16, 0x5f

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(C)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    Inherits "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "_Default"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1066
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1068
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    \'------------------------------------------------------------"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    \' Properties"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    \'"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1076
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    Public Overrides ReadOnly "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "Property Transitions() As IDictionary"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_genericFlag:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1082
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "(Of String, Integer)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1084
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1085
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        Get"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1088
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "            Return _transitions"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        End Get"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    End Property"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1097
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    \'------------------------------------------------------------"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    \' Member methods"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    \'"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1107
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    Public Sub New("

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "ByVal name As String, ByVal id As Integer)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1112
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        MyBase.New(name, id)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    End Sub"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v2

    .line 1120
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 1122
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1123
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    Public Overrides Sub Entry("

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "ByRef context As "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1131
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "       Dim ctxt As "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, " = context.Owner"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcAction;

    .line 1140
    .local v1, "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 1143
    .end local v1    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    End Sub"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1147
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v2

    .line 1148
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_5

    .line 1150
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    Public Overrides Sub Exit("

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "ByRef context As "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1159
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        Dim ctxt As "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, " = context.Owner"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1166
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcAction;

    .line 1168
    .restart local v1    # "action":Lnet/sf/smc/model/SmcAction;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lnet/sf/smc/model/SmcAction;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 1171
    .end local v1    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    End Sub"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1176
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/sf/smc/model/SmcTransition;

    .line 1178
    .local v14, "transition":Lnet/sf/smc/model/SmcTransition;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 1183
    .end local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 1185
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getTransitions()Ljava/util/List;

    move-result-object v3

    .line 1187
    .local v3, "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v11

    .line 1190
    .local v11, "stateTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v5

    .line 1196
    .local v5, "defaultState":Lnet/sf/smc/model/SmcState;
    if-eqz v5, :cond_8

    .line 1198
    invoke-virtual {v5}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v6

    .line 1207
    .local v6, "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1208
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    \'------------------------------------------------------------"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    \' Shared data"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    \'"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1216
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "Private Shared _transitions As IDictionary"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1220
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_genericFlag:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1222
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "(Of String, Integer)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1224
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1225
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1226
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    Shared Sub New()"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1229
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "_transitions = New "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1232
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_genericFlag:Z

    if-nez v15, :cond_9

    .line 1234
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "Hashtable"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1240
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "()"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1243
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/sf/smc/model/SmcTransition;

    .line 1245
    .restart local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v14}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1249
    .local v13, "transName":Ljava/lang/String;
    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 1252
    const/4 v12, 0x1

    .line 1267
    .local v12, "transDefinition":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "_transitions.Add(\""

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "\", "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v12}, Ljava/io/PrintStream;->print(I)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1203
    .end local v6    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v12    # "transDefinition":I
    .end local v13    # "transName":Ljava/lang/String;
    .end local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    goto/16 :goto_3

    .line 1238
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "Dictionary(Of String, Integer)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 1256
    .restart local v13    # "transName":Ljava/lang/String;
    .restart local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_a
    invoke-interface {v6, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 1259
    const/4 v12, 0x2

    .restart local v12    # "transDefinition":I
    goto :goto_6

    .line 1264
    .end local v12    # "transDefinition":I
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "transDefinition":I
    goto :goto_6

    .line 1276
    .end local v12    # "transDefinition":I
    .end local v13    # "transName":Ljava/lang/String;
    .end local v14    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1277
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    End Sub"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1281
    .end local v3    # "allTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v5    # "defaultState":Lnet/sf/smc/model/SmcState;
    .end local v6    # "defaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v11    # "stateTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "End Class"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1284
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcTransition;)V
    .locals 17
    .param p1, "transition"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 1293
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v12

    .line 1294
    .local v12, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v7

    .line 1295
    .local v7, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 1296
    .local v1, "context":Ljava/lang/String;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v2

    .line 1297
    .local v2, "fsmClassName":Ljava/lang/String;
    invoke-virtual {v7}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1298
    .local v8, "mapName":Ljava/lang/String;
    invoke-virtual {v12}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 1299
    .local v13, "stateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1300
    .local v14, "transName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v11

    .line 1302
    .local v11, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getGuards()Ljava/util/List;

    move-result-object v5

    .line 1303
    .local v5, "guards":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v9, 0x0

    .line 1308
    .local v9, "nullCondition":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1309
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    Public Overrides Sub "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1314
    const-string v15, "Default"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1316
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "Default_"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1323
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "(ByRef context As "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1328
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sf/smc/model/SmcParameter;

    .line 1330
    .local v10, "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_1

    .line 1320
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1333
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1337
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->hasCtxtReference()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1339
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        Dim ctxt As "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, " = context.Owner"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1346
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    if-ltz v15, :cond_3

    .line 1348
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "#If TRACE Then"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        Trace.WriteLine( _"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "            \"LEAVING STATE   : "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "\")"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "#End If"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1362
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1363
    .local v3, "git":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    .line 1364
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    .line 1365
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1368
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/smc/model/SmcGuard;

    .line 1371
    .local v4, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v4}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_4

    .line 1373
    const/4 v9, 0x1

    .line 1376
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lnet/sf/smc/model/SmcGuard;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1366
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    goto :goto_2

    .line 1383
    .end local v4    # "guard":Lnet/sf/smc/model/SmcGuard;
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    if-lez v15, :cond_8

    if-nez v9, :cond_8

    .line 1385
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 1386
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        Else"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "            MyBase."

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1391
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "(context"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1393
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sf/smc/model/SmcParameter;

    .line 1395
    .restart local v10    # "param":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v10}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 1399
    .end local v10    # "param":Lnet/sf/smc/model/SmcParameter;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        End If"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1411
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "    End Sub"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1414
    return-void

    .line 1404
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 1406
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    const-string v16, "        End If"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    goto :goto_4
.end method
