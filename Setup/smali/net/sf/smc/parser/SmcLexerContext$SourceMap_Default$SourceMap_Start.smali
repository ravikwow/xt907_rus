.class final Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default$SourceMap_Start;
.super Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SourceMap_Start"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 3050
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;-><init>(Ljava/lang/String;I)V

    .line 3051
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 3041
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default$SourceMap_Start;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3055
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 3057
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3059
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 3061
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : SourceMap.Start.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3065
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 3066
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 3069
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->addToToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3073
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$SourceMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default$SourceMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 3074
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 3076
    return-void

    .line 3073
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$SourceMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default$SourceMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 3074
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected percent(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3082
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3084
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3086
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.Start.percent()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3090
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 3091
    sget-object v1, Lnet/sf/smc/parser/SmcLexerContext$SourceMap;->SourceEnd:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default$SourceMap_SourceEnd;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 3092
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 3093
    return-void
.end method
