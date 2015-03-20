.class final Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default$SourceMap_NeverUsed;
.super Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SourceMap_NeverUsed"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 3206
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;-><init>(Ljava/lang/String;I)V

    .line 3207
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/smc/parser/SmcLexerContext$1;

    .prologue
    .line 3197
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default$SourceMap_NeverUsed;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected EOL(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3212
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3214
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3216
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.EOL()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3220
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected alpha(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3226
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3228
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3230
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.alpha()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3234
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected asterisk(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3240
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3242
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3244
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.asterisk()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3248
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected colon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3254
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3256
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3258
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.colon()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3262
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected comma(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3268
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3270
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3272
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.comma()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3276
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected digit(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3282
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3284
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3286
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.digit()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3290
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected dollar(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3296
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3298
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3300
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.dollar()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3304
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected equal(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3310
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3312
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3314
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.equal()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3318
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected left_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3324
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3326
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3328
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.left_brace()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3332
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected left_bracket(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3338
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3340
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3342
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.left_bracket()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3346
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected left_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3352
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3354
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3356
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.left_paren()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3360
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected period(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3366
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3368
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3370
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.period()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3374
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected right_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3380
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3382
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3384
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.right_brace()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3388
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected right_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3394
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3396
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3398
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.right_paren()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3402
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected semicolon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3408
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3410
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3412
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.semicolon()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3416
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected slash(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3422
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3424
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3426
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.slash()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3430
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected underscore(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3436
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3438
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3440
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.underscore()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3444
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected unicode(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3450
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3452
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3454
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.unicode()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3458
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method protected whitespace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 3
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 3464
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3466
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 3468
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : SourceMap.NeverUsed.whitespace()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3472
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method
