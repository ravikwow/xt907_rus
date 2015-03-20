.class public abstract Lcom/motorola/blur/service/blur/sync/handler/AbstractBlurSyncProtocolHandler;
.super Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub;
.source "AbstractBlurSyncProtocolHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract allowBatchedUpdates()V
.end method

.method public abstract areBatchedUpdatesAllowed()Z
.end method

.method public abstract prohibitBatchedUpdates()V
.end method
