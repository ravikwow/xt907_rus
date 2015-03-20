.class Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/receiver/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mDatabaseSemaphore:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPersister:Lcom/motorola/messaging/pdu/PduPersister;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mDatabaseSemaphore:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    .line 77
    iget-object v0, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mResolver:Landroid/content/ContentResolver;

    .line 78
    return-void
.end method

.method private sendMmsDeliveryBroadcast(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;Z)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/motorola/messaging/pdu/GenericPdu;
    .param p3, "success"    # Z

    .prologue
    .line 222
    check-cast p2, Lcom/motorola/messaging/pdu/DeliveryInd;

    .end local p2    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v13

    .line 223
    .local v13, "messageIdBytes":[B
    if-nez v13, :cond_0

    .line 257
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 228
    .local v12, "messageId":Ljava/lang/String;
    const-wide/16 v9, -0x1

    .line 229
    .local v9, "id":J
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string v1, "m_id"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/16 v1, 0x3d

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {v12}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, " AND "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, "m_type"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const/16 v1, 0x3d

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    const/16 v1, 0x80

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 241
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 243
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 247
    :cond_1
    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 252
    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.motorola.contracts.messaging.intent.SEND_STATUS"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v11, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "MMS_DELIVERED"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v1, "status"

    move/from16 v0, p3

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const-string v1, "id"

    invoke-virtual {v11, v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 247
    .end local v11    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v1
.end method

.method private storeMmsNotification(Lcom/motorola/messaging/pdu/GenericPdu;)Landroid/net/Uri;
    .locals 7
    .param p1, "pdu"    # Lcom/motorola/messaging/pdu/GenericPdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 81
    # getter for: Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/receiver/PushReceiver;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string v3, "PushReceiver"

    const-string v4, "storeMmsNotification"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    .line 85
    check-cast v1, Lcom/motorola/messaging/pdu/NotificationInd;

    .line 86
    .local v1, "nInd":Lcom/motorola/messaging/pdu/NotificationInd;
    const/4 v2, 0x0

    .line 89
    .local v2, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mDatabaseSemaphore:Ljava/lang/Object;

    monitor-enter v4

    .line 90
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    # invokes: Lcom/motorola/messaging/receiver/PushReceiver;->isDuplicateNotification(Landroid/content/Context;Lcom/motorola/messaging/pdu/NotificationInd;)Z
    invoke-static {v3, v1}, Lcom/motorola/messaging/receiver/PushReceiver;->access$100(Landroid/content/Context;Lcom/motorola/messaging/pdu/NotificationInd;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    # getter for: Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/receiver/PushReceiver;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 93
    .local v0, "cl":[B
    const-string v5, "PushReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip downloading duplicate message: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_2

    const-string v3, ""

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v0    # "cl":[B
    :cond_1
    :goto_1
    monitor-exit v4

    .line 114
    return-object v2

    .line 93
    .restart local v0    # "cl":[B
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 112
    .end local v0    # "cl":[B
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 100
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/GenericPdu;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v3

    if-nez v3, :cond_5

    .line 101
    # getter for: Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/receiver/PushReceiver;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    const-string v3, "PushReceiver"

    const-string v5, "MMS-STATUS - MMS notification with null recipient - setting empty"

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_4
    new-instance v3, Lcom/motorola/messaging/pdu/EncodedStringValue;

    const-string v5, ""

    invoke-direct {v3, v5}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/motorola/messaging/pdu/GenericPdu;->setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 110
    :cond_5
    iget-object v3, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    sget-object v5, Lcom/motorola/messaging/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1, v5}, Lcom/motorola/messaging/pdu/PduPersister;->persist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 119
    aget-object v1, p1, v5

    .line 122
    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 123
    new-instance v2, Lcom/motorola/messaging/pdu/PduParser;

    invoke-direct {v2, v1}, Lcom/motorola/messaging/pdu/PduParser;-><init>([B)V

    .line 124
    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/PduParser;->parse()Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v2

    .line 126
    if-nez v2, :cond_1

    .line 127
    const-string v1, "PushReceiver"

    const-string v2, "MMS-STATUS - Invalid PUSH data"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    return-object v12

    .line 132
    :cond_1
    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v7

    .line 135
    # getter for: Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/receiver/PushReceiver;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    const-string v1, "PushReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive Push, type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    sparse-switch v7, :sswitch_data_0

    .line 206
    :try_start_0
    const-string v1, "PushReceiver"

    const-string v2, "MMS-STATUS - Received unrecognized PDU."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :cond_3
    :goto_1
    # getter for: Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/receiver/PushReceiver;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "PushReceiver"

    const-string v2, "PUSH Intent processed."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :sswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    # invokes: Lcom/motorola/messaging/receiver/PushReceiver;->findThreadId(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;I)J
    invoke-static {v1, v2, v7}, Lcom/motorola/messaging/receiver/PushReceiver;->access$200(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;I)J

    move-result-wide v8

    .line 144
    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/messaging/pdu/PduPersister;->persist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 152
    const/16 v1, 0x86

    if-ne v7, v1, :cond_4

    .line 153
    iget-object v1, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mPersister:Lcom/motorola/messaging/pdu/PduPersister;

    invoke-virtual {v1, v3}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/pdu/DeliveryInd;

    .line 154
    iget-object v6, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/DeliveryInd;->getStatus()I

    move-result v1

    const/16 v10, 0x81

    if-ne v1, v10, :cond_5

    move v1, v4

    :goto_2
    invoke-direct {p0, v6, v2, v1}, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->sendMmsDeliveryBroadcast(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;Z)V

    .line 158
    :cond_4
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 159
    const-string v1, "thread_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    iget-object v1, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 208
    :catch_0
    move-exception v1

    .line 209
    const-string v2, "PushReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Failed to save the data from PUSH: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    move v1, v5

    .line 154
    goto :goto_2

    .line 164
    :sswitch_1
    :try_start_2
    move-object v0, v2

    check-cast v0, Lcom/motorola/messaging/pdu/NotificationInd;

    move-object v1, v0

    .line 166
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsTransIdEnable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 167
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v3

    .line 168
    const/16 v4, 0x3d

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_6

    .line 169
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v4

    .line 170
    array-length v5, v3

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 172
    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, v3

    invoke-static {v3, v6, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    const/4 v6, 0x0

    array-length v3, v3

    array-length v8, v4

    invoke-static {v4, v6, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    invoke-virtual {v1, v5}, Lcom/motorola/messaging/pdu/NotificationInd;->setContentLocation([B)V

    .line 180
    :cond_6
    invoke-direct {p0, v2}, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->storeMmsNotification(Lcom/motorola/messaging/pdu/GenericPdu;)Landroid/net/Uri;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_3

    .line 184
    invoke-static {}, Lcom/motorola/messaging/provider/Recycler;->getInstance()Lcom/motorola/messaging/provider/Recycler;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessagesByThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 187
    # getter for: Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/receiver/PushReceiver;->access$000()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 188
    const-string v3, "PushReceiver"

    const-string v4, "MMS-STATUS - Download new MMS (automatic)"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_7
    new-instance v3, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v4, 0x4

    const-string v5, "WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 192
    const-string v4, "size"

    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;J)V

    .line 193
    const-string v4, "msgType"

    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {v3}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 196
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-class v4, Lcom/motorola/messaging/transaction/TransactionService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const-string v3, "uri"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/motorola/messaging/util/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 210
    :catch_1
    move-exception v1

    .line 211
    const-string v2, "PushReceiver"

    const-string v3, "MMS-STATUS - Unexpected RuntimeException."

    invoke-static {v2, v3, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method
