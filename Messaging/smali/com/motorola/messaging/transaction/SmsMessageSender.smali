.class public Lcom/motorola/messaging/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/motorola/messaging/transaction/MessageSender;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static final LOCKED_PROJECTION:[Ljava/lang/String;

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCommonIdForDests:I

.field private final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field private mIsResend:Z

.field private final mLocked:I

.field private mMessageId:J

.field private final mMessageText:Ljava/lang/String;

.field private final mNumberOfDests:I

.field private final mPendingNoOfDests:I

.field private final mPriority:I

.field private mRequestDeliveryReport:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 59
    sput-boolean v1, Lcom/motorola/messaging/transaction/SmsMessageSender;->DEBUG:Z

    .line 60
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "reply_path_present"

    aput-object v3, v0, v2

    const-string v3, "service_center"

    aput-object v3, v0, v1

    sput-object v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    sget-object v1, Lcom/motorola/messaging/provider/MessageProjection;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCKED_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dests"    # [Ljava/lang/String;
    .param p3, "msgText"    # Ljava/lang/String;
    .param p4, "priority"    # I
    .param p5, "requestReport"    # Z

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageId:J

    .line 70
    iput-boolean v3, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mIsResend:Z

    .line 71
    iput-boolean v3, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    .line 90
    iput-object p1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 91
    iput-object p3, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 92
    array-length v1, p2

    iput v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 93
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iput p4, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPriority:I

    .line 98
    :goto_0
    iget v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    iput v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPendingNoOfDests:I

    .line 99
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 100
    .local v0, "generator":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mCommonIdForDests:I

    .line 101
    iget v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v2, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iput-boolean p5, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    .line 104
    iput v3, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mLocked:I

    .line 105
    return-void

    .line 96
    .end local v0    # "generator":Ljava/util/Random;
    :cond_0
    iput v3, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPriority:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JIIIIZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dests"    # [Ljava/lang/String;
    .param p3, "msgText"    # Ljava/lang/String;
    .param p4, "msgId"    # J
    .param p6, "commonId"    # I
    .param p7, "noOfDests"    # I
    .param p8, "priority"    # I
    .param p9, "locked"    # I
    .param p10, "requestReport"    # Z

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageId:J

    .line 70
    iput-boolean v3, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mIsResend:Z

    .line 71
    iput-boolean v3, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    .line 109
    iput-object p1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 110
    iput-object p3, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 111
    array-length v1, p2

    iput v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 112
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iput p8, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPriority:I

    .line 117
    :goto_0
    iput-wide p4, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageId:J

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mIsResend:Z

    .line 119
    iput p7, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPendingNoOfDests:I

    .line 120
    const/4 v1, -0x1

    if-eq p6, v1, :cond_1

    .line 121
    iput p6, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mCommonIdForDests:I

    .line 126
    :goto_1
    iget v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 127
    iput p9, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mLocked:I

    .line 129
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v2, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iput-boolean p10, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    .line 131
    return-void

    .line 115
    :cond_0
    iput v3, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPriority:I

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 124
    .local v0, "generator":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mCommonIdForDests:I

    goto :goto_1
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 11
    .param p1, "threadId"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 398
    const/4 v7, 0x0

    .line 401
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 405
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move-object v0, v9

    .line 410
    :goto_0
    return-object v0

    .line 409
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_2

    .line 410
    .local v8, "replyPathPresent":Z
    :goto_1
    if-eqz v8, :cond_3

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 412
    :goto_2
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v8    # "replyPathPresent":Z
    :cond_2
    move v8, v10

    .line 409
    goto :goto_1

    .restart local v8    # "replyPathPresent":Z
    :cond_3
    move-object v0, v9

    .line 410
    goto :goto_2

    .line 412
    .end local v8    # "replyPathPresent":Z
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected static updateLockField(Landroid/net/Uri;ILandroid/content/Context;)V
    .locals 7
    .param p0, "msgUri"    # Landroid/net/Uri;
    .param p1, "locked"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v3, "updateLockedValue":Landroid/content/ContentValues;
    sget-object v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCKED_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    return-void

    .line 423
    :catch_0
    move-exception v6

    .line 424
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v0}, Lcom/motorola/messaging/util/MmsException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public sendMessage(J)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 134
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 135
    const-string v3, "SmsMessageSender"

    const-string v4, "sendMessage"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v3, :cond_2

    .line 140
    :cond_1
    new-instance v3, Lcom/motorola/messaging/util/MmsException;

    const-string v4, "Null message body or dest."

    invoke-direct {v3, v4}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-string v4, "out"

    invoke-static {v3, v4}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    const/4 v3, 0x0

    .line 380
    :goto_0
    return v3

    .line 150
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 151
    const/4 v3, 0x0

    .line 152
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsCallbackNumEnable()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 153
    const-string v5, "pref_key_enable_callback_number"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 155
    if-eqz v5, :cond_20

    .line 156
    const-string v3, "pref_key_sms_mms_callback_number"

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 158
    invoke-static {}, Lcom/motorola/messaging/contact/ContactUtils;->getOwnMSISDN()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    .line 163
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 171
    new-instance v3, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;-><init>(Landroid/content/Context;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    .line 174
    if-nez v3, :cond_1e

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object v13, v3

    .line 180
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSendBlankSmsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 181
    const-string v3, "SmsMessageSender"

    const-string v4, "SMS-STATUS - Tried to send an empty message"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v3, 0x0

    goto :goto_0

    .line 185
    :cond_4
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 186
    const/4 v3, 0x0

    move v14, v3

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v14, v3, :cond_1b

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v14

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 189
    const-string v3, "SmsMessageSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS-STATUS - Message will not be sent! dest addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v5, v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_4
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_3

    .line 195
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v14

    aput-object v4, v19, v3

    .line 205
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 206
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSmsEmailEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v14

    invoke-static {v4}, Lcom/motorola/messaging/contact/ContactUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v14

    invoke-static {v4}, Lcom/motorola/messaging/contact/ContactUtils;->isAliasAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 209
    :cond_6
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v3, :cond_7

    .line 210
    const-string v3, "SmsMessageSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert SMS email address, emailGatewayNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailGatewayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v14

    invoke-static {v4}, Lcom/motorola/messaging/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 216
    const/4 v3, 0x0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailGatewayNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v3

    .line 217
    invoke-static {v5}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 218
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v11, v3

    move-object v15, v4

    move-object/from16 v16, v5

    .line 227
    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSendBlankSmsEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 229
    const-string v3, "SmsMessageSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS-STATUS - Message will not be sent! messages.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 221
    :cond_8
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportNationalTable()Z

    move-result v4

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportLockingShiftTable()Z

    move-result v5

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v6

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v4, v5, v6, v7}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->divideMessage(Ljava/lang/String;ZZZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v11, v3

    move-object v15, v4

    move-object/from16 v16, v13

    goto :goto_5

    .line 235
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPriority:I

    const/4 v6, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v10}, Lcom/motorola/messaging/transaction/MOSmsManager;->addMessageToOutbox(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    .line 238
    new-instance v3, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v4, 0x4

    const-string v5, "SMS_SENT"

    invoke-direct {v3, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 239
    const-string v4, "msgSize"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 240
    const-string v4, "numDests"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-virtual {v3, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 241
    const-string v4, "numSeg"

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 242
    const-string v4, "requestReport"

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    invoke-virtual {v3, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Z)V

    .line 243
    const-string v4, "isEmail"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Z)V

    .line 244
    invoke-virtual {v3}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 253
    const/4 v3, 0x1

    if-eq v5, v3, :cond_a

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSendBlankSmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_11

    .line 255
    :cond_a
    const-string v3, "SmsMessageSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS-STATUS - Sending short SMS Message, uri="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    :try_start_1
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v3, :cond_b

    .line 268
    const-string v3, "SmsMessageSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMS-STATUS - The target address is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v8, v8, v14

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mIsResend:Z

    if-eqz v3, :cond_e

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 275
    const-string v8, "content://sms/"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 276
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageId:J

    long-to-int v9, v9

    int-to-long v9, v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 278
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsErrorCodesEnable()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 279
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mMessageId:J

    long-to-int v9, v9

    invoke-static {v9, v3}, Lcom/motorola/messaging/transaction/MOSmsManager;->updateMsgPendingId(II)V

    .line 282
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mLocked:I

    if-eqz v3, :cond_d

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mLocked:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v10}, Lcom/motorola/messaging/transaction/SmsMessageSender;->updateLockField(Landroid/net/Uri;ILandroid/content/Context;)V

    .line 286
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v4, v8, v9, v10}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    :cond_e
    :goto_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v14

    invoke-static {v3, v4}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/lang/String;)J

    move-result-wide v20

    .line 295
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v4

    .line 297
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v5, :cond_13

    .line 299
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    if-eqz v8, :cond_12

    .line 300
    sget-boolean v8, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v8, :cond_f

    .line 301
    const-string v8, "SmsMessageSender"

    const-string v9, "Create intent for delivery report"

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.motorola.contracts.messaging.intent.SMS_DELIVERED"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-class v23, Lcom/motorola/messaging/receiver/MessageStatusReceiver;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v10, v11, v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v11, 0x40000000

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_10
    :goto_a
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.motorola.contracts.messaging.intent.SMS_SENT"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v16, Lcom/motorola/messaging/receiver/SmsReceiver;

    move-object/from16 v0, v16

    invoke-direct {v8, v9, v10, v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "custom://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v9, "destinations_set_id"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mCommonIdForDests:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string v9, "max_parts"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v9, "max_destinations"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPendingNoOfDests:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x40000000

    invoke-static {v9, v10, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 247
    :catch_0
    move-exception v3

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/motorola/messaging/provider/SqliteManager;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_6

    .line 258
    :cond_11
    const-string v3, "SmsMessageSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS-STATUS - Sending Concatenated SMS Message, uri="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", segments="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 288
    :catch_1
    move-exception v3

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/motorola/messaging/provider/SqliteManager;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_8

    .line 314
    :cond_12
    sget-boolean v8, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v8, :cond_10

    .line 315
    const-string v8, "SmsMessageSender"

    const-string v9, "Delivery report disabled"

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 332
    :cond_13
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v3, :cond_14

    .line 333
    const-string v3, "SmsMessageSender"

    const-string v8, "sendMultipartTextMessage"

    invoke-static {v3, v8}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_14
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEncodingMethod()I

    move-result v10

    .line 339
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v11

    .line 341
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getOneRRCConnectionEnabled()Z

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_19

    const/4 v3, 0x1

    if-ne v5, v3, :cond_19

    .line 342
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v3, :cond_15

    .line 343
    const-string v3, "SmsMessageSender"

    const-string v5, "One RRC Enabled"

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_15
    const/4 v3, 0x0

    .line 346
    const/4 v5, 0x0

    .line 347
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1d

    .line 348
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    move-object/from16 v16, v3

    .line 350
    :goto_b
    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c

    .line 351
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    move-object v8, v3

    .line 354
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mNumberOfDests:I

    add-int/lit8 v3, v3, -0x1

    if-ne v14, v3, :cond_17

    .line 355
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v3, :cond_16

    .line 356
    const-string v3, "SmsMessageSender"

    const-string v5, "One RRC: Send last message or One SMS Message"

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_16
    const/4 v3, 0x0

    aget-object v3, v19, v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPriority:I

    move-object v5, v15

    move-object v8, v12

    invoke-static/range {v3 .. v11}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V

    .line 377
    :goto_d
    invoke-static {}, Lcom/motorola/messaging/provider/Recycler;->getInstance()Lcom/motorola/messaging/provider/Recycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v20

    invoke-virtual {v3, v4, v0, v1}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessagesByThread(Landroid/content/Context;J)V

    goto/16 :goto_4

    .line 361
    :cond_17
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v3, :cond_18

    .line 362
    const-string v3, "SmsMessageSender"

    const-string v5, "One RRC: Send Multi Destination addrs"

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_18
    const/4 v3, 0x0

    aget-object v3, v19, v3

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPriority:I

    move-object/from16 v6, v16

    move-object v7, v8

    move-object v8, v12

    invoke-static/range {v3 .. v11}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->sendTextMessageMore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_d

    .line 369
    :cond_19
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsMessageSender;->LOCAL_LOG:Z

    if-eqz v3, :cond_1a

    .line 370
    const-string v3, "SmsMessageSender"

    const-string v5, "One RRC Disabled"

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_1a
    const/4 v3, 0x0

    aget-object v3, v19, v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/motorola/messaging/transaction/SmsMessageSender;->mPriority:I

    move-object v5, v15

    move-object v8, v12

    invoke-static/range {v3 .. v11}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_d

    .line 380
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1c
    move-object v8, v5

    goto :goto_c

    :cond_1d
    move-object/from16 v16, v3

    goto :goto_b

    :cond_1e
    move-object v13, v3

    goto/16 :goto_2

    :cond_1f
    move-object v12, v3

    goto/16 :goto_1

    :cond_20
    move-object v12, v3

    goto/16 :goto_1
.end method
