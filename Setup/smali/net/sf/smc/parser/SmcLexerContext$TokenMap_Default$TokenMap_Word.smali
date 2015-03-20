.class final Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Word;
.super Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TokenMap_Word"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 1401
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;-><init>(Ljava/lang/String;I)V

    .line 1402
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 1392
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Word;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1406
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1408
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1410
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1412
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1416
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1417
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1420
    :try_start_0
    const-string v2, "Unknown token"

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcLexer;->badToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1425
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1427
    return-void

    .line 1424
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1425
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected EOL(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1432
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1434
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1436
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1438
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.EOL()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1442
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1443
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1446
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1451
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1453
    return-void

    .line 1450
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1451
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected alpha(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1458
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1460
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1462
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1464
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Word.alpha()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1467
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 1469
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1472
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1478
    return-void

    .line 1476
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected asterisk(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1483
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1485
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1487
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1489
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.asterisk()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1493
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1494
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1497
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1498
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1503
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1505
    return-void

    .line 1502
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1503
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected colon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1511
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1513
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1515
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : TokenMap.Word.colon()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1519
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1520
    sget-object v1, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Scope:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Scope;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1521
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1522
    return-void
.end method

.method protected comma(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1527
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1529
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1531
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1533
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.comma()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1537
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1538
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1541
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1542
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1547
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1549
    return-void

    .line 1546
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1547
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected digit(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1554
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1556
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1558
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1560
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Word.digit()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1563
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 1565
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1568
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1574
    return-void

    .line 1572
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected dollar(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1579
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1581
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1583
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1585
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.dollar()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1589
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1590
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1593
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1594
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1599
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1601
    return-void

    .line 1598
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1599
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected equal(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1606
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1608
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1610
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1612
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.equal()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1616
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1617
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1620
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1621
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1626
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1628
    return-void

    .line 1625
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1626
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected left_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1633
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1635
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1637
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1639
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.left_brace()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1643
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1644
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1647
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1648
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1653
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1655
    return-void

    .line 1652
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1653
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected left_bracket(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1660
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1662
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1664
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1666
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.left_bracket()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1670
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1671
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1674
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1675
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1680
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1682
    return-void

    .line 1679
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1680
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected left_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1687
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1689
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1691
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1693
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.left_paren()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1697
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1698
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1701
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1702
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1707
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1709
    return-void

    .line 1706
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1707
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected period(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1714
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1716
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1718
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1720
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Word.period()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1723
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 1725
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1728
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1734
    return-void

    .line 1732
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected right_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1739
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1741
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1743
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1745
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.right_brace()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1749
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1750
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1753
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1754
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1759
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1761
    return-void

    .line 1758
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1759
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected right_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1766
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1768
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1770
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1772
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.right_paren()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1776
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1777
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1780
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1781
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1786
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1788
    return-void

    .line 1785
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1786
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected semicolon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1793
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1795
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1797
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1799
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.semicolon()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1803
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1804
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1807
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1808
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1813
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1815
    return-void

    .line 1812
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1813
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected slash(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1820
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1822
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1824
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1826
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.slash()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1830
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1831
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1834
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1835
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1839
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1840
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1842
    return-void

    .line 1839
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1840
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected underscore(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1847
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1849
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1851
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1853
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Word.underscore()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1856
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 1858
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1861
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1867
    return-void

    .line 1865
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected whitespace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1872
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1874
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1876
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1878
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Word.whitespace()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1882
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1883
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1886
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1891
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1893
    return-void

    .line 1890
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1891
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method
