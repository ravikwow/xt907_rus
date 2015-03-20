.class final Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentEnd;
.super Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OldCommentMap_CommentEnd"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 3714
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;-><init>(Ljava/lang/String;I)V

    .line 3715
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 3705
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentEnd;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected asterisk(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v2, 0x1

    .line 3720
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 3722
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3724
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : OldCommentMap.CommentEnd"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3726
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3728
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3730
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: OldCommentMap.CommentEnd.asterisk()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3733
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3735
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3737
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : OldCommentMap.CommentEnd.asterisk()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3740
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    return-void
.end method

.method protected slash(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    const/4 v2, 0x1

    .line 3746
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 3748
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3750
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : OldCommentMap.CommentEnd"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3752
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 3753
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3755
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3757
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: OldCommentMap.CommentEnd.slash()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3760
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3762
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3764
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : OldCommentMap.CommentEnd.slash()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3767
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lstatemap/FSMContext;->popState()V

    .line 3769
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->commentDone()V

    .line 3770
    return-void
.end method
