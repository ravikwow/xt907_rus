.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgsEnd;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_PopArgsEnd"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 7734
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 7735
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 7725
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgsEnd;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Entry(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    .line 7739
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 7741
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    const-string v1, "("

    const-string v2, ")"

    invoke-virtual {v0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->setRawMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 7742
    return-void
.end method

.method protected Exit(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 1
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    .line 7747
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 7749
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->setCookedMode()V

    .line 7750
    return-void
.end method

.method protected SOURCE(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v4, 0x1

    .line 7755
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 7757
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 7759
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7761
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.PopArgsEnd"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7764
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7765
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 7767
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7769
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.PopArgsEnd.SOURCE(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7772
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->clearState()V

    .line 7775
    :try_start_0
    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/smc/parser/SmcParser;->setPopArgs(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7779
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 7781
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7783
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.PopArgsEnd.SOURCE(SmcLexer.Token token)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7786
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ActionStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStart;

    invoke-virtual {p1, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 7787
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 7789
    return-void

    .line 7779
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 7781
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 7783
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "EXIT TRANSITION : ParserMap.ParserMap.PopArgsEnd.SOURCE(SmcLexer.Token token)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7786
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ActionStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStart;

    invoke-virtual {p1, v3}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 7787
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    throw v2
.end method
