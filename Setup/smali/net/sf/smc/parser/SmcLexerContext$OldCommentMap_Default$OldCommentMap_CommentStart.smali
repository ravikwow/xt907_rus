.class final Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default$OldCommentMap_CommentStart;
.super Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OldCommentMap_CommentStart"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 2489
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;-><init>(Ljava/lang/String;I)V

    .line 2490
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 2480
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default$OldCommentMap_CommentStart;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected asterisk(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 2495
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2497
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2499
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : OldCommentMap.CommentStart.asterisk()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2503
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    sget-object v1, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default$OldCommentMap_Start;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->pushState(Lstatemap/State;)V

    .line 2504
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 2505
    return-void
.end method

.method protected commentDone(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 2511
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2513
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2515
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : OldCommentMap.CommentStart.commentDone()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2519
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 2520
    sget-object v1, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default$OldCommentMap_Start;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 2521
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 2522
    return-void
.end method

.method protected slash(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 2528
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2530
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2532
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : OldCommentMap.CommentStart.slash()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2536
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    sget-object v1, Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default$NewCommentMap_Start;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->pushState(Lstatemap/State;)V

    .line 2537
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 2538
    return-void
.end method
