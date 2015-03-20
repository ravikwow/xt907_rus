.class final Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Start;
.super Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
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
    .line 615
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;-><init>(Ljava/lang/String;I)V

    .line 616
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 606
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Start;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected EOL(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v2, 0x1

    .line 621
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 623
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 625
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 629
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 631
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: TokenMap.Start.EOL()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 636
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 638
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : TokenMap.Start.EOL()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method

.method protected alpha(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v4, 0x1

    .line 646
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 648
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 650
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 652
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 654
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 655
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 657
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 659
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: TokenMap.Start.alpha()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 662
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 665
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 666
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 672
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 674
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : TokenMap.Start.alpha()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 677
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Word;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 678
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 681
    return-void

    .line 670
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 672
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 674
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.alpha()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 677
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Word;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 678
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected colon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v4, 0x1

    .line 686
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 688
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 690
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 692
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 694
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 695
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 697
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 699
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: TokenMap.Start.colon()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 705
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 706
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 712
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 714
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : TokenMap.Start.colon()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 717
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Colon:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Colon;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 718
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 721
    return-void

    .line 710
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 712
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 714
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.colon()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 717
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Colon:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Colon;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 718
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected comma(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 726
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 728
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 730
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 732
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 734
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 735
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 737
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 739
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.comma()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 742
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 745
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 746
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 747
    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 753
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 755
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.comma()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 758
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 761
    return-void

    .line 751
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 753
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 755
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.comma()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 758
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected dollar(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 766
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 768
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 770
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 772
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 774
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 775
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 777
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 779
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.dollar()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 782
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 785
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 786
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 787
    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 793
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 795
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.dollar()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 798
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 801
    return-void

    .line 791
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 793
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 795
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.dollar()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 798
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected equal(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 806
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 808
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 810
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 812
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 814
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 815
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 817
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 819
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.equal()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 822
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 825
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 826
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 827
    const/16 v3, 0x1b

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 833
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 835
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.equal()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 838
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 841
    return-void

    .line 831
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 833
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 835
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.equal()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 838
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected left_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 846
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 848
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 850
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 852
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 854
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 855
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 857
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 859
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.left_brace()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 862
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 865
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 866
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 867
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 873
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 875
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.left_brace()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 878
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 881
    return-void

    .line 871
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 873
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 875
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.left_brace()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 878
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected left_bracket(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 886
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 888
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 890
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 892
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 894
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 895
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 897
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 899
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.left_bracket()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 902
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 905
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 906
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 907
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 913
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 915
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.left_bracket()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 918
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 921
    return-void

    .line 911
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 913
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 915
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.left_bracket()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 918
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected left_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 926
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 928
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 930
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 932
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 934
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 935
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 937
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 939
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.left_paren()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 942
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 945
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 946
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 947
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 953
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 955
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.left_paren()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 958
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 961
    return-void

    .line 951
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 953
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 955
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.left_paren()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 958
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected percent(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v4, 0x1

    .line 966
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 968
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 970
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 972
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 974
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 975
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 977
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 979
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: TokenMap.Start.percent()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 982
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 985
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 986
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 992
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 994
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : TokenMap.Start.percent()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->PercentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentStart;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 998
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1001
    return-void

    .line 990
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 992
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 994
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.percent()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->PercentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentStart;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 998
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected right_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 1006
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1008
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1010
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1012
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1014
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 1015
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1017
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1019
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.right_brace()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 1025
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 1026
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 1027
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1033
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1035
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.right_brace()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1038
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1041
    return-void

    .line 1031
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 1033
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1035
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.right_brace()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1038
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected right_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 1046
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1048
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1050
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1052
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1054
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 1055
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1057
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1059
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.right_paren()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1062
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 1065
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 1066
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 1067
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1073
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1075
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.right_paren()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1078
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1081
    return-void

    .line 1071
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 1073
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1075
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.right_paren()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1078
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected semicolon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 1086
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1088
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1090
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1092
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1094
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 1095
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1097
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1099
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.semicolon()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1102
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 1105
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 1106
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 1107
    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1113
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1115
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.semicolon()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1118
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1121
    return-void

    .line 1111
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 1113
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1115
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.semicolon()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1118
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected slash(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v2, 0x1

    .line 1127
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1129
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1131
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1133
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1134
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1136
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1138
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: TokenMap.Start.slash()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1141
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1143
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1145
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : TokenMap.Start.slash()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1148
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->CommentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_CommentStart;

    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1149
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1150
    return-void
.end method

.method protected underscore(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v4, 0x1

    .line 1155
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1157
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1159
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1161
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1163
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1164
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1166
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1168
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: TokenMap.Start.underscore()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1171
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 1174
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 1175
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1181
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1183
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : TokenMap.Start.underscore()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1186
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Word;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1187
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1190
    return-void

    .line 1179
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 1181
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1183
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.underscore()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1186
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Word;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1187
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected unicode(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 1195
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1197
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1199
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1201
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1203
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 1204
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1206
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1208
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: TokenMap.Start.unicode()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1211
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 1214
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 1215
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V

    .line 1216
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->outputChar()V

    .line 1217
    const-string v3, "Unknown character"

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->badToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1223
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1225
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : TokenMap.Start.unicode()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1228
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1231
    return-void

    .line 1221
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 1223
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 1225
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : TokenMap.Start.unicode()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1228
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected whitespace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v2, 0x1

    .line 1237
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1239
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1241
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : TokenMap.Start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1243
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1245
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1247
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: TokenMap.Start.whitespace()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1250
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1252
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1254
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : TokenMap.Start.whitespace()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1257
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method
