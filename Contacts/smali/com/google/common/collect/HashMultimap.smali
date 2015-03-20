.class public final Lcom/google/common/collect/HashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "HashMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field transient expectedValuesPerKey:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 92
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 134
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 135
    .local v0, "distinctKeys":I
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 136
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractMultimap;->setMap(Ljava/util/Map;)V

    .line 137
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;I)V

    .line 138
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 125
    iget v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 126
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 127
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createCollection()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
