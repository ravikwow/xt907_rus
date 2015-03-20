.class public interface abstract Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSTestHelper;
.super Ljava/lang/Object;
.source "IBlurSyncWSTestHelper.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSTestHelper$Stub;
    }
.end annotation


# virtual methods
.method public abstract getBaseAnchor(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNewAnchor(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
