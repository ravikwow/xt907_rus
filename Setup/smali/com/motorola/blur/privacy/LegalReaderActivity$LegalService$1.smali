.class Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;
.super Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;
.source "LegalReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;

    invoke-direct {p0}, Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/motorola/blur/service/blur/WSResponseParcel;)Z
    .locals 12
    .param p1, "respParcel"    # Lcom/motorola/blur/service/blur/WSResponseParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 435
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/WSResponseParcel;->getData()Landroid/os/Parcelable;

    move-result-object v4

    .line 438
    .local v4, "p":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;

    .line 439
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->isGlobalDeviceProvisioningEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 440
    .local v3, "isGlobalDeviceProvisioningEnabled":Z
    if-nez v3, :cond_0

    instance-of v6, v4, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;

    if-eqz v6, :cond_1

    :cond_0
    if-eqz v3, :cond_3

    instance-of v6, v4, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;

    if-nez v6, :cond_3

    .line 442
    :cond_1
    const-string v6, "BlurLRA"

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "Hmmmm, I was expecting a LegalText Response, dropping to the floor"

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 480
    .end local v4    # "p":Landroid/os/Parcelable;
    :cond_2
    :goto_0
    return v10

    .line 446
    .restart local v4    # "p":Landroid/os/Parcelable;
    :cond_3
    invoke-static {}, Lcom/motorola/blur/privacy/LegalReaderActivity$ActivityInstance;->getInstance()Lcom/motorola/blur/privacy/LegalReaderActivity;

    move-result-object v0

    .line 447
    .local v0, "activity":Lcom/motorola/blur/privacy/LegalReaderActivity;
    const-string v6, "BlurLRA"

    new-array v7, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LegalService handleResponse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 448
    if-eqz v0, :cond_2

    .line 451
    if-eqz v3, :cond_4

    .line 452
    check-cast v4, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;

    .end local v4    # "p":Landroid/os/Parcelable;
    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;->getText()Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, "text":Ljava/lang/String;
    :goto_1
    move-object v1, v5

    .line 459
    .local v1, "content":Ljava/lang/String;
    new-instance v6, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;-><init>(Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;Lcom/motorola/blur/privacy/LegalReaderActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 454
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    .restart local v4    # "p":Landroid/os/Parcelable;
    :cond_4
    check-cast v4, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;

    .end local v4    # "p":Landroid/os/Parcelable;
    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->getText()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_1
.end method
