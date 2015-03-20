.class final Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default$NewCommentMap_Start;
.super Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewCommentMap_Start"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 2969
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default;-><init>(Ljava/lang/String;I)V

    .line 2970
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 2960
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default$NewCommentMap_Start;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected EOL(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 2975
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2977
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 2979
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : NewCommentMap.Start.EOL()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2983
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 2984
    invoke-virtual {p1}, Lstatemap/FSMContext;->popState()V

    .line 2986
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->commentDone()V

    .line 2987
    return-void
.end method
