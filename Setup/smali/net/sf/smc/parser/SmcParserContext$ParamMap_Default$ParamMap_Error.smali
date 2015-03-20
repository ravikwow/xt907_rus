.class final Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default$ParamMap_Error;
.super Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParamMap_Error"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 13213
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default;-><init>(Ljava/lang/String;I)V

    .line 13214
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcParserContext$1;

    .prologue
    .line 13204
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default$ParamMap_Error;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected Entry(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    .line 13218
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 13220
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    const-string v1, "("

    const-string v2, ")"

    invoke-virtual {v0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->setRawMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 13221
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->clearParameter()V

    .line 13222
    return-void
.end method

.method protected Exit(Lnet/sf/smc/parser/SmcParserContext;)V
    .locals 1
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;

    .prologue
    .line 13227
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 13229
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->setCookedMode()V

    .line 13230
    return-void
.end method

.method protected SOURCE(Lnet/sf/smc/parser/SmcParserContext;Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcParserContext;
    .param p2, "token"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    const/4 v3, 0x1

    .line 13235
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getOwner()Lnet/sf/smc/parser/SmcParser;

    move-result-object v0

    .line 13237
    .local v0, "ctxt":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 13239
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 13241
    .local v1, "str":Ljava/io/PrintStream;
    const-string v2, "LEAVING STATE   : ParamMap.Error"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13244
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_0
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 13246
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 13248
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "BEFORE EXIT     : ParamMap.ParamMap.Error.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13251
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcParserContext;->getState()Lnet/sf/smc/parser/SmcParserContext$SmcParserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;->Exit(Lnet/sf/smc/parser/SmcParserContext;)V

    .line 13252
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 13254
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 13256
    .restart local v1    # "str":Ljava/io/PrintStream;
    const-string v2, "AFTER EXIT      : ParamMap.ParamMap.Error.Exit(context)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13259
    .end local v1    # "str":Ljava/io/PrintStream;
    :cond_2
    invoke-virtual {p1}, Lstatemap/FSMContext;->popState()V

    .line 13261
    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcParser;->getParamList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext;->paramsError(Ljava/util/List;I)V

    .line 13264
    return-void
.end method
