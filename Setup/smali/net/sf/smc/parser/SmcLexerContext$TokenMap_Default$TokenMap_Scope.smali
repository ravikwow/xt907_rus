.class final Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Scope;
.super Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TokenMap_Scope"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 1910
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;-><init>(Ljava/lang/String;I)V

    .line 1911
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 1901
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Scope;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1915
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1917
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1919
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1921
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Scope.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1925
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1926
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1929
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1930
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V

    .line 1931
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->checkKeyword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1935
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1936
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1938
    return-void

    .line 1935
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1936
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method

.method protected colon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 1943
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getOwner()Lnet/sf/smc/parser/SmcLexer;

    move-result-object v0

    .line 1945
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcLexer;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1947
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1949
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "TRANSITION   : TokenMap.Scope.colon()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1953
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Exit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1954
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->clearState()V

    .line 1957
    :try_start_0
    const-string v2, "::"

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcLexer;->addToToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    sget-object v2, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Word;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1962
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 1964
    return-void

    .line 1961
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default$TokenMap_Word;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcLexerContext;->setState(Lstatemap/State;)V

    .line 1962
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    throw v2
.end method
