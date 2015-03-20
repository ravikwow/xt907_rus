.class final Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Error;
.super Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArgsMap_Error"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 9900
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Default;-><init>(Ljava/lang/String;I)V

    .line 9901
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 9891
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Error;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Entry(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    .line 9905
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 9907
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    const-string v1, "{"

    const-string v2, "}"

    invoke-virtual {v0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->setRawMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 9908
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->clearArguments()V

    .line 9909
    return-void
.end method

.method protected Exit(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 1
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    .line 9914
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 9916
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->setCookedMode()V

    .line 9917
    return-void
.end method

.method protected SOURCE(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v2, 0x1

    .line 9923
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 9925
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 9927
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "LEAVING STATE   : ArgsMap.Error"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9930
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 9931
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 9933
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 9935
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "ENTER TRANSITION: ArgsMap.ArgsMap.Error.SOURCE(SmcLexer.Token token)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9938
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 9940
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 9942
    .restart local v0    # "str":Ljava/io/PrintStream;
    const-string v1, "EXIT TRANSITION : ArgsMap.ArgsMap.Error.SOURCE(SmcLexer.Token token)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9945
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lstatemap/FSMContext;->popState()V

    .line 9947
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->argsError()V

    .line 9948
    return-void
.end method
