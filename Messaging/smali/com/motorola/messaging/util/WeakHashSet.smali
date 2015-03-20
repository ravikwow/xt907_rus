.class public Lcom/motorola/messaging/util/WeakHashSet;
.super Ljava/lang/Object;
.source "WeakHashSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TP;>;"
    }
.end annotation


# instance fields
.field private mBackingMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<TP;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)Z"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    .local p1, "object":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TP;>;)Z"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TP;>;"
    const/4 v0, 0x0

    .line 20
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 21
    .local v2, "item":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/util/WeakHashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    .end local v2    # "item":Ljava/lang/Object;, "TP;"
    :cond_1
    if-lez v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 31
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 55
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/motorola/messaging/util/WeakHashSet;, "Lcom/motorola/messaging/util/WeakHashSet<TP;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/motorola/messaging/util/WeakHashSet;->mBackingMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
