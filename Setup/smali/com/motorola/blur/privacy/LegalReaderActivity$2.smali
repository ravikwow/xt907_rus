.class Lcom/motorola/blur/privacy/LegalReaderActivity$2;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/LegalReaderActivity;->requestLegal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/LegalReaderActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 210
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    .line 211
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v3

    .line 214
    .local v3, "wsClient":Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 215
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_3

    .line 216
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 218
    iget-object v4, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    # setter for: Lcom/motorola/blur/privacy/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/motorola/blur/privacy/LegalReaderActivity;->access$002(Lcom/motorola/blur/privacy/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_1

    .line 222
    iget-object v4, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    # setter for: Lcom/motorola/blur/privacy/LegalReaderActivity;->mImsi:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/motorola/blur/privacy/LegalReaderActivity;->access$102(Lcom/motorola/blur/privacy/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_2

    .line 226
    iget-object v4, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    # setter for: Lcom/motorola/blur/privacy/LegalReaderActivity;->mSn:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/motorola/blur/privacy/LegalReaderActivity;->access$202(Lcom/motorola/blur/privacy/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .end local v1    # "temp":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    # getter for: Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    invoke-static {v4}, Lcom/motorola/blur/privacy/LegalReaderActivity;->access$300(Lcom/motorola/blur/privacy/LegalReaderActivity;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    # getter for: Lcom/motorola/blur/privacy/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/blur/privacy/LegalReaderActivity;->access$000(Lcom/motorola/blur/privacy/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    # getter for: Lcom/motorola/blur/privacy/LegalReaderActivity;->mImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/blur/privacy/LegalReaderActivity;->access$100(Lcom/motorola/blur/privacy/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    # getter for: Lcom/motorola/blur/privacy/LegalReaderActivity;->mSn:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/blur/privacy/LegalReaderActivity;->access$200(Lcom/motorola/blur/privacy/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->getLegalText(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 233
    return-void

    .line 229
    :cond_3
    const-string v4, "BlurLRA"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "YOU\'RE PROBABLY IN BIG TROUBLE BECAUSE YOU DON\'T HAVE A TELEPHONY MANAGER!"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
