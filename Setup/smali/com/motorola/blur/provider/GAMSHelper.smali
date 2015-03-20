.class public Lcom/motorola/blur/provider/GAMSHelper;
.super Ljava/lang/Object;
.source "GAMSHelper.java"


# static fields
.field public static final ACCOUNTS_MIMETYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.service.account"

.field public static final ACCOUNT_ID:Ljava/lang/String; = "account"

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "AccountName"

.field public static final ACCOUNT_PRETTY_NAME:Ljava/lang/String; = "account_pretty_name"

.field public static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "AccountType"

.field public static final ADD_ACCOUNT:Ljava/lang/String; = "AddAccount"

.field private static final AUTHENTICATOR_FORMAT:Ljava/lang/String; = "%s.%s"

.field private static final BLUR_SOCIAL_FRIEND_MIMETYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.blur_social_profile.%s"

.field private static final CAPABILITY_PROJECTION:[Ljava/lang/String;

.field private static final CAPABILITY_SELECTION:Ljava/lang/String; = "providers_id=? AND capability=?"

.field public static final EMAIL:Ljava/lang/String; = "email_address"

.field private static final EMPTY_ACCOUNTS:[Landroid/accounts/Account;

.field public static final FIXED_EMAIL_TYPE:Ljava/lang/String;

.field public static final MOTHER_USER_CREDS_TYPE:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

.field public static final PROVIDER:Ljava/lang/String; = "provider"

.field private static final TAG:Ljava/lang/String; = "GAMSHelper"

.field public static final USER_NAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "provider_id"

    aput-object v1, v0, v3

    const-string v1, "email_address"

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/provider/GAMSHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 37
    new-array v0, v3, [Landroid/accounts/Account;

    sput-object v0, Lcom/motorola/blur/provider/GAMSHelper;->EMPTY_ACCOUNTS:[Landroid/accounts/Account;

    .line 40
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "capability"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/provider/GAMSHelper;->CAPABILITY_PROJECTION:[Ljava/lang/String;

    .line 42
    const-string v0, "%s.%s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "com.motorola.blur.provider"

    aput-object v2, v1, v3

    const-string v2, "fixedemail"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/GAMSHelper;->FIXED_EMAIL_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final composeBlurSocialFriendMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "provider"    # Ljava/lang/String;

    .prologue
    .line 319
    if-eqz p0, :cond_0

    .line 320
    const-string v0, "vnd.android.cursor.item/vnd.blur_social_profile.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/motorola/blur/provider/GAMSHelper;->composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "validated"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 79
    if-eqz p1, :cond_6

    .line 80
    const-string v8, "blur"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    const-string v1, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 83
    :cond_1
    const-string v8, "hux"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 84
    const-string v8, "GAMSHelper"

    new-array v9, v11, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GAMSHelper.composeGAMSAccountType(...,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") - returned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.verizon.hux.email"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    const-string v1, "com.verizon.hux.email"

    goto :goto_0

    .line 87
    :cond_2
    if-nez p2, :cond_3

    .line 88
    const-string v8, "%s.%s"

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "com.motorola.blur.provider"

    aput-object v10, v9, v12

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 92
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    if-eqz v0, :cond_6

    .line 93
    const-string v8, "%s.%s"

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "com.motorola.blur.provider"

    aput-object v10, v9, v12

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "accountType":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v7

    .line 98
    .local v7, "list":[Landroid/accounts/AuthenticatorDescription;
    move-object v2, v7

    .local v2, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v3, v2, v4

    .line 99
    .local v3, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v8, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 104
    .end local v3    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    move-result-object v5

    .line 105
    .local v5, "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->hasHasSMTPCapability()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 106
    move-object v2, v7

    array-length v6, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_6

    aget-object v3, v2, v4

    .line 107
    .restart local v3    # "desc":Landroid/accounts/AuthenticatorDescription;
    sget-object v8, Lcom/motorola/blur/provider/GAMSHelper;->FIXED_EMAIL_TYPE:Ljava/lang/String;

    iget-object v9, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 108
    sget-object v1, Lcom/motorola/blur/provider/GAMSHelper;->FIXED_EMAIL_TYPE:Ljava/lang/String;

    goto/16 :goto_0

    .line 106
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 115
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v3    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "i$":I
    .end local v5    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .end local v6    # "len$":I
    .end local v7    # "list":[Landroid/accounts/AuthenticatorDescription;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static final getAccountId(Landroid/content/Context;Landroid/accounts/Account;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 252
    const-string v4, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    const-wide/16 v0, 0x0

    .line 271
    :cond_0
    :goto_0
    return-wide v0

    .line 255
    :cond_1
    const-wide/16 v0, -0x1

    .line 256
    .local v0, "accountId":J
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 257
    .local v2, "accountManager":Landroid/accounts/AccountManager;
    if-eqz v2, :cond_0

    .line 259
    :try_start_0
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.motorola.blur.provider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    const-string v4, "account"

    invoke-virtual {v2, p1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "sAccountId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 262
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 265
    .end local v3    # "sAccountId":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static final getBlurAccounts(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 206
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 208
    .local v2, "accounts":[Landroid/accounts/Account;
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 209
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 210
    .local v7, "type":Ljava/lang/String;
    const-string v8, "com.motorola.blur.provider"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 211
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "type":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method public static final getGAMSAccountFromAccountId(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 172
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 173
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v6

    .line 193
    :cond_1
    :goto_0
    return-object v0

    .line 176
    :cond_2
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 177
    const-string v7, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 178
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v7, v2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 179
    const/4 v6, 0x0

    aget-object v0, v2, v6

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 181
    goto :goto_0

    .line 183
    .end local v2    # "accounts":[Landroid/accounts/Account;
    :cond_4
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 184
    .restart local v2    # "accounts":[Landroid/accounts/Account;
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v0, v3, v4

    .line 186
    .local v0, "acc":Landroid/accounts/Account;
    :try_start_0
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/blur/provider/GAMSHelper;->isBlurGAMSType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "account"

    invoke-virtual {v1, v0, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 184
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_6
    move-object v0, v6

    .line 193
    goto :goto_0

    .line 190
    .restart local v0    # "acc":Landroid/accounts/Account;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public static final getGAMSAccountsFromProvider(Landroid/content/Context;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 127
    if-eqz p1, :cond_4

    .line 128
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 129
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    if-eqz v1, :cond_4

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, "accountType":Ljava/lang/String;
    const-string v9, "blur"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 132
    const-string v2, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    .line 136
    :goto_0
    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 137
    .local v3, "accounts":[Landroid/accounts/Account;
    array-length v9, v3

    if-nez v9, :cond_3

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    move-result-object v6

    .line 140
    .local v6, "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->hasHasSMTPCapability()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 142
    sget-object v9, Lcom/motorola/blur/provider/GAMSHelper;->FIXED_EMAIL_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 143
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v4, v3

    .local v4, "arr$":[Landroid/accounts/Account;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v0, v4, v5

    .line 146
    .local v0, "account":Landroid/accounts/Account;
    const-string v9, "provider"

    invoke-virtual {v1, v0, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 147
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v3    # "accounts":[Landroid/accounts/Account;
    .end local v4    # "arr$":[Landroid/accounts/Account;
    .end local v5    # "i$":I
    .end local v6    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .end local v7    # "len$":I
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_1
    const-string v9, "%s.%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "com.motorola.blur.provider"

    aput-object v12, v10, v11

    aput-object p1, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 150
    .restart local v3    # "accounts":[Landroid/accounts/Account;
    .restart local v4    # "arr$":[Landroid/accounts/Account;
    .restart local v5    # "i$":I
    .restart local v6    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .restart local v7    # "len$":I
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 151
    sget-object v9, Lcom/motorola/blur/provider/GAMSHelper;->EMPTY_ACCOUNTS:[Landroid/accounts/Account;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "accounts":[Landroid/accounts/Account;
    check-cast v3, [Landroid/accounts/Account;

    .line 158
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v4    # "arr$":[Landroid/accounts/Account;
    .end local v5    # "i$":I
    .end local v6    # "info":Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .end local v7    # "len$":I
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_3
    :goto_2
    return-object v3

    :cond_4
    sget-object v3, Lcom/motorola/blur/provider/GAMSHelper;->EMPTY_ACCOUNTS:[Landroid/accounts/Account;

    goto :goto_2
.end method

.method public static final getProviderId(Landroid/content/Context;Landroid/accounts/Account;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 225
    const-string v4, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blur"

    invoke-static {v4, v5}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    .line 242
    :cond_0
    :goto_0
    return-wide v2

    .line 228
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 229
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-wide/16 v2, -0x1

    .line 231
    .local v2, "providerId":J
    :try_start_0
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/blur/provider/GAMSHelper;->isBlurGAMSType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    const-string v4, "provider"

    invoke-virtual {v0, p1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 237
    .end local v1    # "provider":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static final hasBlurAccount(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final hasGAMSAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 287
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 288
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 289
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 290
    .local v2, "accounts":[Landroid/accounts/Account;
    const-string v8, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 292
    array-length v8, v2

    if-ne v8, v6, :cond_1

    .line 300
    .end local v2    # "accounts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return v6

    .restart local v2    # "accounts":[Landroid/accounts/Account;
    :cond_1
    move v6, v7

    .line 292
    goto :goto_0

    .line 294
    :cond_2
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 295
    .local v0, "account":Landroid/accounts/Account;
    const-string v8, "account"

    invoke-virtual {v1, v0, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    move v6, v7

    .line 300
    goto :goto_0
.end method

.method public static final isBlurGAMSType(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 280
    if-eqz p0, :cond_1

    .line 281
    const-string v1, "com.motorola.blur.provider"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.verizon.hux.email"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 283
    :cond_1
    return v0
.end method

.method public static final parseGAMSAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p0, :cond_1

    .line 53
    const-string v1, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "blur"

    .line 61
    :goto_0
    return-object v1

    .line 56
    :cond_0
    const-string v1, "com.motorola.blur.provider"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 57
    .local v0, "index":I
    const-string v1, "com.motorola.blur.provider"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 61
    .end local v0    # "index":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final removeAccount(Landroid/accounts/AccountManager;Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .locals 2
    .param p0, "accountManager"    # Landroid/accounts/AccountManager;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AccountManager or Account cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    new-instance v0, Lcom/motorola/blur/provider/GAMSHelper$1;

    invoke-direct {v0, p2, p1}, Lcom/motorola/blur/provider/GAMSHelper$1;-><init>(Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;)V

    invoke-virtual {p0, p1, v0, p3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 345
    return-void
.end method
