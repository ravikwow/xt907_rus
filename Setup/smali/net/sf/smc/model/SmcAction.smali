.class public final Lnet/sf/smc/model/SmcAction;
.super Lnet/sf/smc/model/SmcElement;
.source "SmcAction.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/smc/model/SmcElement;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/sf/smc/model/SmcAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_STACK:Ljava/lang/String; = "emptystatestack"


# instance fields
.field private _arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _propertyFlag:Z

.field private _staticFlag:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/model/SmcElement;-><init>(Ljava/lang/String;I)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/model/SmcAction;->_arguments:Ljava/util/List;

    .line 96
    iput-boolean v1, p0, Lnet/sf/smc/model/SmcAction;->_propertyFlag:Z

    .line 97
    iput-boolean v1, p0, Lnet/sf/smc/model/SmcAction;->_staticFlag:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/util/List;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "propertyFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p4, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 122
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/model/SmcElement;-><init>(Ljava/lang/String;I)V

    .line 124
    if-ne p3, v1, :cond_1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "property must have exactly one argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iput-object p4, p0, Lnet/sf/smc/model/SmcAction;->_arguments:Ljava/util/List;

    .line 135
    iput-boolean p3, p0, Lnet/sf/smc/model/SmcAction;->_propertyFlag:Z

    .line 137
    return-void
.end method


# virtual methods
.method public accept(Lnet/sf/smc/model/SmcVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lnet/sf/smc/model/SmcVisitor;

    .prologue
    .line 156
    invoke-virtual {p1, p0}, Lnet/sf/smc/model/SmcVisitor;->visit(Lnet/sf/smc/model/SmcAction;)V

    .line 157
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Lnet/sf/smc/model/SmcAction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/sf/smc/model/SmcAction;->compareTo(Lnet/sf/smc/model/SmcAction;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/sf/smc/model/SmcAction;)I
    .locals 8
    .param p1, "action"    # Lnet/sf/smc/model/SmcAction;

    .prologue
    const/4 v7, 0x1

    .line 178
    const/4 v2, 0x0

    .line 180
    .local v2, "retval":I
    if-eq p0, p1, :cond_0

    iget-object v5, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 188
    iget-object v5, p0, Lnet/sf/smc/model/SmcAction;->_arguments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, "ait1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v5, p1, Lnet/sf/smc/model/SmcAction;->_arguments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    .local v1, "ait2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-ne v5, v7, :cond_0

    if-nez v2, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    .local v3, "s1":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 198
    .local v4, "s2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 202
    .end local v0    # "ait1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "ait2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "s1":Ljava/lang/String;
    .end local v4    # "s2":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lnet/sf/smc/model/SmcAction;->_arguments:Ljava/util/List;

    return-object v0
.end method

.method public isEmptyStateStack()Z
    .locals 2

    .prologue
    .line 239
    const-string v0, "emptystatestack"

    invoke-virtual {p0}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProperty()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lnet/sf/smc/model/SmcAction;->_propertyFlag:Z

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lnet/sf/smc/model/SmcAction;->_staticFlag:Z

    return v0
.end method

.method public setArguments(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 283
    iget-boolean v0, p0, Lnet/sf/smc/model/SmcAction;->_propertyFlag:Z

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "property must have exactly one argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/sf/smc/model/SmcAction;->_arguments:Ljava/util/List;

    .line 295
    return-void
.end method

.method public setProperty(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lnet/sf/smc/model/SmcAction;->_propertyFlag:Z

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x28

    const/4 v4, 0x1

    .line 312
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 314
    .local v1, "retval":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    iget-boolean v3, p0, Lnet/sf/smc/model/SmcAction;->_propertyFlag:Z

    if-ne v3, v4, :cond_0

    .line 318
    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    iget-object v3, p0, Lnet/sf/smc/model/SmcAction;->_arguments:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 326
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    iget-object v3, p0, Lnet/sf/smc/model/SmcAction;->_arguments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v2, ""

    .line 329
    .local v2, "sep":Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    const-string v2, ", "

    goto :goto_1

    .line 336
    :cond_1
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
