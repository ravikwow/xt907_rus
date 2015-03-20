.class public abstract Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
.super Lstatemap/State;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmcLexerState"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lstatemap/State;-><init>(Ljava/lang/String;I)V

    .line 370
    return-void
.end method


# virtual methods
.method protected Default(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 4
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 497
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 499
    invoke-virtual {p1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 502
    .local v0, "str":Ljava/io/PrintStream;
    const-string v1, "TRANSITION   : Default"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    .end local v0    # "str":Ljava/io/PrintStream;
    :cond_0
    new-instance v1, Lstatemap/TransitionUndefinedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v3

    invoke-virtual {v3}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lstatemap/FSMContext;->getTransition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lstatemap/TransitionUndefinedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected EOL(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 378
    return-void
.end method

.method protected Entry(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 372
    return-void
.end method

.method protected Exit(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 373
    return-void
.end method

.method protected alpha(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 383
    return-void
.end method

.method protected asterisk(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 388
    return-void
.end method

.method protected colon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 393
    return-void
.end method

.method protected comma(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 398
    return-void
.end method

.method protected commentDone(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 403
    return-void
.end method

.method protected digit(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 408
    return-void
.end method

.method protected dollar(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 413
    return-void
.end method

.method protected equal(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 418
    return-void
.end method

.method protected gt(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 423
    return-void
.end method

.method protected left_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 428
    return-void
.end method

.method protected left_bracket(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 433
    return-void
.end method

.method protected left_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 438
    return-void
.end method

.method protected lt(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 443
    return-void
.end method

.method protected percent(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 448
    return-void
.end method

.method protected period(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 453
    return-void
.end method

.method protected right_brace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 458
    return-void
.end method

.method protected right_paren(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 463
    return-void
.end method

.method protected semicolon(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 468
    return-void
.end method

.method protected slash(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 473
    return-void
.end method

.method protected sourceDone(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 478
    return-void
.end method

.method protected underscore(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 483
    return-void
.end method

.method protected unicode(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 488
    return-void
.end method

.method protected whitespace(Lnet/sf/smc/parser/SmcLexerContext;)V
    .locals 0
    .param p1, "context"    # Lnet/sf/smc/parser/SmcLexerContext;

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Default(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 493
    return-void
.end method
