.class final Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Start;
.super Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OldCommentMap_Start"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 3537
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;-><init>(Ljava/lang/String;I)V

    .line 3538
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 3528
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Start;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected asterisk(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v2, 0x1

    .line 3543
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 3545
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3547
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : OldCommentMap.Start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3549
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 3550
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3552
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3554
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: OldCommentMap.Start.asterisk()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3557
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3559
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3561
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : OldCommentMap.Start.asterisk()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3564
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;->CommentEnd:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentEnd;

    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3565
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 3566
    return-void
.end method

.method protected slash(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v2, 0x1

    .line 3572
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 3574
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3576
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : OldCommentMap.Start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3578
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 3579
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3581
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3583
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: OldCommentMap.Start.slash()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3586
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3588
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3590
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : OldCommentMap.Start.slash()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3593
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;->CommentStart:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentStart;

    invoke-virtual {p1, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 3594
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 3595
    return-void
.end method
