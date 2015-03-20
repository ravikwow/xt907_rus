.class public Lcom/motorola/messaging/transaction/TransactionSettings;
.super Ljava/lang/Object;
.source "TransactionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/TransactionSettings$1;,
        Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;
    }
.end annotation


# static fields
.field private static final APN_PROJECTION:[Ljava/lang/String;

.field private static final DEBUG:Z

.field protected static final DUMP_APN:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mApn:Ljava/lang/String;

.field private mMsgUri:Ljava/lang/String;

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mServiceCenter:Ljava/lang/String;

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 39
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->DUMP_APN:Z

    .line 40
    sput-boolean v1, Lcom/motorola/messaging/transaction/TransactionSettings;->DEBUG:Z

    .line 41
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->LOCAL_LOG:Z

    .line 52
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v0, v2

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mmsc2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "class"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionSettings;->APN_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "retrieveType"    # Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;
    .param p3, "apn"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyPort:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mMsgUri:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/TransactionSettings;->retrieveApn(Landroid/content/Context;Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "retrieveType"    # Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "msgUri"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyPort:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mMsgUri:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mMsgUri:Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/TransactionSettings;->retrieveApn(Landroid/content/Context;Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "mmscUrl"    # Ljava/lang/String;
    .param p2, "proxyAddr"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyPort:I

    .line 48
    iput-object v3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mMsgUri:Ljava/lang/String;

    .line 106
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "TransactionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransactionSettings, MMSC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z

    .line 111
    iput-object v3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mApn:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyPort:I

    .line 115
    return-void
.end method

.method private isPrimaryMmscValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgUri"    # Ljava/lang/String;

    .prologue
    .line 305
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "TransactionSettings"

    const-string v1, "isPrimaryMmscValid"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 310
    .local v12, "uri":Landroid/net/Uri;
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 312
    .local v8, "msgId":J
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 313
    .local v13, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 314
    const-string v0, "message"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 318
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 319
    .local v10, "retryIndex":I
    if-eqz v7, :cond_2

    .line 321
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    const-string v0, "retry_index"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v10, v0, 0x1

    .line 326
    :cond_1
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 330
    :cond_2
    new-instance v11, Lcom/motorola/messaging/transaction/DefaultRetryScheme;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v11, p1, v0, v1}, Lcom/motorola/messaging/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;II)V

    .line 332
    .local v11, "scheme":Lcom/motorola/messaging/transaction/DefaultRetryScheme;
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 333
    const-string v0, "TransactionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Retry limit for each Mmsc server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_3
    invoke-virtual {v11}, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v0

    if-ge v10, v0, :cond_5

    .line 337
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 338
    const-string v0, "TransactionSettings"

    const-string v1, "Select Primary Mmsc server"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_4
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    .line 326
    .end local v11    # "scheme":Lcom/motorola/messaging/transaction/DefaultRetryScheme;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 342
    .restart local v11    # "scheme":Lcom/motorola/messaging/transaction/DefaultRetryScheme;
    :cond_5
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_6

    .line 343
    const-string v0, "TransactionSettings"

    const-string v1, "Select Secondary Mmsc server"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidApn(Landroid/content/Context;Landroid/database/Cursor;ILcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "entry"    # I
    .param p4, "retrieveType"    # Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;
    .param p5, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    sget-object v5, Lcom/motorola/messaging/transaction/TransactionSettings$1;->$SwitchMap$com$motorola$messaging$transaction$TransactionSettings$RetrieveType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 225
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSecondaryMmscEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mMsgUri:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 226
    :cond_1
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 243
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 271
    :goto_1
    return v3

    .line 214
    :pswitch_0
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mApn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mApn:Ljava/lang/String;

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 228
    :cond_3
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mMsgUri:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/motorola/messaging/transaction/TransactionSettings;->isPrimaryMmscValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 230
    .local v1, "isPrimaryMmscValid":Z
    if-eqz v1, :cond_4

    .line 231
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 236
    :goto_2
    sget-boolean v5, Lcom/motorola/messaging/transaction/TransactionSettings;->LOCAL_LOG:Z

    if-eqz v5, :cond_2

    .line 237
    const-string v5, "TransactionSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mMsgUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v5, "TransactionSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMSC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_4
    const/4 v5, 0x5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    goto :goto_2

    .line 247
    .end local v1    # "isPrimaryMmscValid":Z
    :cond_5
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/messaging/transaction/NetworkManager;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 252
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/messaging/transaction/NetworkManager;->isValidAPNType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 253
    const-string v3, "TransactionSettings"

    const-string v5, "invalid APN check type will be ignored, MMSC is checked instead"

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_6
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 258
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/messaging/transaction/NetworkManager;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    .line 261
    :cond_7
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/TransactionSettings;->isProxySet()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 262
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "portString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v2    # "portString":Ljava/lang/String;
    :cond_8
    :goto_3
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mApn:Ljava/lang/String;

    move v3, v4

    .line 271
    goto/16 :goto_1

    .line 265
    .restart local v2    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "TransactionSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad port number format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private retrieveApn(Landroid/content/Context;Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "retrieveType"    # Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;
    .param p3, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 135
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "TransactionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveApn START, apn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", retrieveType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", old settings="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    iput-boolean v7, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyPort:I

    .line 148
    iput-object p3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mApn:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;->DEFAULT:Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;

    if-ne p2, v0, :cond_3

    .line 151
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsDefaultApnName()Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "mmsDefaultApnName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "TransactionSettings"

    const-string v1, "MMS-STATUS - Retrieve APN settings failed, no APN name"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v9    # "mmsDefaultApnName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 157
    .restart local v9    # "mmsDefaultApnName":Ljava/lang/String;
    :cond_2
    iput-object v9, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mApn:Ljava/lang/String;

    .line 158
    sget-object p2, Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;->SINGLE:Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;

    .line 162
    .end local v9    # "mmsDefaultApnName":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 163
    .local v2, "table":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/motorola/messaging/transaction/TransactionSettings;->APN_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 166
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_4

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 167
    :cond_4
    const-string v0, "TransactionSettings"

    const-string v1, "No APNs found in Database"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-static {v5}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 171
    :cond_5
    :try_start_1
    const-string v0, "TransactionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveApn, num APNs found="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v6, 0x0

    .line 174
    .local v6, "i":I
    :cond_6
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    add-int/lit8 v6, v6, 0x1

    .line 176
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->DUMP_APN:Z

    if-eqz v0, :cond_7

    .line 177
    const-string v0, "TransactionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entry="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mcc="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mnc="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x7

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mmsc="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mmsc2="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mmsproxy="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mmsport="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", class="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", bearer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x9

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", protocol="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x8

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_7
    iget-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z

    if-nez v0, :cond_6

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    .line 191
    invoke-direct/range {v3 .. v8}, Lcom/motorola/messaging/transaction/TransactionSettings;->isValidApn(Landroid/content/Context;Landroid/database/Cursor;ILcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 195
    .end local v6    # "i":I
    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .restart local v6    # "i":I
    :cond_8
    invoke-static {v5}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 198
    iget-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z

    if-nez v0, :cond_9

    .line 199
    const-string v0, "TransactionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-STATUS - Invalid APN setting, apn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_9
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionSettings;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "TransactionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-STATUS - APN found, apn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getMmscUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyPort:I

    return v0
.end method

.method public isProxySet()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Service Center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Proxy Address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Proxy Port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/messaging/transaction/TransactionSettings;->mProxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
