.class public final Lnet/sf/smc/model/SmcMap;
.super Lnet/sf/smc/model/SmcElement;
.source "SmcMap.java"


# instance fields
.field private _defaultState:Lnet/sf/smc/model/SmcState;

.field private _fsm:Lnet/sf/smc/model/SmcFSM;

.field private _stateId:I

.field private _states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILnet/sf/smc/model/SmcFSM;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "fsm"    # Lnet/sf/smc/model/SmcFSM;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/model/SmcElement;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lnet/sf/smc/model/SmcMap;->_fsm:Lnet/sf/smc/model/SmcFSM;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/smc/model/SmcMap;->_stateId:I

    .line 78
    return-void
.end method


# virtual methods
.method public accept(Lnet/sf/smc/model/SmcVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lnet/sf/smc/model/SmcVisitor;

    .prologue
    .line 97
    invoke-virtual {p1, p0}, Lnet/sf/smc/model/SmcVisitor;->visit(Lnet/sf/smc/model/SmcMap;)V

    .line 98
    return-void
.end method

.method public addState(Lnet/sf/smc/model/SmcState;)V
    .locals 2
    .param p1, "state"    # Lnet/sf/smc/model/SmcState;

    .prologue
    .line 393
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iput-object p1, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    .line 403
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findState(Lnet/sf/smc/model/SmcState;)Z
    .locals 6
    .param p1, "state"    # Lnet/sf/smc/model/SmcState;

    .prologue
    const/4 v5, 0x1

    .line 139
    iget-object v3, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcState;>;"
    const/4 v1, 0x0

    .line 140
    .local v1, "retval":Z
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-ne v3, v5, :cond_1

    if-nez v1, :cond_1

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcState;

    .line 144
    .local v2, "state2":Lnet/sf/smc/model/SmcState;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 147
    const/4 v1, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "state2":Lnet/sf/smc/model/SmcState;
    :cond_1
    return v1
.end method

.method public getAllStates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    .local v0, "retval":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcState;>;"
    iget-object v1, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    return-object v0
.end method

.method public getDefaultState()Lnet/sf/smc/model/SmcState;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    return-object v0
.end method

.method public getFSM()Lnet/sf/smc/model/SmcFSM;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnet/sf/smc/model/SmcMap;->_fsm:Lnet/sf/smc/model/SmcFSM;

    return-object v0
.end method

.method public getNextStateId()I
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lnet/sf/smc/model/SmcMap;->_stateId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/smc/model/SmcMap;->_stateId:I

    return v0
.end method

.method public getStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v4, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    if-eqz v4, :cond_0

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    invoke-virtual {v4}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    .local v1, "retval":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_0
    iget-object v4, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcState;

    .line 252
    .local v2, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v3

    .line 253
    .local v3, "transList":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    new-instance v4, Lnet/sf/smc/model/SmcMap$1;

    invoke-direct {v4, p0}, Lnet/sf/smc/model/SmcMap$1;-><init>(Lnet/sf/smc/model/SmcMap;)V

    invoke-static {v3, v1, v4}, Lnet/sf/smc/model/SmcMap;->merge(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 245
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "retval":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v2    # "state":Lnet/sf/smc/model/SmcState;
    .end local v3    # "transList":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "retval":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    goto :goto_0

    .line 266
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method public getUndefinedDefaultTransitions()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v3, "retval":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    iget-object v6, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    if-nez v6, :cond_2

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v0, "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    :goto_0
    iget-object v6, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/smc/model/SmcState;

    .line 309
    .local v4, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v4}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/smc/model/SmcTransition;

    .line 314
    .local v5, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v5}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 320
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    .end local v0    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "state":Lnet/sf/smc/model/SmcState;
    .end local v5    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_2
    iget-object v6, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    invoke-virtual {v6}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v0

    .line 290
    .restart local v0    # "definedDefaultTransitions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    new-instance v6, Lnet/sf/smc/model/SmcMap$2;

    invoke-direct {v6, p0}, Lnet/sf/smc/model/SmcMap$2;-><init>(Lnet/sf/smc/model/SmcMap;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 325
    :cond_3
    return-object v3
.end method

.method public hasDefaultState()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasEntryActions()Z
    .locals 4

    .prologue
    .line 338
    iget-object v3, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcState;

    .line 340
    .local v2, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v0

    .line 341
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 343
    const/4 v3, 0x1

    .line 346
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    .end local v2    # "state":Lnet/sf/smc/model/SmcState;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasExitActions()Z
    .locals 4

    .prologue
    .line 359
    iget-object v3, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcState;

    .line 361
    .local v2, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    const/4 v3, 0x1

    .line 367
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    .end local v2    # "state":Lnet/sf/smc/model/SmcState;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isKnownState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "stateName"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v3, "default"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 168
    invoke-virtual {p0}, Lnet/sf/smc/model/SmcMap;->hasDefaultState()Z

    move-result v1

    .line 182
    .local v1, "retval":Z
    :cond_0
    return v1

    .line 172
    .end local v1    # "retval":Z
    :cond_1
    iget-object v3, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcState;>;"
    const/4 v1, 0x0

    .line 173
    .restart local v1    # "retval":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_0

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcState;

    .line 177
    .local v2, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcState;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%map "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "retval":Ljava/lang/String;
    iget-object v3, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    if-eqz v3, :cond_0

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/smc/model/SmcMap;->_defaultState:Lnet/sf/smc/model/SmcState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    :cond_0
    iget-object v3, p0, Lnet/sf/smc/model/SmcMap;->_states:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcState;

    .line 427
    .local v2, "state":Lnet/sf/smc/model/SmcState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 430
    .end local v2    # "state":Lnet/sf/smc/model/SmcState;
    :cond_1
    return-object v1
.end method
