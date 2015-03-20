.class public final Lnet/sf/smc/model/SmcTransition;
.super Lnet/sf/smc/model/SmcElement;
.source "SmcTransition.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/smc/model/SmcElement;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/sf/smc/model/SmcTransition;",
        ">;"
    }
.end annotation


# instance fields
.field private _guards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcGuard;",
            ">;"
        }
    .end annotation
.end field

.field private _parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcParameter;",
            ">;"
        }
    .end annotation
.end field

.field private _state:Lnet/sf/smc/model/SmcState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILnet/sf/smc/model/SmcState;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "state"    # Lnet/sf/smc/model/SmcState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcParameter;",
            ">;I",
            "Lnet/sf/smc/model/SmcState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-direct {p0, p1, p3}, Lnet/sf/smc/model/SmcElement;-><init>(Ljava/lang/String;I)V

    .line 83
    iput-object p4, p0, Lnet/sf/smc/model/SmcTransition;->_state:Lnet/sf/smc/model/SmcState;

    .line 84
    iput-object p2, p0, Lnet/sf/smc/model/SmcTransition;->_parameters:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/model/SmcTransition;->_guards:Ljava/util/List;

    .line 86
    return-void
.end method

.method private _compareParams(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcParameter;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    const/4 v7, 0x1

    .line 344
    iget-object v5, p0, Lnet/sf/smc/model/SmcTransition;->_parameters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    sub-int v4, v5, v6

    .line 345
    .local v4, "retval":I
    if-nez v4, :cond_0

    .line 347
    iget-object v5, p0, Lnet/sf/smc/model/SmcTransition;->_parameters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 348
    .local v2, "pit1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 349
    .local v3, "pit2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const/4 v4, 0x0

    .line 352
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-ne v5, v7, :cond_0

    if-nez v4, :cond_0

    .line 355
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcParameter;

    .line 356
    .local v0, "param1":Lnet/sf/smc/model/SmcParameter;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcParameter;

    .line 357
    .local v1, "param2":Lnet/sf/smc/model/SmcParameter;
    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcParameter;->compareTo(Lnet/sf/smc/model/SmcParameter;)I

    move-result v4

    goto :goto_0

    .line 362
    .end local v0    # "param1":Lnet/sf/smc/model/SmcParameter;
    .end local v1    # "param2":Lnet/sf/smc/model/SmcParameter;
    .end local v2    # "pit1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v3    # "pit2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    :cond_0
    return v4
.end method


# virtual methods
.method public accept(Lnet/sf/smc/model/SmcVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lnet/sf/smc/model/SmcVisitor;

    .prologue
    .line 105
    invoke-virtual {p1, p0}, Lnet/sf/smc/model/SmcVisitor;->visit(Lnet/sf/smc/model/SmcTransition;)V

    .line 106
    return-void
.end method

.method public addGuard(Lnet/sf/smc/model/SmcGuard;)V
    .locals 1
    .param p1, "guard"    # Lnet/sf/smc/model/SmcGuard;

    .prologue
    .line 238
    iget-object v0, p0, Lnet/sf/smc/model/SmcTransition;->_guards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lnet/sf/smc/model/SmcTransition;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/sf/smc/model/SmcTransition;->compareTo(Lnet/sf/smc/model/SmcTransition;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcParameter;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    iget-object v1, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .local v0, "retval":I
    if-nez v0, :cond_0

    .line 293
    invoke-direct {p0, p2}, Lnet/sf/smc/model/SmcTransition;->_compareParams(Ljava/util/List;)I

    move-result v0

    .line 296
    :cond_0
    return v0
.end method

.method public compareTo(Lnet/sf/smc/model/SmcTransition;)I
    .locals 3
    .param p1, "trans"    # Lnet/sf/smc/model/SmcTransition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .local v0, "retval":I
    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/sf/smc/model/SmcTransition;->_compareParams(Ljava/util/List;)I

    move-result v0

    .line 138
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 262
    :try_start_0
    move-object v0, p1

    check-cast v0, Lnet/sf/smc/model/SmcTransition;

    move-object v3, v0

    .line 264
    .local v3, "trans":Lnet/sf/smc/model/SmcTransition;
    iget-object v4, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {v3}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v3}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lnet/sf/smc/model/SmcTransition;->_compareParams(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 273
    .end local v3    # "trans":Lnet/sf/smc/model/SmcTransition;
    .local v2, "retval":Z
    :goto_0
    return v2

    .line 264
    .end local v2    # "retval":Z
    .restart local v3    # "trans":Lnet/sf/smc/model/SmcTransition;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 268
    .end local v3    # "trans":Lnet/sf/smc/model/SmcTransition;
    :catch_0
    move-exception v1

    .line 270
    .local v1, "jex":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "retval":Z
    goto :goto_0
.end method

.method public getGuards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcGuard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lnet/sf/smc/model/SmcTransition;->_guards:Ljava/util/List;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lnet/sf/smc/model/SmcTransition;->_parameters:Ljava/util/List;

    return-object v0
.end method

.method public getState()Lnet/sf/smc/model/SmcState;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lnet/sf/smc/model/SmcTransition;->_state:Lnet/sf/smc/model/SmcState;

    return-object v0
.end method

.method public hasCtxtReference()Z
    .locals 4

    .prologue
    .line 187
    iget-object v2, p0, Lnet/sf/smc/model/SmcTransition;->_guards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "guardIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v1, 0x0

    .line 188
    .local v1, "retcode":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcGuard;

    invoke-virtual {v2}, Lnet/sf/smc/model/SmcGuard;->hasCtxtReference()Z

    move-result v1

    goto :goto_0

    .line 195
    :cond_0
    return v1
.end method

.method public hasNonNilEndState()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 212
    iget-object v4, p0, Lnet/sf/smc/model/SmcTransition;->_guards:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "guardIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v2, 0x0

    .line 213
    .local v2, "retcode":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-ne v4, v3, :cond_1

    if-nez v2, :cond_1

    .line 216
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcGuard;

    .line 217
    .local v0, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v0}, Lnet/sf/smc/model/SmcGuard;->getEndState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nil"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 221
    .end local v0    # "guard":Lnet/sf/smc/model/SmcGuard;
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 306
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v5, 0x200

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 310
    .local v3, "retval":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    iget-object v5, p0, Lnet/sf/smc/model/SmcTransition;->_parameters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v4, ""

    .line 314
    .local v4, "sep":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 315
    const-string v4, ", "

    goto :goto_0

    .line 321
    :cond_0
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    iget-object v5, p0, Lnet/sf/smc/model/SmcTransition;->_guards:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 325
    iget-object v5, p0, Lnet/sf/smc/model/SmcTransition;->_guards:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcGuard;

    .line 327
    .local v0, "guard":Lnet/sf/smc/model/SmcGuard;
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 332
    .end local v0    # "guard":Lnet/sf/smc/model/SmcGuard;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
