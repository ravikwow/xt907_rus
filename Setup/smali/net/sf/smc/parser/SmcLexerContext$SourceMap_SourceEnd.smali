.class final Lnet/sf/smc/parser/SmcLexerContext$SourceMap_SourceEnd;
.super Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SourceMap_SourceEnd"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 4604
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;-><init>(Ljava/lang/String;I)V

    .line 4605
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 4595
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_SourceEnd;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v4, 0x1

    .line 4609
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 4611
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 4613
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 4615
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : SourceMap.SourceEnd"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4617
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 4618
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 4620
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 4622
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: SourceMap.SourceEnd.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4625
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 4628
    :try_start_0
    const-string v2, "%"

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcLexer;->addToToken(Ljava/lang/String;)V

    .line 4629
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4633
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 4635
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 4637
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : SourceMap.SourceEnd.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4640
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$SourceMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Start;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 4641
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 4644
    return-void

    .line 4633
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 4635
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 4637
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : SourceMap.SourceEnd.Default()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4640
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$SourceMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Start;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 4641
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected percent(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v5, 0x1

    .line 4649
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 4651
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 4653
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 4655
    .local v2, "str":Ljava/io/PrintStream;
    const-string v3, "LEAVING STATE   : SourceMap.SourceEnd"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4657
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    .line 4658
    .local v1, "endState":Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 4660
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 4662
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "ENTER TRANSITION: SourceMap.SourceEnd.percent()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4665
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 4668
    :try_start_0
    const-string v3, "%"

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer;->addToToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4672
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 4674
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 4676
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : SourceMap.SourceEnd.percent()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4679
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 4682
    return-void

    .line 4672
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 4674
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v2

    .line 4676
    .restart local v2    # "str":Ljava/io/PrintStream;
    const-string v4, "EXIT TRANSITION : SourceMap.SourceEnd.percent()"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4679
    .end local v2    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    throw v3
.end method

.method protected right_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v4, 0x1

    .line 4687
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 4689
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 4691
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 4693
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : SourceMap.SourceEnd"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4695
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 4696
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 4698
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 4700
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: SourceMap.SourceEnd.right_brace()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4703
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 4706
    const/16 v2, 0x18

    :try_start_0
    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcLexer;->endToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4710
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 4712
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 4714
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : SourceMap.SourceEnd.right_brace()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4717
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lstatemap/FSMContext;->popState()V

    .line 4721
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->sourceDone()V

    .line 4722
    return-void

    .line 4710
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 4712
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 4714
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : SourceMap.SourceEnd.right_brace()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4717
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1}, Lstatemap/FSMContext;->popState()V

    throw v2
.end method
