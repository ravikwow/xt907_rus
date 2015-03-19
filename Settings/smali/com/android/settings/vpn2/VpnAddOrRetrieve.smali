.class public Lcom/android/settings/vpn2/VpnAddOrRetrieve;
.super Landroid/app/Activity;
.source "VpnAddOrRetrieve.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private mEdmError:Lcom/motorola/motepm/EdmErrorCode;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mUnlockAction:Ljava/lang/Runnable;

.field private mUnlocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "VpnAddOrRetrieve"

    sput-object v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    .line 29
    new-instance v0, Lcom/motorola/motepm/EdmErrorCode;

    invoke-direct {v0, p0}, Lcom/motorola/motepm/EdmErrorCode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    .line 31
    iput-boolean v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mUnlocking:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/VpnAddOrRetrieve;Lcom/android/settings/vpn2/VpnProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/vpn2/VpnAddOrRetrieve;
    .param p1, "x1"    # Lcom/android/settings/vpn2/VpnProfile;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->saveVpnProfile(Lcom/android/settings/vpn2/VpnProfile;)V

    return-void
.end method

.method private deleteVpnProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "vpn_id"    # Ljava/lang/String;

    .prologue
    const/16 v4, -0xbc2

    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    invoke-virtual {v0, v4, v3}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    invoke-virtual {v0, v4, v3}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private fetchVpnProfile(Ljava/lang/String;)V
    .locals 8
    .param p1, "vpn_id"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0xbc3

    .line 271
    iget-boolean v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 272
    sget-object v3, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v4, "fetchVpnProfile() is called!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v3, v4, :cond_1

    .line 275
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    invoke-virtual {v3, v6, v7}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 324
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 278
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    invoke-virtual {v3, v6, v7}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 281
    :cond_2
    const/4 v1, 0x0

    .line 282
    .local v1, "profile":Lcom/android/settings/vpn2/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 283
    .local v0, "keyBuffer":[B
    if-eqz v0, :cond_3

    .line 284
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v1

    .line 287
    :cond_3
    if-nez v1, :cond_4

    .line 288
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    invoke-virtual {v3, v6, v7}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 292
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v2, "resultVpn":Landroid/os/Bundle;
    const-string v3, "VPN_ID"

    iget-object v4, v1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v3, "VPN_NAME"

    iget-object v4, v1, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v3, "VPN_SERVER_NAME"

    iget-object v4, v1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v3, "VPN_DOMAIN_SUFFICES"

    iget-object v4, v1, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget v3, v1, Lcom/android/settings/vpn2/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    .line 319
    :goto_1
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 320
    iget-boolean v3, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 321
    sget-object v3, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v4, "Success result sent back to ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 300
    :pswitch_0
    const-string v3, "VPN_TYPE"

    const-string v4, "PPTP"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "ENCRYPT_ENABLED"

    iget-boolean v3, v1, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    if-eqz v3, :cond_6

    const-string v3, "true"

    :goto_2
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v3, "false"

    goto :goto_2

    .line 304
    :pswitch_1
    const-string v3, "VPN_TYPE"

    const-string v4, "L2TP/IPSec PSK"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v4, "L2TP_SECRET_ENABLED"

    iget-object v3, v1, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v3, "true"

    :goto_3
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v3, "L2TP_SECRET"

    iget-object v4, v1, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v3, "PSK"

    iget-object v4, v1, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_7
    const-string v3, "false"

    goto :goto_3

    .line 310
    :pswitch_2
    const-string v3, "VPN_TYPE"

    const-string v4, "L2TP/IPSec RSA"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v4, "L2TP_SECRET_ENABLED"

    iget-object v3, v1, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v3, "true"

    :goto_4
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v3, "L2TP_SECRET"

    iget-object v4, v1, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v3, "CA_CERT"

    iget-object v4, v1, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v3, "USER_CERT"

    iget-object v4, v1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_8
    const-string v3, "false"

    goto :goto_4

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private saveVpnProfile(Lcom/android/settings/vpn2/VpnProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/settings/vpn2/VpnProfile;

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 237
    sget-object v1, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v2, "saveVpnProfile() is called!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    if-nez p1, :cond_1

    .line 260
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v1, v2, :cond_3

    .line 243
    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 244
    sget-object v1, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v2, "saveVpnProfile(): KeyStore is locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    new-instance v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn2/VpnAddOrRetrieve$1;-><init>(Lcom/android/settings/vpn2/VpnAddOrRetrieve;Lcom/android/settings/vpn2/VpnProfile;)V

    .line 251
    .local v0, "action":Ljava/lang/Runnable;
    iput-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 254
    .end local v0    # "action":Ljava/lang/Runnable;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/vpn2/VpnProfile;->encode()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 259
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/16 v2, -0xbc1

    invoke-virtual {v1, v2, v4}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "intentString":Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v4, ""

    .line 41
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "bundle"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 42
    .local v2, "extraArgs":Landroid/os/Bundle;
    if-nez v2, :cond_3

    .line 43
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 44
    sget-object v19, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v20, "Invalid Intent"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    move-object/from16 v19, v0

    const/16 v20, -0xbc1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 197
    :cond_2
    :goto_0
    return-void

    .line 52
    :cond_3
    const-string v19, "com.motorola.intent.action.ADD_VPN_PROFILE"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 54
    const-string v19, "VPN_ID"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "vpn_id":Ljava/lang/String;
    const-string v19, "VPN_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 56
    .local v17, "vpn_type":Ljava/lang/String;
    const-string v19, "VPN_NAME"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, "vpn_name":Ljava/lang/String;
    const-string v19, "VPN_SERVER_NAME"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 58
    .local v15, "vpn_server_name":Ljava/lang/String;
    const-string v19, "VPN_DOMAIN_SUFFICES"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "vpn_domain_suffices":Ljava/lang/String;
    const-string v19, "L2TP_SECRET_ENABLED"

    const-string v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 60
    .local v16, "vpn_set_secret_enabled":Ljava/lang/String;
    const-string v19, "L2TP_SECRET"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 61
    .local v14, "vpn_secret_string":Ljava/lang/String;
    const-string v19, "CA_CERT"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "vpn_ca_certificate":Ljava/lang/String;
    const-string v19, "USER_CERT"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 63
    .local v18, "vpn_user_certificate":Ljava/lang/String;
    const-string v19, "PSK"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 64
    .local v13, "vpn_pre_sharedkey":Ljava/lang/String;
    const-string v19, "ENCRYPT_ENABLED"

    const-string v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "vpn_encryption_enabled":Ljava/lang/String;
    const/4 v5, 0x0

    .line 68
    .local v5, "p":Lcom/android/settings/vpn2/VpnProfile;
    if-eqz v12, :cond_4

    if-nez v15, :cond_6

    .line 69
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 70
    sget-object v19, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v20, "Invalid vpn_name or vpn_server_name"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    move-object/from16 v19, v0

    const/16 v20, -0xbc0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 78
    :cond_6
    if-eqz v16, :cond_8

    const-string v19, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    if-nez v14, :cond_8

    .line 80
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 81
    sget-object v19, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v20, "Invalid vpn_secret_string"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    move-object/from16 v19, v0

    const/16 v20, -0xbb9

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 88
    :cond_8
    if-nez v17, :cond_a

    .line 89
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 90
    sget-object v19, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v20, "Invalid vpn type"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    move-object/from16 v19, v0

    const/16 v20, -0xbbd

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 97
    :cond_a
    const-string v19, "L2TP/IPSec PSK"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 98
    new-instance v5, Lcom/android/settings/vpn2/VpnProfile;

    .end local v5    # "p":Lcom/android/settings/vpn2/VpnProfile;
    invoke-direct {v5, v10}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v5    # "p":Lcom/android/settings/vpn2/VpnProfile;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v5, Lcom/android/settings/vpn2/VpnProfile;->type:I

    .line 100
    iput-object v12, v5, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 101
    iput-object v15, v5, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 102
    iput-object v8, v5, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 104
    const-string v19, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 105
    iput-object v14, v5, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 108
    :cond_b
    if-nez v13, :cond_d

    .line 109
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 110
    sget-object v19, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v20, "Invalid vpn_pre_sharedkey"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    move-object/from16 v19, v0

    const/16 v20, -0xbbc

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 119
    :cond_d
    iput-object v13, v5, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 173
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 174
    sget-object v19, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v20, "onCreate(): Add a vpn profile!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->saveVpnProfile(Lcom/android/settings/vpn2/VpnProfile;)V

    goto/16 :goto_0

    .line 121
    :cond_f
    const-string v19, "PPTP"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 122
    new-instance v5, Lcom/android/settings/vpn2/VpnProfile;

    .end local v5    # "p":Lcom/android/settings/vpn2/VpnProfile;
    invoke-direct {v5, v10}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v5    # "p":Lcom/android/settings/vpn2/VpnProfile;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Lcom/android/settings/vpn2/VpnProfile;->type:I

    .line 124
    iput-object v12, v5, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 125
    iput-object v15, v5, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 126
    iput-object v8, v5, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 127
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v5, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    goto :goto_1

    .line 129
    :cond_10
    const-string v19, "L2TP/IPSec RSA"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 130
    new-instance v5, Lcom/android/settings/vpn2/VpnProfile;

    .end local v5    # "p":Lcom/android/settings/vpn2/VpnProfile;
    invoke-direct {v5, v10}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v5    # "p":Lcom/android/settings/vpn2/VpnProfile;
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v5, Lcom/android/settings/vpn2/VpnProfile;->type:I

    .line 132
    iput-object v12, v5, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 133
    iput-object v15, v5, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 134
    iput-object v8, v5, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 136
    if-eqz v16, :cond_11

    const-string v19, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 137
    iput-object v14, v5, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 140
    :cond_11
    if-nez v7, :cond_13

    .line 141
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 142
    sget-object v19, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v20, "Invalid vpn_ca_certificate"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    move-object/from16 v19, v0

    const/16 v20, -0xbba

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 150
    :cond_13
    iput-object v7, v5, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 152
    if-nez v18, :cond_15

    .line 153
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 154
    sget-object v19, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v20, "Invalid vpn_user_certificate"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    move-object/from16 v19, v0

    const/16 v20, -0xbbb

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 162
    :cond_15
    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    goto/16 :goto_1

    .line 165
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 166
    sget-object v19, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v20, "Invalid vpn type"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    move-object/from16 v19, v0

    const/16 v20, -0xbbd

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 177
    .end local v5    # "p":Lcom/android/settings/vpn2/VpnProfile;
    .end local v7    # "vpn_ca_certificate":Ljava/lang/String;
    .end local v8    # "vpn_domain_suffices":Ljava/lang/String;
    .end local v9    # "vpn_encryption_enabled":Ljava/lang/String;
    .end local v10    # "vpn_id":Ljava/lang/String;
    .end local v12    # "vpn_name":Ljava/lang/String;
    .end local v13    # "vpn_pre_sharedkey":Ljava/lang/String;
    .end local v14    # "vpn_secret_string":Ljava/lang/String;
    .end local v15    # "vpn_server_name":Ljava/lang/String;
    .end local v16    # "vpn_set_secret_enabled":Ljava/lang/String;
    .end local v17    # "vpn_type":Ljava/lang/String;
    .end local v18    # "vpn_user_certificate":Ljava/lang/String;
    :cond_18
    const-string v19, "com.motorola.intent.action.DEL_VPN_PROFILE"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 178
    const-string v19, "VPN_ID"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, "vpn_ids":[Ljava/lang/String;
    const-string v19, "LENGTH"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 180
    .local v6, "size":I
    if-eqz v11, :cond_19

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_1a

    .line 181
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    move-object/from16 v19, v0

    const/16 v20, -0xbc2

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 186
    :cond_1a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_1b

    .line 187
    aget-object v10, v11, v3

    .line 188
    .restart local v10    # "vpn_id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->deleteVpnProfile(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 190
    .end local v10    # "vpn_id":Ljava/lang/String;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 191
    .end local v3    # "i":I
    .end local v6    # "size":I
    .end local v11    # "vpn_ids":[Ljava/lang/String;
    :cond_1c
    const-string v19, "com.motorola.intent.action.FETCH_VPN_PROFILE"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 192
    const-string v19, "VPN_ID"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 194
    .restart local v10    # "vpn_id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->fetchVpnProfile(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 204
    sget-object v2, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v3, "onResume is called!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v2, v3, :cond_4

    .line 208
    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 209
    sget-object v2, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v3, "KeyStore is lcoked!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mUnlocking:Z

    if-nez v2, :cond_3

    .line 213
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 220
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mUnlocking:Z

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mUnlocking:Z

    .line 234
    :goto_1
    return-void

    .line 216
    :cond_3
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/16 v3, -0xbc1

    invoke-virtual {v2, v3, v4}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 224
    :cond_4
    iput-boolean v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mUnlocking:Z

    .line 226
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 227
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    .line 228
    .local v0, "action":Ljava/lang/Runnable;
    iput-object v4, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->mUnlockAction:Ljava/lang/Runnable;

    .line 229
    sget-object v1, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->TAG:Ljava/lang/String;

    const-string v2, "runOnUiThread():Go on add vpn profile!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 232
    .end local v0    # "action":Ljava/lang/Runnable;
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
