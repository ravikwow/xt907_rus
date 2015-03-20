.class public final Lnet/sf/smc/model/SmcState;
.super Lnet/sf/smc/model/SmcElement;
.source "SmcState.java"


# instance fields
.field private final _className:Ljava/lang/String;

.field private _entryActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;"
        }
    .end annotation
.end field

.field private _exitActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;"
        }
    .end annotation
.end field

.field private final _instanceName:Ljava/lang/String;

.field private final _map:Lnet/sf/smc/model/SmcMap;

.field private _transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILnet/sf/smc/model/SmcMap;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "map"    # Lnet/sf/smc/model/SmcMap;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/model/SmcElement;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lnet/sf/smc/model/SmcState;->_map:Lnet/sf/smc/model/SmcMap;

    .line 78
    const-string v0, "Default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "DefaultState"

    iput-object v0, p0, Lnet/sf/smc/model/SmcState;->_instanceName:Ljava/lang/String;

    .line 93
    :goto_0
    iput-object p1, p0, Lnet/sf/smc/model/SmcState;->_className:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lnet/sf/smc/model/SmcState;->_entryActions:Ljava/util/List;

    .line 96
    iput-object v1, p0, Lnet/sf/smc/model/SmcState;->_exitActions:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/model/SmcState;->_transitions:Ljava/util/List;

    .line 98
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lnet/sf/smc/model/SmcState;->_instanceName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public accept(Lnet/sf/smc/model/SmcVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lnet/sf/smc/model/SmcVisitor;

    .prologue
    .line 117
    invoke-virtual {p1, p0}, Lnet/sf/smc/model/SmcVisitor;->visit(Lnet/sf/smc/model/SmcState;)V

    .line 118
    return-void
.end method

.method public addTransition(Lnet/sf/smc/model/SmcTransition;)V
    .locals 1
    .param p1, "transition"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 318
    iget-object v0, p0, Lnet/sf/smc/model/SmcState;->_transitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lnet/sf/smc/model/SmcState;->_transitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_0
    return-void
.end method

.method public callDefault(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 258
    iget-object v5, p0, Lnet/sf/smc/model/SmcState;->_transitions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcTransition;

    .line 260
    .local v2, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_0

    .line 262
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcTransition;->getGuards()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcGuard;

    .line 264
    .local v0, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v0}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 279
    .end local v0    # "guard":Lnet/sf/smc/model/SmcGuard;
    .end local v2    # "transition":Lnet/sf/smc/model/SmcTransition;
    :goto_0
    return v3

    .restart local v2    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_2
    move v3, v4

    .line 269
    goto :goto_0

    .line 272
    .end local v2    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_3
    iget-object v5, p0, Lnet/sf/smc/model/SmcState;->_transitions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcTransition;

    .line 274
    .restart local v2    # "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_4

    goto :goto_0

    .end local v2    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_5
    move v3, v4

    .line 279
    goto :goto_0
.end method

.method public findGuard(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/model/SmcGuard;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 235
    iget-object v4, p0, Lnet/sf/smc/model/SmcState;->_transitions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/smc/model/SmcTransition;

    .line 237
    .local v3, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v3}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_0

    .line 239
    invoke-virtual {v3}, Lnet/sf/smc/model/SmcTransition;->getGuards()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcGuard;

    .line 241
    .local v0, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v0}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 248
    .end local v0    # "guard":Lnet/sf/smc/model/SmcGuard;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "transition":Lnet/sf/smc/model/SmcTransition;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTransition(Ljava/lang/String;Ljava/util/List;)Lnet/sf/smc/model/SmcTransition;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcParameter;",
            ">;)",
            "Lnet/sf/smc/model/SmcTransition;"
        }
    .end annotation

    .prologue
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    const/4 v4, 0x1

    .line 208
    iget-object v3, p0, Lnet/sf/smc/model/SmcState;->_transitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "transIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcTransition;>;"
    const/4 v0, 0x0

    .line 209
    .local v0, "retval":Lnet/sf/smc/model/SmcTransition;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-ne v3, v4, :cond_1

    if-nez v0, :cond_1

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcTransition;

    .line 213
    .local v2, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, p1, p2}, Lnet/sf/smc/model/SmcTransition;->compareTo(Ljava/lang/String;Ljava/util/List;)I

    move-result v3

    if-nez v3, :cond_0

    .line 216
    move-object v0, v2

    goto :goto_0

    .line 220
    .end local v2    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_1
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lnet/sf/smc/model/SmcState;->_className:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryActions()Ljava/util/List;
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
    .line 171
    iget-object v0, p0, Lnet/sf/smc/model/SmcState;->_entryActions:Ljava/util/List;

    return-object v0
.end method

.method public getExitActions()Ljava/util/List;
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
    .line 180
    iget-object v0, p0, Lnet/sf/smc/model/SmcState;->_exitActions:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/sf/smc/model/SmcState;->_instanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getMap()Lnet/sf/smc/model/SmcMap;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnet/sf/smc/model/SmcState;->_map:Lnet/sf/smc/model/SmcMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/smc/model/SmcState;->_className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/smc/model/SmcState;->_instanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 1
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
    .line 189
    iget-object v0, p0, Lnet/sf/smc/model/SmcState;->_transitions:Ljava/util/List;

    return-object v0
.end method

.method public setEntryActions(Ljava/util/List;)V
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
    .line 296
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/sf/smc/model/SmcState;->_entryActions:Ljava/util/List;

    .line 297
    return-void
.end method

.method public setExitActions(Ljava/util/List;)V
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
    .line 306
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/sf/smc/model/SmcState;->_exitActions:Ljava/util/List;

    .line 307
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 337
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v2, "retval":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lnet/sf/smc/model/SmcState;->_instanceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    iget-object v4, p0, Lnet/sf/smc/model/SmcState;->_entryActions:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnet/sf/smc/model/SmcState;->_entryActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 343
    const-string v4, "\n\tEntry {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    iget-object v4, p0, Lnet/sf/smc/model/SmcState;->_entryActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcAction;

    .line 346
    .local v0, "action":Lnet/sf/smc/model/SmcAction;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 349
    .end local v0    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_0
    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lnet/sf/smc/model/SmcState;->_exitActions:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnet/sf/smc/model/SmcState;->_exitActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 354
    const-string v4, "\n\tExit {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    iget-object v4, p0, Lnet/sf/smc/model/SmcState;->_exitActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcAction;

    .line 357
    .restart local v0    # "action":Lnet/sf/smc/model/SmcAction;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 360
    .end local v0    # "action":Lnet/sf/smc/model/SmcAction;
    :cond_2
    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lnet/sf/smc/model/SmcState;->_transitions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/smc/model/SmcTransition;

    .line 365
    .local v3, "transition":Lnet/sf/smc/model/SmcTransition;
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 369
    .end local v3    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
