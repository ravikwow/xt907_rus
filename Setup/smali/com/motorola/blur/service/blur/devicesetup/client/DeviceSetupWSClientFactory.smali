.class public Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;
.super Ljava/lang/Object;
.source "DeviceSetupWSClientFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;

    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
