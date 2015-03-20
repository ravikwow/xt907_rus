.class final Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PushStart;
.super Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserMap_PushStart"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 9696
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    .line 9697
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 9687
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PushStart;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 5
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    const/4 v4, 0x1

    .line 9701
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 9703
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 9705
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 9707
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParserMap.PushStart"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9710
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 9712
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 9714
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParserMap.ParserMap.PushStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9717
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 9718
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 9720
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 9722
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParserMap.ParserMap.PushStart.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9725
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->clearState()V

    .line 9728
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 9730
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 9732
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "ENTER TRANSITION: ParserMap.ParserMap.PushStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9735
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_3
    const-string v2, "\"push\" must be followed by a \'/\'."

    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 9736
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 9738
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 9740
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "EXIT TRANSITION : ParserMap.ParserMap.PushStart.Default()"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9746
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_4
    sget-object v2, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PushError;

    invoke-virtual {p1, v2}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 9748
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 9750
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 9752
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE ENTRY    : ParserMap.ParserMap.PushStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9755
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_5
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 9757
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 9759
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 9761
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER ENTRY     : ParserMap.ParserMap.PushStart.Entry(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9765
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_6
    return-void

    .line 9746
    :catchall_0
    move-exception v2

    sget-object v3, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PushError;

    invoke-virtual {p1, v3}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 9748
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_7

    .line 9750
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 9752
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "BEFORE ENTRY    : ParserMap.ParserMap.PushStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9755
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_7
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 9757
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v3

    if-ne v3, v4, :cond_8

    .line 9759
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 9761
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v3, "AFTER ENTRY     : ParserMap.ParserMap.PushStart.Entry(context)"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9762
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

    .line 9771
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 9773
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 9775
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : ParserMap.PushStart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9778
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 9780
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 9782
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "BEFORE EXIT     : ParserMap.ParserMap.PushStart.Exit(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9785
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 9786
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 9788
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 9790
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "AFTER EXIT      : ParserMap.ParserMap.PushStart.Exit(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9793
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    sget-object v1, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushMap:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default$ParserMap_PushMap;

    invoke-virtual {p1, v1}, Lnet/sf/smc/parser/SmcParserContext;->setState(Lstatemap/State;)V

    .line 9795
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 9797
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 9799
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "BEFORE ENTRY    : ParserMap.ParserMap.PushStart.Entry(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9802
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_3
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Entry(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 9804
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 9806
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 9808
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "AFTER ENTRY     : ParserMap.ParserMap.PushStart.Entry(context)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9811
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_4
    return-void
.end method
