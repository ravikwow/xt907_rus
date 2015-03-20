.class public Lcom/motorola/blur/settings/BlurAcntVerificationUtility;
.super Ljava/lang/Object;
.source "BlurAcntVerificationUtility.java"


# static fields
.field private static final CARRIER_CONTACT_INFO:Ljava/lang/String; = "carrier_contact_info"

.field private static final EMAIL_ADDRESS_PROJECTION:[Ljava/lang/String;

.field public static final MOTOBLURID:Ljava/lang/String; = "motoblurId"

.field public static final MOTOBLURID_VERIFIED:Ljava/lang/String; = "motoblurIdVerified"

.field private static final PROVIDER_SELECTION:Ljava/lang/String; = "provider_id!= ?"

.field private static final TAG:Ljava/lang/String; = "SettingsVBPA"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email_address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->EMAIL_ADDRESS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getForgotPasswordDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f080021

    .line 92
    const/4 v0, 0x0

    .local v0, "carrierContactInfo":Ljava/lang/String;
    move-object v2, p0

    .line 93
    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 96
    const-string v2, "carrier_contact_info"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f080017

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08003b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    return-object v2
.end method

.method public static getMotoBlurError(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v3, 0x0

    .line 51
    .local v3, "error":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 52
    .local v1, "acntManager":Landroid/accounts/AccountManager;
    const-string v5, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 54
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v4, "length":I
    if-lez v4, :cond_0

    .line 65
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v1    # "acntManager":Landroid/accounts/AccountManager;
    .end local v4    # "length":I
    :cond_0
    :goto_0
    return-object v3

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v5, "SettingsVBPA"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "IllegalStateException getting list of accounts"

    aput-object v8, v6, v7

    invoke-static {v5, v2, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static sendVerifiedMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v0

    .line 77
    .local v0, "wsClient":Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    invoke-interface {v0, p1}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->verifyAccount(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 81
    return-void
.end method
