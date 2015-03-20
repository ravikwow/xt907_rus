.class public final Lcom/motorola/blur/provider/EmailAccount$ServerInfo;
.super Ljava/lang/Object;
.source "EmailAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/EmailAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerInfo"
.end annotation


# instance fields
.field private final mAccount:Lcom/motorola/blur/provider/EmailAccount;

.field private mAuthType:I

.field private mError:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mProtocolSettings:Lorg/json/JSONObject;

.field private mRetentionPolicy:I

.field private mSecure:Z

.field private mSecurityPolicy:I

.field private mUpdated:Z

.field private mUserName:Ljava/lang/String;

.field private mVerifyCA:Z


# direct methods
.method constructor <init>(Lcom/motorola/blur/provider/EmailAccount;)V
    .locals 1
    .param p1, "account"    # Lcom/motorola/blur/provider/EmailAccount;

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAccount:Lcom/motorola/blur/provider/EmailAccount;

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->setProtocolSettings(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method constructor <init>(Lcom/motorola/blur/provider/EmailAccount;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "account"    # Lcom/motorola/blur/provider/EmailAccount;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAccount:Lcom/motorola/blur/provider/EmailAccount;

    .line 451
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mHost:Ljava/lang/String;

    .line 452
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPort:I

    .line 453
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecure:Z

    .line 454
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAuthType:I

    .line 455
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecurityPolicy:I

    .line 456
    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUserName:Ljava/lang/String;

    .line 457
    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPassword:Ljava/lang/String;

    .line 458
    iget-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->getPasswordPolicy()I

    move-result v1

    iget-object v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPassword:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(ILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPassword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_0
    :goto_1
    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mError:Ljava/lang/String;

    .line 466
    const/16 v1, 0x9

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mVerifyCA:Z

    .line 467
    const/16 v1, 0xa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mRetentionPolicy:I

    .line 468
    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->setProtocolSettings(Ljava/lang/String;)V

    .line 469
    return-void

    :cond_1
    move v1, v3

    .line 453
    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "EmailAccount"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Cannot get password policy for "

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAccount:Lcom/motorola/blur/provider/EmailAccount;

    invoke-virtual {v5}, Lcom/motorola/blur/provider/EmailAccount;->getProvider()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v0, v4}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    move v2, v3

    .line 466
    goto :goto_2
.end method

.method private getPasswordPolicy()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 588
    # invokes: Lcom/motorola/blur/provider/EmailAccount;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {}, Lcom/motorola/blur/provider/EmailAccount;->access$000()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAccount:Lcom/motorola/blur/provider/EmailAccount;

    invoke-virtual {v2}, Lcom/motorola/blur/provider/EmailAccount;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "pwd_storage_policy"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 591
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 592
    .local v7, "pwdPolicy":I
    if-eqz v6, :cond_1

    .line 593
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 596
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 598
    :cond_1
    const/4 v0, -0x1

    if-ne v7, v0, :cond_2

    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the password policy for the provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAccount:Lcom/motorola/blur/provider/EmailAccount;

    invoke-virtual {v2}, Lcom/motorola/blur/provider/EmailAccount;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_2
    return v7
.end method


# virtual methods
.method public getAuthType()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAuthType:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mError:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPort:I

    return v0
.end method

.method public getProtocolSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mProtocolSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mProtocolSettings:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetentionPolicy()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mRetentionPolicy:I

    return v0
.end method

.method public getSecurityPolicy()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecurityPolicy:I

    return v0
.end method

.method getStringValue()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 634
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 636
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "server_address"

    iget-object v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    const-string v3, "server_port"

    iget v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPort:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 638
    const-string v3, "username"

    iget-object v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    const-string v3, "secure"

    iget-boolean v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecure:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 640
    const-string v3, "auth_type"

    iget v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAuthType:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 641
    const-string v3, "security_policy"

    iget v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecurityPolicy:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 642
    iget-object v2, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPassword:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 644
    .local v2, "passwd":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->getPasswordPolicy()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPassword:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/motorola/blur/util/SimpleEncryptUtil;->followPwdPolicy(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 648
    :goto_0
    :try_start_2
    const-string v3, "password"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    const-string v3, "verify_ca"

    iget-boolean v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mVerifyCA:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 650
    const-string v3, "retention_policy"

    iget v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mRetentionPolicy:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 651
    const-string v3, "protocol_settings"

    iget-object v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mProtocolSettings:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    const-string v3, "error"

    iget-object v4, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mError:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 656
    .end local v2    # "passwd":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 645
    .restart local v2    # "passwd":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v3, "EmailAccount"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Cannot get password policy for "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAccount:Lcom/motorola/blur/provider/EmailAccount;

    invoke-virtual {v6}, Lcom/motorola/blur/provider/EmailAccount;->getProvider()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 653
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "passwd":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 654
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "EmailAccount"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method hasChanged()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecure:Z

    return v0
.end method

.method public isVerifyCA()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mVerifyCA:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 473
    return-void
.end method

.method public setAuthType(I)V
    .locals 1
    .param p1, "authType"    # I

    .prologue
    .line 539
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAuthType:I

    if-eq v0, p1, :cond_0

    .line 540
    iput p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mAuthType:I

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 543
    :cond_0
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mError:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mError:Ljava/lang/String;

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 614
    :cond_0
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mHost:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mHost:Ljava/lang/String;

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 499
    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPassword:Ljava/lang/String;

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 585
    return-void
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 506
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPort:I

    if-eq v0, p1, :cond_0

    .line 507
    iput p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mPort:I

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 510
    :cond_0
    return-void
.end method

.method public setProtocolSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->getProtocolSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mProtocolSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "EmailAccount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setProtocolSettings(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {p1}, Lcom/motorola/blur/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mProtocolSettings:Lorg/json/JSONObject;

    .line 631
    :goto_0
    return-void

    .line 625
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mProtocolSettings:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "EmailAccount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 628
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mProtocolSettings:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public setRetentionPolicy(I)V
    .locals 1
    .param p1, "retentionPolicy"    # I

    .prologue
    .line 561
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mRetentionPolicy:I

    if-eq v0, p1, :cond_0

    .line 562
    iput p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mRetentionPolicy:I

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 565
    :cond_0
    return-void
.end method

.method public setSecure(Z)V
    .locals 1
    .param p1, "secure"    # Z

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecure:Z

    if-eq v0, p1, :cond_0

    .line 518
    iput-boolean p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecure:Z

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 521
    :cond_0
    return-void
.end method

.method public setSecurityPolicy(I)V
    .locals 1
    .param p1, "securityPolicy"    # I

    .prologue
    .line 550
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecurityPolicy:I

    if-eq v0, p1, :cond_0

    .line 551
    iput p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mSecurityPolicy:I

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 554
    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUserName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUserName:Ljava/lang/String;

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 576
    :cond_0
    return-void
.end method

.method public setVerifyCA(Z)V
    .locals 1
    .param p1, "verifyCA"    # Z

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mVerifyCA:Z

    if-eq v0, p1, :cond_0

    .line 529
    iput-boolean p1, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mVerifyCA:Z

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->mUpdated:Z

    .line 532
    :cond_0
    return-void
.end method
