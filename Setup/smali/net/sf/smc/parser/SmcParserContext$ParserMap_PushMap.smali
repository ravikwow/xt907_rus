.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushMap;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_PushMap"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 6688
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 6689
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 6679
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushMap;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    const/4 v4, 0x1

    .line 6693
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 6695
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 6697
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6699
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.PushMap"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6702
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6703
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 6705
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6707
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.PushMap.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6710
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 6713
    :try_start_0
    const-string v2, "Expecting a state name."

    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6717
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 6719
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6721
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.PushMap.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6724
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushError;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 6725
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6727
    return-void

    .line 6717
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 6719
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6721
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : ParserMap.ParserMap.PushMap.Default()"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6724
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushError;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 6725
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    throw v2
.end method

.method protected WORD(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v4, 0x1

    .line 6732
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 6734
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 6736
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6738
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.PushMap"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6741
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6742
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 6744
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6746
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.PushMap.WORD(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6749
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 6752
    :try_start_0
    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->setPushState(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6756
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 6758
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6760
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.PushMap.WORD(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6763
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushEnd;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 6764
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 6766
    return-void

    .line 6756
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 6758
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 6760
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : ParserMap.ParserMap.PushMap.WORD(SmcLexer.Token token)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6763
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushEnd;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 6764
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    throw v2
.end method
