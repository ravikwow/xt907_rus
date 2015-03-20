.class public Lcom/motorola/messaging/activity/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;,
        Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static mAlertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/activity/ClassZeroActivity;->DEBUG:Z

    .line 60
    sget-boolean v0, Lcom/motorola/messaging/activity/ClassZeroActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 231
    new-instance v0, Lcom/motorola/messaging/activity/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ClassZeroActivity$1;-><init>(Lcom/motorola/messaging/activity/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 240
    new-instance v0, Lcom/motorola/messaging/activity/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ClassZeroActivity$2;-><init>(Lcom/motorola/messaging/activity/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ClassZeroActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ClassZeroActivity;->cancelNotification(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/ClassZeroActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ClassZeroActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ClassZeroActivity;->checkIfFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ClassZeroActivity;
    .param p1, "x1"    # Landroid/telephony/SmsMessage;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->replaceMessage(Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ClassZeroActivity;
    .param p1, "x1"    # Landroid/telephony/SmsMessage;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z

    return v0
.end method

.method private cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 108
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 109
    return-void
.end method

.method private checkIfFinish()V
    .locals 3

    .prologue
    .line 258
    sget-object v2, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 259
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 260
    .local v0, "size":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/messaging/activity/ClassZeroActivity;->cancelNotification(Landroid/content/Context;)V

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 264
    sget-boolean v1, Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "ClassZeroActivity"

    const-string v2, "empty list, finish"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    return-void

    .line 260
    .end local v0    # "size":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;Z)Landroid/content/ContentValues;
    .locals 6
    .param p1, "sms"    # Landroid/telephony/SmsMessage;
    .param p2, "read"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 339
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "date"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    const-string v1, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string v4, "read"

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string v4, "seen"

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 347
    const-string v1, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_0
    const-string v1, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v1, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "callback_number"

    invoke-static {p1}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->getCallbackNumberAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "priority"

    invoke-static {p1}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->getPriority(Landroid/telephony/SmsMessage;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string v1, "body"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-object v0

    :cond_1
    move v1, v3

    .line 343
    goto :goto_0

    :cond_2
    move v1, v3

    .line 344
    goto :goto_1

    :cond_3
    move v2, v3

    .line 350
    goto :goto_2
.end method

.method private formatMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v0, "         "

    .line 221
    .local v0, "BUFFER":Ljava/lang/String;
    const-string v2, "         "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v1, v2, 0x2

    .line 223
    .local v1, "BUFFER_OFFSET":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 228
    :goto_0
    return-object v2

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "         "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "         "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v2, p1

    .line 228
    goto :goto_0
.end method

.method public static hasMessagesToShow()Z
    .locals 3

    .prologue
    .line 83
    sget-object v2, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 84
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 85
    .local v0, "size":I
    monitor-exit v2

    .line 86
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 86
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyNewMessage(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {p1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isMessageNotificationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 95
    .local v1, "notification":Landroid/app/Notification;
    invoke-static {p1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isNotificationVibrate(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 100
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 102
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static declared-synchronized removeDialog(Ljava/lang/Object;)V
    .locals 4
    .param p0, "dialog"    # Ljava/lang/Object;

    .prologue
    .line 251
    const-class v1, Lcom/motorola/messaging/activity/ClassZeroActivity;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    :try_start_1
    sget-object v0, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    sget-object v3, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 253
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    monitor-exit v1

    return-void

    .line 253
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private replaceMessage(Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;
    .locals 18
    .param p1, "sms"    # Landroid/telephony/SmsMessage;
    .param p2, "read"    # Z

    .prologue
    .line 279
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const-string v2, "address"

    aput-object v2, v3, v0

    const/4 v0, 0x2

    const-string v2, "protocol"

    aput-object v2, v3, v0

    .line 281
    .local v3, "REPLACE_PROJECTION":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 283
    .local v12, "REPLACE_COLUMN_ID":I
    invoke-direct/range {p0 .. p2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;Z)Landroid/content/ContentValues;

    move-result-object v9

    .line 284
    .local v9, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 285
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v16

    .line 286
    .local v16, "originatingAddress":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v17

    .line 287
    .local v17, "protocolIdentifier":I
    const-string v4, "address = ? AND protocol = ?"

    .line 288
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v16, v5, v0

    const/4 v0, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 291
    .local v5, "selectionArgs":[Ljava/lang/String;
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 293
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 294
    const/4 v8, 0x0

    .line 310
    :goto_0
    return-object v8

    .line 298
    :cond_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 300
    .local v14, "messageId":J
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 303
    .local v8, "messageUri":Landroid/net/Uri;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v1

    invoke-static/range {v6 .. v11}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-static {v13}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v8    # "messageUri":Landroid/net/Uri;
    .end local v14    # "messageId":J
    :cond_1
    invoke-static {v13}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 310
    invoke-direct/range {p0 .. p2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    invoke-static {v13}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method private storeMessage(Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;
    .locals 3
    .param p1, "sms"    # Landroid/telephony/SmsMessage;
    .param p2, "read"    # Z

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;Z)Landroid/content/ContentValues;

    move-result-object v1

    .line 273
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v2, v1}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "pdu"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 116
    .local v4, "pdu":[B
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "pdu"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 120
    sget-object v7, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 121
    :try_start_0
    sget-object v6, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 122
    .local v5, "size":I
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ClassZeroActivity;->checkIfFinish()V

    .line 125
    sget-boolean v6, Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    .line 126
    const-string v6, "ClassZeroActivity"

    const-string v7, "null pdu and no pending alerts, return"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 122
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 131
    .restart local v5    # "size":I
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x7f070000

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 135
    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "format"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "format":Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 138
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "messageChars":Ljava/lang/CharSequence;
    if-nez v3, :cond_2

    .line 140
    sget-boolean v6, Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    .line 141
    const-string v6, "ClassZeroActivity"

    const-string v7, "got null message body, return"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/messaging/activity/ClassZeroActivity;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 148
    new-instance v0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    invoke-direct {v0, p0, p0}, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;-><init>(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/content/Context;)V

    .line 149
    .local v0, "dialog":Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    const/4 v6, -0x1

    const v7, 0x7f0b017a

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/messaging/activity/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    const/4 v6, -0x2

    const/high16 v7, 0x1040000

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/messaging/activity/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 153
    new-instance v6, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    invoke-direct {v6, v2}, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;-><init>(Landroid/telephony/SmsMessage;)V

    invoke-virtual {v0, v6}, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->setSmsMessage(Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;)V

    .line 154
    sget-object v7, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 155
    :try_start_2
    sget-object v6, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/messaging/activity/ClassZeroActivity;->notifyNewMessage(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 156
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 166
    const-string v4, "pdu"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 167
    .local v3, "pdu":[B
    const-string v4, "pdu"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 168
    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 169
    .local v1, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "messageChars":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/messaging/activity/ClassZeroActivity;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ClassZeroActivity;->checkIfFinish()V

    .line 173
    sget-boolean v4, Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 174
    const-string v4, "ClassZeroActivity"

    const-string v5, "empty msg, return"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    new-instance v0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    invoke-direct {v0, p0, p0}, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;-><init>(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/content/Context;)V

    .line 180
    .local v0, "dialog":Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v4, -0x1

    const v5, 0x7f0b017a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/activity/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 182
    const/4 v4, -0x2

    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/activity/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 183
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 184
    new-instance v4, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    invoke-direct {v4, v1}, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;-><init>(Landroid/telephony/SmsMessage;)V

    invoke-virtual {v0, v4}, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->setSmsMessage(Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;)V

    .line 185
    sget-object v5, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 186
    :try_start_0
    sget-object v4, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/messaging/activity/ClassZeroActivity;->notifyNewMessage(Landroid/content/Context;)V

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 195
    sget-object v3, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 196
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 197
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 199
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    sget-object v3, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 207
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/activity/ClassZeroActivity;->mAlertList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 208
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 213
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    return-void
.end method

.method public declared-synchronized saveMessage(Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;Z)V
    .locals 4
    .param p1, "sms"    # Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;
    .param p2, "read"    # Z

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p1, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;->mSaved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 335
    :goto_0
    monitor-exit p0

    return-void

    .line 317
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p1, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;->mSaved:Z

    .line 319
    move-object v0, p0

    .line 320
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/motorola/messaging/activity/ClassZeroActivity$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/motorola/messaging/activity/ClassZeroActivity$3;-><init>(Lcom/motorola/messaging/activity/ClassZeroActivity;Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;ZLandroid/content/Context;)V

    .line 334
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    const-string v3, "save_message"

    invoke-virtual {v2, v1, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
