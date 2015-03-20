.class public abstract Lcom/motorola/messaging/pdu/util/AbstractCache;
.super Ljava/lang/Object;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/pdu/util/AbstractCache$1;,
        Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private final mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/messaging/pdu/util/AbstractCache;->LOCAL_LOG:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/motorola/messaging/pdu/util/AbstractCache;, "Lcom/motorola/messaging/pdu/util/AbstractCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/pdu/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    .line 35
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/motorola/messaging/pdu/util/AbstractCache;, "Lcom/motorola/messaging/pdu/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-boolean v1, Lcom/motorola/messaging/pdu/util/AbstractCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "AbstractCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from cache."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    if-eqz p1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/motorola/messaging/pdu/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;

    .line 71
    .local v0, "cacheEntry":Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;, "Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_2

    .line 72
    iget v1, v0, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;->hit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;->hit:I

    .line 73
    sget-boolean v1, Lcom/motorola/messaging/pdu/util/AbstractCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "AbstractCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;->hit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    iget-object v1, v0, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    .line 79
    .end local v0    # "cacheEntry":Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;, "Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry<TV;>;"
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public purge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/motorola/messaging/pdu/util/AbstractCache;, "Lcom/motorola/messaging/pdu/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-boolean v1, Lcom/motorola/messaging/pdu/util/AbstractCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "AbstractCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to purge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/pdu/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;

    .line 89
    .local v0, "v":Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;, "Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry<TV;>;"
    sget-boolean v1, Lcom/motorola/messaging/pdu/util/AbstractCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 90
    const-string v1, "AbstractCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/motorola/messaging/pdu/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items cached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public purgeAll()V
    .locals 3

    .prologue
    .line 97
    .local p0, "this":Lcom/motorola/messaging/pdu/util/AbstractCache;, "Lcom/motorola/messaging/pdu/util/AbstractCache<TK;TV;>;"
    sget-boolean v0, Lcom/motorola/messaging/pdu/util/AbstractCache;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "AbstractCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purging cache, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/pdu/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items dropped."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/pdu/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 102
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/motorola/messaging/pdu/util/AbstractCache;, "Lcom/motorola/messaging/pdu/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 38
    sget-boolean v2, Lcom/motorola/messaging/pdu/util/AbstractCache;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "AbstractCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to put "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into cache."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/pdu/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_2

    .line 45
    sget-boolean v2, Lcom/motorola/messaging/pdu/util/AbstractCache;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 46
    const-string v2, "AbstractCache"

    const-string v3, "Failed! size limitation reached."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    :goto_0
    return v1

    .line 51
    :cond_2
    if-eqz p1, :cond_1

    .line 52
    new-instance v0, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;-><init>(Lcom/motorola/messaging/pdu/util/AbstractCache$1;)V

    .line 53
    .local v0, "cacheEntry":Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;, "Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry<TV;>;"
    iput-object p2, v0, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/motorola/messaging/pdu/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-boolean v1, Lcom/motorola/messaging/pdu/util/AbstractCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 57
    const-string v1, "AbstractCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cached, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/pdu/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items total."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
