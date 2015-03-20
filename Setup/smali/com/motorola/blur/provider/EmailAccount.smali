.class public Lcom/motorola/blur/provider/EmailAccount;
.super Ljava/lang/Object;
.source "EmailAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/EmailAccount$ServerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailAccount"


# instance fields
.field private mAccountId:J

.field private mAccountName:Ljava/lang/String;

.field private mAccountPrettyName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAutoDownloadOnWiFi:Z

.field private mAutoDownloadWhenCharging:Z

.field private mCapabilities:[Lcom/motorola/blur/provider/Email$Account$Capability;

.field private mDataPushStatus:I

.field private mDatabaseChanges:Landroid/content/ContentValues;

.field private mEmailAddress:Lcom/motorola/blur/util/mime/Address;

.field private mEnabled:Z

.field private mIncomingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

.field private mNotification:Z

.field private mOutgoingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

.field private mProtocol:Lcom/motorola/blur/provider/Email$Account$Protocol;

.field private mProvider:Ljava/lang/String;

.field private mRingtone:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mVibrate:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 76
    invoke-direct {p0}, Lcom/motorola/blur/provider/EmailAccount;-><init>()V

    .line 77
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountId:J

    .line 78
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountName:Ljava/lang/String;

    .line 79
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountType:Ljava/lang/String;

    .line 80
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/provider/Email$Account$Protocol;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/provider/Email$Account$Protocol;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mProtocol:Lcom/motorola/blur/provider/Email$Account$Protocol;

    .line 81
    const/16 v5, 0xe

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mProvider:Ljava/lang/String;

    .line 82
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mUserName:Ljava/lang/String;

    .line 83
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "email":Ljava/lang/String;
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "displayName":Ljava/lang/String;
    new-instance v5, Lcom/motorola/blur/util/mime/Address;

    invoke-direct {v5, v1, v2}, Lcom/motorola/blur/util/mime/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mEmailAddress:Lcom/motorola/blur/util/mime/Address;

    .line 86
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "capabilities":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 88
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    new-array v5, v5, [Lcom/motorola/blur/provider/Email$Account$Capability;

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mCapabilities:[Lcom/motorola/blur/provider/Email$Account$Capability;

    .line 90
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 91
    iget-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mCapabilities:[Lcom/motorola/blur/provider/Email$Account$Capability;

    aget-object v8, v4, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/motorola/blur/provider/Email$Account$Capability;->valueOf(I)Lcom/motorola/blur/provider/Email$Account$Capability;

    move-result-object v8

    aput-object v8, v5, v3

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v3    # "i":I
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    new-array v5, v7, [Lcom/motorola/blur/provider/Email$Account$Capability;

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mCapabilities:[Lcom/motorola/blur/provider/Email$Account$Capability;

    .line 96
    :cond_1
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mNotification:Z

    .line 97
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mRingtone:Ljava/lang/String;

    .line 98
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mVibrate:Z

    .line 99
    const/16 v5, 0xb

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mDataPushStatus:I

    .line 100
    const/16 v5, 0xc

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mAutoDownloadOnWiFi:Z

    .line 101
    const/16 v5, 0xd

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mAutoDownloadWhenCharging:Z

    .line 102
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_5

    :goto_4
    iput-boolean v6, p0, Lcom/motorola/blur/provider/EmailAccount;->mEnabled:Z

    .line 103
    const/16 v5, 0xf

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountPrettyName:Ljava/lang/String;

    .line 104
    return-void

    :cond_2
    move v5, v7

    .line 98
    goto :goto_1

    :cond_3
    move v5, v7

    .line 100
    goto :goto_2

    :cond_4
    move v5, v7

    .line 101
    goto :goto_3

    :cond_5
    move v6, v7

    .line 102
    goto :goto_4
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/motorola/blur/provider/EmailAccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getAccount(J)Lcom/motorola/blur/provider/EmailAccount;
    .locals 7
    .param p0, "accountId"    # J

    .prologue
    const/4 v2, 0x0

    .line 123
    sget-object v0, Lcom/motorola/blur/provider/Email$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/blur/provider/EmailAccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 127
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v2, Lcom/motorola/blur/provider/EmailAccount;

    invoke-direct {v2, v6}, Lcom/motorola/blur/provider/EmailAccount;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_0
    :goto_0
    return-object v2

    .line 131
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/provider/EmailAccount;
    .locals 9
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Lcom/motorola/blur/util/ContextUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 139
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 140
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 141
    .local v6, "list":[Landroid/accounts/Account;
    move-object v2, v6

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 142
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    const-string v7, "account"

    invoke-virtual {v1, v0, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/motorola/blur/provider/EmailAccount;->getAccount(J)Lcom/motorola/blur/provider/EmailAccount;

    move-result-object v7

    .line 146
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_1
    return-object v7

    .line 141
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getAccounts()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/provider/EmailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 150
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/blur/provider/EmailAccount;>;"
    invoke-static {}, Lcom/motorola/blur/provider/EmailAccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/Email$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 152
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 153
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/motorola/blur/provider/EmailAccount;

    invoke-direct {v0, v6}, Lcom/motorola/blur/provider/EmailAccount;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_1
    return-object v7
.end method

.method private static getContentResolver()Landroid/content/ContentResolver;
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/motorola/blur/util/ContextUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 113
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get application context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 116
    .local v1, "cr":Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 117
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get content resolver"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_1
    return-object v1
.end method

.method private getServer(Landroid/net/Uri;)Lcom/motorola/blur/provider/EmailAccount$ServerInfo;
    .locals 7
    .param p1, "serverUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-wide v3, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountId:J

    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 375
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/blur/provider/EmailAccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 376
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 378
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    invoke-direct {v0, p0, v6}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;-><init>(Lcom/motorola/blur/provider/EmailAccount;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 385
    :goto_0
    return-object v0

    .line 382
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 385
    :cond_1
    new-instance v0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    invoke-direct {v0, p0}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;-><init>(Lcom/motorola/blur/provider/EmailAccount;)V

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isNew()Z
    .locals 4

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newAccount()Lcom/motorola/blur/provider/EmailAccount;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/motorola/blur/provider/EmailAccount;

    invoke-direct {v0}, Lcom/motorola/blur/provider/EmailAccount;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountId:J

    return-wide v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilities()[Lcom/motorola/blur/provider/Email$Account$Capability;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mCapabilities:[Lcom/motorola/blur/provider/Email$Account$Capability;

    return-object v0
.end method

.method public getDataPushStatus()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDataPushStatus:I

    return v0
.end method

.method public getEmailAddress()Lcom/motorola/blur/util/mime/Address;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mEmailAddress:Lcom/motorola/blur/util/mime/Address;

    return-object v0
.end method

.method public getIncomingServer()Lcom/motorola/blur/provider/EmailAccount$ServerInfo;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mIncomingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/motorola/blur/provider/EmailAccount;->isNew()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    invoke-direct {v0, p0}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;-><init>(Lcom/motorola/blur/provider/EmailAccount;)V

    iput-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mIncomingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    .line 359
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mIncomingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    return-object v0

    .line 356
    :cond_1
    sget-object v0, Lcom/motorola/blur/provider/Email$Account;->IN_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/motorola/blur/provider/EmailAccount;->getServer(Landroid/net/Uri;)Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mIncomingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    goto :goto_0
.end method

.method public getOutgoingServer()Lcom/motorola/blur/provider/EmailAccount$ServerInfo;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mOutgoingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    if-nez v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/motorola/blur/provider/EmailAccount;->isNew()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    invoke-direct {v0, p0}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;-><init>(Lcom/motorola/blur/provider/EmailAccount;)V

    iput-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mOutgoingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    .line 370
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mOutgoingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    return-object v0

    .line 367
    :cond_1
    sget-object v0, Lcom/motorola/blur/provider/Email$Account;->OUT_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/motorola/blur/provider/EmailAccount;->getServer(Landroid/net/Uri;)Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mOutgoingServer:Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    goto :goto_0
.end method

.method public getProtocol()Lcom/motorola/blur/provider/Email$Account$Protocol;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mProtocol:Lcom/motorola/blur/provider/Email$Account$Protocol;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public hasChanged()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoDownloadOnWiFi()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAutoDownloadOnWiFi:Z

    return v0
.end method

.method public isAutoDownloadWhenCharging()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAutoDownloadWhenCharging:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mEnabled:Z

    return v0
.end method

.method public isNotification()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mNotification:Z

    return v0
.end method

.method public isVibrate()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mVibrate:Z

    return v0
.end method

.method public remove()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    sget-object v1, Lcom/motorola/blur/provider/Email$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 163
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/blur/provider/EmailAccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 390
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 391
    .local v2, "updated":Z
    invoke-virtual {p0}, Lcom/motorola/blur/provider/EmailAccount;->getIncomingServer()Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    move-result-object v1

    .line 392
    .local v1, "server":Lcom/motorola/blur/provider/EmailAccount$ServerInfo;
    invoke-virtual {v1}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->hasChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    iget-object v4, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v5, "in.server"

    invoke-virtual {v1}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v1}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->reset()V

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/provider/EmailAccount;->getOutgoingServer()Lcom/motorola/blur/provider/EmailAccount$ServerInfo;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->hasChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    iget-object v4, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v5, "out.server"

    invoke-virtual {v1}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1}, Lcom/motorola/blur/provider/EmailAccount$ServerInfo;->reset()V

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/motorola/blur/provider/EmailAccount;->isNew()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 402
    invoke-virtual {p0}, Lcom/motorola/blur/provider/EmailAccount;->hasChanged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    sget-object v4, Lcom/motorola/blur/provider/Email$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 404
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 405
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountId:J

    .line 406
    const/4 v2, 0x1

    .line 417
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 418
    return v2

    .line 408
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The accocunt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be created!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 412
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/blur/provider/EmailAccount;->hasChanged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 413
    sget-object v4, Lcom/motorola/blur/provider/Email$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    invoke-virtual {v0, v4, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAccountPrettyName(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountPrettyName"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountPrettyName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountPrettyName:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "account_pretty_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method public setAccountTypeAndName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountName:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iput-object p2, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountName:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountType:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mAccountType:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    return-void
.end method

.method public setAutoDownloadMode(Z)V
    .locals 3
    .param p1, "autoDownloadOnWiFi"    # Z

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAutoDownloadOnWiFi:Z

    if-eq v0, p1, :cond_0

    .line 320
    iput-boolean p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mAutoDownloadOnWiFi:Z

    .line 321
    iget-object v1, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v2, "download_on_wifi"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    :cond_0
    return-void

    .line 321
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoDownloadWhenCharging(Z)V
    .locals 3
    .param p1, "autoDownloadWhenCharging"    # Z

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mAutoDownloadWhenCharging:Z

    if-eq v0, p1, :cond_0

    .line 331
    iput-boolean p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mAutoDownloadWhenCharging:Z

    .line 332
    iget-object v1, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v2, "download_when_charging"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    :cond_0
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCapabilities([Lcom/motorola/blur/provider/Email$Account$Capability;)V
    .locals 5
    .param p1, "capabilities"    # [Lcom/motorola/blur/provider/Email$Account$Capability;

    .prologue
    .line 257
    iget-object v2, p0, Lcom/motorola/blur/provider/EmailAccount;->mCapabilities:[Lcom/motorola/blur/provider/Email$Account$Capability;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mCapabilities:[Lcom/motorola/blur/provider/Email$Account$Capability;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, p1

    if-lez v2, :cond_0

    .line 261
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/motorola/blur/provider/Email$Account$Capability;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 263
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/motorola/blur/provider/Email$Account$Capability;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v3, "capabilities"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public setDataPushStatus(I)V
    .locals 3
    .param p1, "dataPushStatus"    # I

    .prologue
    .line 308
    iget v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDataPushStatus:I

    if-eq v0, p1, :cond_0

    .line 309
    iput p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mDataPushStatus:I

    .line 310
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "data_push"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    :cond_0
    return-void
.end method

.method public setEmailAddress(Lcom/motorola/blur/util/mime/Address;)V
    .locals 3
    .param p1, "emailAddress"    # Lcom/motorola/blur/util/mime/Address;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mEmailAddress:Lcom/motorola/blur/util/mime/Address;

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "user_real_name"

    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "email_address"

    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mEmailAddress:Lcom/motorola/blur/util/mime/Address;

    .line 250
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mEmailAddress:Lcom/motorola/blur/util/mime/Address;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/Address;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "user_real_name"

    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mEmailAddress:Lcom/motorola/blur/util/mime/Address;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "email_address"

    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEmailAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Lcom/motorola/blur/util/mime/Address;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/util/mime/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/provider/EmailAccount;->setEmailAddress(Lcom/motorola/blur/util/mime/Address;)V

    .line 235
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 342
    iput-boolean p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mEnabled:Z

    .line 343
    iget-object v1, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v2, "enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    :cond_0
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNotification(Z)V
    .locals 3
    .param p1, "notification"    # Z

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mNotification:Z

    if-eq v0, p1, :cond_0

    .line 276
    iput-boolean p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mNotification:Z

    .line 277
    iget-object v1, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v2, "notification"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    :cond_0
    return-void

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProtocol(Lcom/motorola/blur/provider/Email$Account$Protocol;)V
    .locals 3
    .param p1, "protocol"    # Lcom/motorola/blur/provider/Email$Account$Protocol;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mProtocol:Lcom/motorola/blur/provider/Email$Account$Protocol;

    if-eq v0, p1, :cond_0

    .line 191
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mProtocol:Lcom/motorola/blur/provider/Email$Account$Protocol;

    .line 192
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "protocol"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mProvider:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mProvider:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "provider"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 2
    .param p1, "ringtone"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mRingtone:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mRingtone:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "ringtone"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mUserName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/motorola/blur/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iput-object p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mUserName:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method public setVibrate(Z)V
    .locals 3
    .param p1, "vibrate"    # Z

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/motorola/blur/provider/EmailAccount;->mVibrate:Z

    if-eq v0, p1, :cond_0

    .line 298
    iput-boolean p1, p0, Lcom/motorola/blur/provider/EmailAccount;->mVibrate:Z

    .line 299
    iget-object v1, p0, Lcom/motorola/blur/provider/EmailAccount;->mDatabaseChanges:Landroid/content/ContentValues;

    const-string v2, "vibrate"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    :cond_0
    return-void

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
