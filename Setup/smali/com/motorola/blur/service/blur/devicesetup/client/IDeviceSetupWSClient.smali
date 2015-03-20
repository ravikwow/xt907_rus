.class public interface abstract Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
.super Ljava/lang/Object;
.source "IDeviceSetupWSClient.java"


# virtual methods
.method public abstract addProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;J)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract changeEmail(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract changeName(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract changePassword(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract getCaptcha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract getLegalText(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract getMailSettings(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract getNewsFeedList(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract getNewsFeedTypeList()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract getSubscriptions()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract newAcct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract newSubscription([Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract removeProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;JLjava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract removeSubscriptions([J)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract resetPasswordAltEmail(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract sendConfirmationEmail()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract setupDefaultNewsSubs()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract signInByEmailAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract updateProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;BJLjava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method

.method public abstract verifyAccount(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
.end method
