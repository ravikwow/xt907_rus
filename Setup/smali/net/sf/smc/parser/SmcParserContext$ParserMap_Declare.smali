.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_Declare;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_Declare"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 2136
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 2137
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 2127
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Declare;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    const/4 v4, 0x1

    .line 2157
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 2159
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2161
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2163
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.Declare"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2166
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 2167
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2169
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2171
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.Declare.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2174
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 2177
    :try_start_0
    const-string v2, "Missing name after %declare."

    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2183
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2185
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.Declare.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2188
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->StartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartError;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2189
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 2191
    return-void

    .line 2181
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 2183
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2185
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : ParserMap.ParserMap.Declare.Default()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2188
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->StartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartError;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2189
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    throw v2
.end method

.method protected Entry(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 2
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    .line 2141
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 2143
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    const-string v1, "\n\r\u000c"

    invoke-virtual {v0, v1}, Lnet/sf/smc/parser/SmcParser;->setRawMode(Ljava/lang/String;)V

    .line 2144
    return-void
.end method

.method protected Exit(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 1
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    .line 2149
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 2151
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->setCookedMode()V

    .line 2152
    return-void
.end method

.method protected SOURCE(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v4, 0x1

    .line 2196
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 2198
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2200
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2202
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.Declare"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2205
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 2206
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2208
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2210
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.Declare.SOURCE(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2213
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 2216
    :try_start_0
    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->addDeclare(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2222
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2224
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.Declare.SOURCE(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2227
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Start;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2228
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 2230
    return-void

    .line 2220
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 2222
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 2224
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : ParserMap.ParserMap.Declare.SOURCE(SmcLexer.Token token)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2227
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Start;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 2228
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    throw v2
.end method
