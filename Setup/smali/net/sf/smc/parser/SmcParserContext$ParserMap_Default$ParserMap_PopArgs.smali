.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PopArgs;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_PopArgs"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 11379
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 11380
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 11370
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PopArgs;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected COMMA(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v2, 0x1

    .line 11385
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 11387
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11389
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : ParserMap.PopArgs"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11392
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 11394
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11396
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "BEFORE EXIT     : ParserMap.ParserMap.PopArgs.Exit(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11399
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 11400
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 11402
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11404
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "AFTER EXIT      : ParserMap.ParserMap.PopArgs.Exit(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11407
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopArgsEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PopArgsEnd;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 11409
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 11411
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11413
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "BEFORE ENTRY    : ParserMap.ParserMap.PopArgs.Entry(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11416
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 11418
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 11420
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11422
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "AFTER ENTRY     : ParserMap.ParserMap.PopArgs.Entry(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11425
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_4
    return-void
.end method

.method protected Default(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    const/4 v4, 0x1

    .line 11430
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 11432
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 11434
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11436
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.PopArgs"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11439
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 11441
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11443
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.PopArgs.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11446
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 11447
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 11449
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11451
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.PopArgs.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11454
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 11457
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 11459
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11461
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.PopArgs.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11464
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    const-string v2, "Pop transition missing closing paren."

    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 11465
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 11467
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11469
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.PopArgs.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11475
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PopError;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 11477
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 11479
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11481
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.PopArgs.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11484
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 11486
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 11488
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11490
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.PopArgs.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11494
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 11475
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PopError;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 11477
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_7

    .line 11479
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11481
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.PopArgs.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11484
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 11486
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_8

    .line 11488
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11490
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.PopArgs.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11491
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method

.method protected RIGHT_PAREN(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v2, 0x1

    .line 11500
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 11502
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11504
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : ParserMap.PopArgs"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11507
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 11509
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11511
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "BEFORE EXIT     : ParserMap.ParserMap.PopArgs.Exit(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11514
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 11515
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 11517
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11519
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "AFTER EXIT      : ParserMap.ParserMap.PopArgs.Exit(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11522
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ActionStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_ActionStart;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 11524
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 11526
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11528
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "BEFORE ENTRY    : ParserMap.ParserMap.PopArgs.Entry(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11531
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 11533
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 11535
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11537
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "AFTER ENTRY     : ParserMap.ParserMap.PopArgs.Entry(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11540
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_4
    return-void
.end method
