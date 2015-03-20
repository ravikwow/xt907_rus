.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_ActionStartError;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_ActionStartError"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 11950
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 11951
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 11941
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_ActionStartError;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    .line 11956
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 11958
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 11960
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : ParserMap.ActionStartError"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11963
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected LEFT_BRACE(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v4, 0x1

    .line 11968
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 11970
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 11972
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11974
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.ActionStartError"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11977
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 11979
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11981
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.ActionStartError.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11984
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 11985
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 11987
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11989
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.ActionStartError.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11992
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 11995
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 11997
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 11999
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.ActionStartError.LEFT_BRACE(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12002
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->createActionList()V

    .line 12003
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 12005
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 12007
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.ActionStartError.LEFT_BRACE(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12013
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ActionEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_ActionEnd;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 12014
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 12015
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ActionMap_Default$ActionMap_Start;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->pushState(Lstatemap/State;)V

    .line 12017
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 12019
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 12021
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.ActionStartError.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12024
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 12026
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 12028
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 12030
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.ActionStartError.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12034
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 12013
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ActionEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_ActionEnd;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 12014
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 12015
    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ActionMap_Default$ActionMap_Start;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->pushState(Lstatemap/State;)V

    .line 12017
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_7

    .line 12019
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 12021
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.ActionStartError.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12024
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 12026
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_8

    .line 12028
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 12030
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.ActionStartError.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12031
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method
