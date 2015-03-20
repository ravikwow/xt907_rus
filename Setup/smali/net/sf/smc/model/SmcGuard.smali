.class public final Lnet/sf/smc/model/SmcGuard;
.super Lnet/sf/smc/model/SmcElement;
.source "SmcGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/smc/model/SmcGuard$1;
    }
.end annotation


# instance fields
.field private _actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;"
        }
    .end annotation
.end field

.field private _condition:Ljava/lang/String;

.field private _endState:Ljava/lang/String;

.field private _popArgs:Ljava/lang/String;

.field private _pushState:Ljava/lang/String;

.field private _transType:Lnet/sf/smc/model/SmcElement$TransType;

.field private _transition:Lnet/sf/smc/model/SmcTransition;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILnet/sf/smc/model/SmcTransition;)V
    .locals 1
    .param p1, "cond"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "transition"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 114
    invoke-virtual {p3}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/sf/smc/model/SmcElement;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-object p3, p0, Lnet/sf/smc/model/SmcGuard;->_transition:Lnet/sf/smc/model/SmcTransition;

    .line 117
    iput-object p1, p0, Lnet/sf/smc/model/SmcGuard;->_condition:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_endState:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_pushState:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_actions:Ljava/util/List;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_popArgs:Ljava/lang/String;

    .line 122
    return-void
.end method

.method private _hasActions()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 416
    const/4 v2, 0x0

    .line 418
    .local v2, "retcode":Z
    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_actions:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 423
    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 424
    .local v1, "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcAction;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-ne v4, v3, :cond_1

    if-nez v2, :cond_1

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcAction;

    .line 428
    .local v0, "action":Lnet/sf/smc/model/SmcAction;
    invoke-virtual {v0}, Lnet/sf/smc/model/SmcAction;->isEmptyStateStack()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 432
    .end local v0    # "action":Lnet/sf/smc/model/SmcAction;
    .end local v1    # "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcAction;>;"
    :cond_1
    return v2
.end method

.method private _scopeStateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "mapName"    # Ljava/lang/String;

    .prologue
    .line 391
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 393
    .local v1, "retval":Ljava/io/StringWriter;
    const-string v2, "::"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 394
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 396
    invoke-virtual {v1, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 397
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1, p1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 407
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 402
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 403
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V

    .line 404
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Lnet/sf/smc/model/SmcVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lnet/sf/smc/model/SmcVisitor;

    .prologue
    .line 141
    invoke-virtual {p1, p0}, Lnet/sf/smc/model/SmcVisitor;->visit(Lnet/sf/smc/model/SmcGuard;)V

    .line 142
    return-void
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_actions:Ljava/util/List;

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_condition:Ljava/lang/String;

    return-object v0
.end method

.method public getEndState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_endState:Ljava/lang/String;

    return-object v0
.end method

.method public getPopArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_popArgs:Ljava/lang/String;

    return-object v0
.end method

.method public getPushState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_pushState:Ljava/lang/String;

    return-object v0
.end method

.method public getTransType()Lnet/sf/smc/model/SmcElement$TransType;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_transType:Lnet/sf/smc/model/SmcElement$TransType;

    return-object v0
.end method

.method public getTransition()Lnet/sf/smc/model/SmcTransition;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_transition:Lnet/sf/smc/model/SmcTransition;

    return-object v0
.end method

.method public hasCtxtReference()Z
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 232
    .local v0, "retcode":Z
    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_condition:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_condition:Ljava/lang/String;

    const-string v2, "ctxt "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_condition:Ljava/lang/String;

    const-string v2, "ctxt."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_condition:Ljava/lang/String;

    const-string v2, "ctxt->"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_condition:Ljava/lang/String;

    const-string v2, "ctxt:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lnet/sf/smc/model/SmcGuard;->_hasActions()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_transType:Lnet/sf/smc/model/SmcElement$TransType;

    sget-object v2, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_popArgs:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_popArgs:Ljava/lang/String;

    const-string v2, "ctxt "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_popArgs:Ljava/lang/String;

    const-string v2, "ctxt."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_popArgs:Ljava/lang/String;

    const-string v2, "ctxt->"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lnet/sf/smc/model/SmcGuard;->_popArgs:Ljava/lang/String;

    const-string v2, "ctxt:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 245
    :cond_1
    const/4 v0, 0x1

    .line 248
    :cond_2
    return v0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/sf/smc/model/SmcGuard;->_actions:Ljava/util/List;

    .line 316
    return-void
.end method

.method public setEndState(Ljava/lang/String;)V
    .locals 0
    .param p1, "endState"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lnet/sf/smc/model/SmcGuard;->_endState:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setPopArgs(Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lnet/sf/smc/model/SmcGuard;->_popArgs:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setPushState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lnet/sf/smc/model/SmcGuard;->_pushState:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setTransType(Lnet/sf/smc/model/SmcElement$TransType;)V
    .locals 0
    .param p1, "transType"    # Lnet/sf/smc/model/SmcElement$TransType;

    .prologue
    .line 274
    iput-object p1, p0, Lnet/sf/smc/model/SmcGuard;->_transType:Lnet/sf/smc/model/SmcElement$TransType;

    .line 275
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 330
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 331
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 333
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v4, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_condition:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 337
    const-string v4, " ["

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_condition:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    :cond_0
    sget-object v4, Lnet/sf/smc/model/SmcGuard$1;->$SwitchMap$net$sf$smc$model$SmcElement$TransType:[I

    iget-object v5, p0, Lnet/sf/smc/model/SmcGuard;->_transType:Lnet/sf/smc/model/SmcElement$TransType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 358
    :goto_0
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_endState:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_transType:Lnet/sf/smc/model/SmcElement$TransType;

    sget-object v5, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    if-ne v4, v5, :cond_1

    .line 363
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    const-string v4, " push("

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_pushState:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    :cond_1
    const-string v4, " {"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 372
    iget-object v4, p0, Lnet/sf/smc/model/SmcGuard;->_actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcAction;

    .line 374
    .local v0, "action":Lnet/sf/smc/model/SmcAction;
    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 376
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 345
    .end local v0    # "action":Lnet/sf/smc/model/SmcAction;
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_0
    const-string v4, " not set"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :pswitch_1
    const-string v4, " set"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :pswitch_2
    const-string v4, " pop"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
