.class final Lcom/google/common/cache/CacheBuilder$1;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEviction()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public recordHits(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 145
    return-void
.end method

.method public recordLoadException(J)V
    .locals 0
    .param p1, "loadTime"    # J

    .prologue
    .line 154
    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 0
    .param p1, "loadTime"    # J

    .prologue
    .line 151
    return-void
.end method

.method public recordMisses(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 148
    return-void
.end method