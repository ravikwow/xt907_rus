.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_TransStart;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_TransStart"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 6792
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 6793
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 6783
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_TransStart;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    const/4 v4, 0x1

    .line 6797
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 6799
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 6801
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6803
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.TransStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6806
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 6808
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6810
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6813
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6814
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 6816
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6818
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6821
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 6824
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 6826
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6828
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.TransStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6831
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    const-string v2, "Expecting either a guard, \"push\", \"pop\", \"jump\" or end state."

    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 6832
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->createTransition(I)V

    .line 6833
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 6835
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6837
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.TransStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6843
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_TransStartError;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 6845
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 6847
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6849
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6852
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6854
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 6856
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6858
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6862
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 6843
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_TransStartError;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 6845
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_7

    .line 6847
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6849
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6852
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6854
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_8

    .line 6856
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6858
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6859
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method

.method protected JUMP(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v5, 0x1

    .line 6867
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 6869
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 6871
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6873
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.TransStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6876
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 6878
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6880
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6883
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6884
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 6886
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6888
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6891
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 6894
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 6896
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6898
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.TransStart.JUMP(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6901
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->createTransition(I)V

    .line 6902
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lnet/sf/smc/parser/SmcParser;->createGuard(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6903
    sget-object v2, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->setTransType(Lnet/sf/smc/model/SmcElement$TransType;)V

    .line 6904
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 6906
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6908
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.TransStart.JUMP(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6914
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->JumpStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_JumpStart;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 6916
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 6918
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6920
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6923
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6925
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_6

    .line 6927
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6929
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6933
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 6914
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->JumpStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_JumpStart;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 6916
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_7

    .line 6918
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6920
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6923
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6925
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_8

    .line 6927
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6929
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6930
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method

.method protected LEFT_BRACKET(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v4, 0x1

    .line 6938
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 6940
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 6942
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6944
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.TransStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6947
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 6949
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6951
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6954
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6955
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 6957
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6959
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6962
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 6965
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 6967
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6969
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.TransStart.LEFT_BRACKET(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6972
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->createTransition(I)V

    .line 6973
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 6975
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6977
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.TransStart.LEFT_BRACKET(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6983
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransGuard:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_TransGuard;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 6985
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 6987
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6989
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6992
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6994
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 6996
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6998
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7002
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 6983
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransGuard:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_TransGuard;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 6985
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_7

    .line 6987
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6989
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6992
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6994
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_8

    .line 6996
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6998
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6999
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method

.method protected LEFT_PAREN(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v2, 0x1

    .line 7008
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 7010
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 7012
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : ParserMap.TransStart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7015
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 7017
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 7019
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "BEFORE EXIT     : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7022
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7023
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 7025
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 7027
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "AFTER EXIT      : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7030
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransParams:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_TransParams;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 7031
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7032
    sget-object v1, Lnet/sf/smc/parser/SmcParserContext$ParamMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default$ParamMap_Start;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcParserContext;->pushState(Lstatemap/State;)V

    .line 7034
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 7036
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 7038
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7041
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7043
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 7045
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 7047
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7050
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_4
    return-void
.end method

.method protected POP(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v5, 0x1

    .line 7055
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 7057
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 7059
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7061
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.TransStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7064
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 7066
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7068
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7071
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7072
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 7074
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7076
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7079
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 7082
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 7084
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7086
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.TransStart.POP(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7089
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->createTransition(I)V

    .line 7090
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lnet/sf/smc/parser/SmcParser;->createGuard(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7091
    sget-object v2, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->setTransType(Lnet/sf/smc/model/SmcElement$TransType;)V

    .line 7092
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 7094
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7096
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.TransStart.POP(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7102
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PopStart;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 7104
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 7106
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7108
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7111
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7113
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_6

    .line 7115
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7117
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7121
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 7102
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PopStart;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 7104
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_7

    .line 7106
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7108
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7111
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7113
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_8

    .line 7115
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7117
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7118
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method

.method protected PUSH(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v5, 0x1

    .line 7126
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 7128
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 7130
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7132
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.TransStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7135
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 7137
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7139
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7142
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7143
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 7145
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7147
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7150
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 7153
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 7155
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7157
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.TransStart.PUSH(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7160
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->createTransition(I)V

    .line 7161
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lnet/sf/smc/parser/SmcParser;->createGuard(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7162
    sget-object v2, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->setTransType(Lnet/sf/smc/model/SmcElement$TransType;)V

    .line 7163
    const-string v2, "nil"

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->setEndState(Ljava/lang/String;)V

    .line 7164
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 7166
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7168
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.TransStart.PUSH(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7174
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PushStart;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 7176
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 7178
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7180
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7183
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7185
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_6

    .line 7187
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7189
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7193
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 7174
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PushStart;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 7176
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_7

    .line 7178
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7180
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7183
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7185
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_8

    .line 7187
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7189
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7190
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method

.method protected WORD(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 6
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v5, 0x1

    .line 7198
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 7200
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 7202
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7204
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.TransStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7207
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 7209
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7211
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7214
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7215
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 7217
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7219
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.TransStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7222
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 7225
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 7227
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7229
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.TransStart.WORD(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7232
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->createTransition(I)V

    .line 7233
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lnet/sf/smc/parser/SmcParser;->createGuard(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7234
    sget-object v2, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->setTransType(Lnet/sf/smc/model/SmcElement$TransType;)V

    .line 7235
    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->setEndState(Ljava/lang/String;)V

    .line 7236
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 7238
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7240
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.TransStart.WORD(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7246
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->SimpleTrans:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_SimpleTrans;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 7248
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 7250
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7252
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7255
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7257
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v5, :cond_6

    .line 7259
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7261
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7265
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 7246
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->SimpleTrans:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_SimpleTrans;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 7248
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_7

    .line 7250
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7252
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7255
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7257
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v5, :cond_8

    .line 7259
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7261
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.TransStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7262
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_8
    throw v2
.end method
