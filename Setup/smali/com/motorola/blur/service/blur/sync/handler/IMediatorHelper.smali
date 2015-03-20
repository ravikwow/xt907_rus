.class public interface abstract Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;
.super Ljava/lang/Object;
.source "IMediatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper$SyncType;
    }
.end annotation


# virtual methods
.method public abstract acquireSyncAdapter()Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;
.end method

.method public abstract areCommitsPaged()Z
.end method

.method public abstract areUpdatesPaged()Z
.end method

.method public abstract conflictResolver()Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;
.end method

.method public abstract conflictStrategyType()Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;
.end method

.method public abstract dataFormat()Ljava/lang/String;
.end method

.method public abstract defaultCommitPageSize()I
.end method

.method public abstract defaultUpdatePageSize()I
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getSyncType()Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper$SyncType;
.end method

.method public abstract initialAnchor()J
.end method

.method public abstract releaseSyncAdapter()V
.end method

.method public abstract serviceName()Ljava/lang/String;
.end method

.method public abstract syncAppID()I
.end method
