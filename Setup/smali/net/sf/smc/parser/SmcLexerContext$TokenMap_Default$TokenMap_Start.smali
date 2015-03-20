.class final Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;
.super Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TokenMap_Start"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 578
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;-><init>(Ljava/lang/String;I)V

    .line 579
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 569
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected EOL(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 584
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 586
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 588
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : TokenMap.Start.EOL()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected alpha(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 597
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 599
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 601
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 603
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Start.alpha()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 608
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 611
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 612
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Word;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 617
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 619
    return-void

    .line 616
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Word;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 617
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected colon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 624
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 626
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 628
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 630
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Start.colon()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 635
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 638
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 639
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Colon:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Colon;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 644
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 646
    return-void

    .line 643
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Colon:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Colon;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 644
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected comma(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 651
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 653
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 655
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 657
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.comma()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 660
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 662
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 665
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 666
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 667
    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 673
    return-void

    .line 671
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected dollar(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 678
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 680
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 682
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 684
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.dollar()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 687
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 689
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 692
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 693
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 694
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 700
    return-void

    .line 698
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected equal(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 705
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 707
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 709
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 711
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.equal()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 716
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 719
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 720
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 721
    const/16 v3, 0x1b

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 727
    return-void

    .line 725
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected left_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 732
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 734
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 736
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 738
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.left_brace()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 741
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 743
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 746
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 747
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 748
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 754
    return-void

    .line 752
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected left_bracket(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 759
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 761
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 763
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 765
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.left_bracket()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 768
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 770
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 773
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 774
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 775
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 781
    return-void

    .line 779
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected left_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 786
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 788
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 790
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 792
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.left_paren()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 795
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 797
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 800
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 801
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 802
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 808
    return-void

    .line 806
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected percent(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 813
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 815
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 817
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 819
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Start.percent()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 823
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 824
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 827
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 828
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->PercentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_PercentStart;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 833
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 835
    return-void

    .line 832
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->PercentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_PercentStart;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 833
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected right_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 840
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 842
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 844
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 846
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.right_brace()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 849
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 851
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 854
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 855
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 856
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 862
    return-void

    .line 860
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected right_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 867
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 869
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 871
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 873
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.right_paren()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 876
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 878
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 881
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 882
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 883
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 889
    return-void

    .line 887
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected semicolon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 894
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 896
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 898
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 900
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.semicolon()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 903
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 905
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 908
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 909
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 910
    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 916
    return-void

    .line 914
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected slash(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 922
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 924
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 926
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : TokenMap.Start.slash()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 930
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 931
    sget-object v1, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->CommentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_CommentStart;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 932
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 933
    return-void
.end method

.method protected underscore(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 938
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 940
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 942
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 944
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Start.underscore()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 948
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 949
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 952
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 953
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Word;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 958
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 960
    return-void

    .line 957
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Word;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 958
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected unicode(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 965
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 967
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 969
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 971
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "TRANSITION   : TokenMap.Start.unicode()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 974
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 976
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 979
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 980
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 981
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->outputChar()V

    .line 982
    const-string v3, "Unknown character"

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->badToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 988
    return-void

    .line 986
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected whitespace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 994
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 996
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 998
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : TokenMap.Start.whitespace()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1002
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method
