.class public Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;
.super Ljava/lang/Object;
.source "DeviceSetupWSClient.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;


# instance fields
.field protected mCtx:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.START_BLUR_SERVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method


# virtual methods
.method public addProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;J)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "credentials"    # Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    .param p2, "id"    # J

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;-><init>(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;J)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public changeEmail(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "newEmail"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;

    invoke-direct {v1, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public changeName(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Request;

    invoke-direct {v1, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Request;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "currentPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;

    invoke-direct {v1, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public getCaptcha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "sn"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Request;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public getLegalText(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "type"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "sn"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->isGlobalDeviceProvisioningEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Request;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Request;-><init>(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendMMApiWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;-><init>(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    goto :goto_0
.end method

.method public getMailSettings(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Request;

    invoke-direct {v1, p1}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Request;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public getNewsFeedList(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request;

    invoke-direct {v1, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public getNewsFeedTypeList()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptions()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;-><init>(Z)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public newAcct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 10
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "sn"    # Ljava/lang/String;
    .param p5, "passwd"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "capInfo"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 54
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 56
    :goto_0
    return-object v0

    :cond_1
    iget-object v9, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)V

    const-class v1, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    goto :goto_0
.end method

.method public newSubscription([Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;

    invoke-direct {v1, p1}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public removeProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;JLjava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "credentials"    # Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    .param p2, "id"    # J
    .param p4, "intentCategory"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;-><init>(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;JLjava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public removeSubscriptions([J)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "ids"    # [J

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;

    invoke-direct {v1, p1}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;-><init>([J)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "sn"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public resetPasswordAltEmail(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "altEmail"    # Ljava/lang/String;

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Request;

    invoke-direct {v1, p1}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Request;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    goto :goto_0
.end method

.method public sendConfirmationEmail()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/ConfirmationEmailWS$Request;

    invoke-direct {v1}, Lcom/motorola/blur/service/blur/devicesetup/ConfirmationEmailWS$Request;-><init>()V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/ConfirmationEmailWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public setupDefaultNewsSubs()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;-><init>(Z)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public signInByEmailAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 9
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "sn"    # Ljava/lang/String;
    .param p5, "passwd"    # Ljava/lang/String;
    .param p6, "capInfo"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 63
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 65
    :goto_0
    return-object v0

    :cond_1
    iget-object v8, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)V

    const-class v1, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    goto :goto_0
.end method

.method public updateProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;BJLjava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 7
    .param p1, "credentials"    # Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    .param p2, "retryCount"    # B
    .param p3, "id"    # J
    .param p5, "intentCategory"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v6, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Request;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Request;-><init>(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;BJLjava/lang/String;)V

    const-class v1, Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method public verifyAccount(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClient;->mCtx:Landroid/content/Context;

    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Request;

    invoke-direct {v1, p1}, Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Request;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Response;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    goto :goto_0
.end method
