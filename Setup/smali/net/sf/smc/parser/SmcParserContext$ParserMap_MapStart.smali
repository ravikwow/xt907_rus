.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStart;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_MapStart"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 2768
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 2769
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 2759
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStart;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    const/4 v4, 0x1

    .line 2773
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 2775
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2777
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2779
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.MapStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2782
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 2783
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2785
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2787
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.MapStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2790
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 2793
    :try_start_0
    const-string v2, "Expecting %map."

    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2797
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2799
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2801
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.MapStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2804
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->MapStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStartError;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2805
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 2807
    return-void

    .line 2797
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 2799
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2801
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : ParserMap.ParserMap.MapStart.Default()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2804
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->MapStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStartError;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2805
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    throw v2
.end method

.method protected MAP_NAME(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v2, 0x1

    .line 2813
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 2815
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2817
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : ParserMap.MapStart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2820
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 2821
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2823
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2825
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: ParserMap.ParserMap.MapStart.MAP_NAME(SmcLexer.Token token)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2828
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2830
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2832
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : ParserMap.ParserMap.MapStart.MAP_NAME(SmcLexer.Token token)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2835
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->MapName:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapName;

    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2836
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 2837
    return-void
.end method
