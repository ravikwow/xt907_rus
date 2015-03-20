.class public interface abstract Lcom/motorola/blur/service/blur/IWSRequestCallback;
.super Ljava/lang/Object;
.source "IWSRequestCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract handleResponse(Lcom/motorola/blur/service/blur/WSResponseParcel;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
