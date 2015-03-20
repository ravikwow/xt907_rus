.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_EntryStart;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_EntryStart"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 5822
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 5823
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 5813
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_EntryStart;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    const/4 v4, 0x1

    .line 5827
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 5829
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 5831
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5833
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.EntryStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5836
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 5838
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5840
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.EntryStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5843
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 5844
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 5846
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5848
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.EntryStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5851
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 5854
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 5856
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5858
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.EntryStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5861
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    const-string v2, "An opening brace is expected after Entry."

    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 5862
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 5864
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5866
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.EntryStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5872
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->StateStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_StateStartError;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 5874
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 5876
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5878
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.EntryStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5881
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 5883
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 5885
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5887
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.EntryStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5891
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 5872
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->StateStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_StateStartError;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 5874
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_7

    .line 5876
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5878
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.EntryStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5881
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 5883
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_8

    .line 5885
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5887
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.EntryStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5888
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method

.method protected LEFT_BRACE(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v4, 0x1

    .line 5896
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 5898
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 5900
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5902
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.EntryStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5905
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 5907
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5909
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.EntryStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5912
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 5913
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 5915
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5917
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.EntryStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5920
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 5923
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 5925
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5927
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.EntryStart.LEFT_BRACE(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5930
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->createActionList()V

    .line 5931
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 5933
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5935
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.EntryStart.LEFT_BRACE(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5941
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->EntryEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_EntryEnd;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 5942
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 5943
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ActionMap_Default$ActionMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->pushState(Lstatemap/State;)V

    .line 5945
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 5947
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5949
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.EntryStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5952
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 5954
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 5956
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5958
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.EntryStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5962
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 5941
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->EntryEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_EntryEnd;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 5942
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 5943
    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ActionMap_Default$ActionMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->pushState(Lstatemap/State;)V

    .line 5945
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_7

    .line 5947
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5949
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.EntryStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5952
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 5954
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_8

    .line 5956
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 5958
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.EntryStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5959
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method
