.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushStart;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_PushStart"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 6487
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 6488
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 6478
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushStart;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    const/4 v4, 0x1

    .line 6492
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 6494
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 6496
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6498
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.PushStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6501
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6502
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 6504
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6506
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.PushStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6509
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 6512
    :try_start_0
    const-string v2, "\"push\" must be followed by a \'/\'."

    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6516
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 6518
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6520
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.PushStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6523
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushError;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 6524
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6526
    return-void

    .line 6516
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 6518
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6520
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : ParserMap.ParserMap.PushStart.Default()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6523
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushError;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 6524
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    throw v2
.end method

.method protected LEFT_PAREN(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v2, 0x1

    .line 6532
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 6534
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 6536
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : ParserMap.PushStart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6539
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6540
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 6542
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 6544
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: ParserMap.ParserMap.PushStart.LEFT_PAREN(SmcLexer.Token token)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6547
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 6549
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 6551
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : ParserMap.ParserMap.PushStart.LEFT_PAREN(SmcLexer.Token token)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6554
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushMap:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushMap;

    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 6555
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6556
    return-void
.end method
