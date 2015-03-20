.class public Lcom/motorola/messaging/receiver/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lcom/motorola/messaging/receiver/PushReceiver;->DEBUG:Z

    .line 66
    sget-boolean v1, Lcom/motorola/messaging/receiver/PushReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/motorola/messaging/pdu/NotificationInd;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/motorola/messaging/pdu/NotificationInd;

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/motorola/messaging/receiver/PushReceiver;->isDuplicateNotification(Landroid/content/Context;Lcom/motorola/messaging/pdu/NotificationInd;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;I)J
    .locals 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/motorola/messaging/pdu/GenericPdu;
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/receiver/PushReceiver;->findThreadId(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static findThreadId(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;I)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/motorola/messaging/pdu/GenericPdu;
    .param p2, "type"    # I

    .prologue
    .line 288
    const/16 v0, 0x86

    if-ne p2, v0, :cond_0

    .line 289
    check-cast p1, Lcom/motorola/messaging/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v9

    .line 293
    .local v9, "messageIdBytes":[B
    :goto_0
    if-nez v9, :cond_1

    .line 294
    const-wide/16 v0, -0x1

    .line 321
    :goto_1
    return-wide v0

    .line 291
    .end local v9    # "messageIdBytes":[B
    .restart local p1    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    :cond_0
    check-cast p1, Lcom/motorola/messaging/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v9

    .restart local v9    # "messageIdBytes":[B
    goto :goto_0

    .line 296
    :cond_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 298
    .local v8, "messageId":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string v0, "m_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/16 v0, 0x3d

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v0, "m_type"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/16 v0, 0x3d

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    const/16 v0, 0x80

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "thread_id"

    aput-object v4, v3, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 314
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 318
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 321
    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/motorola/messaging/pdu/NotificationInd;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/motorola/messaging/pdu/NotificationInd;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 325
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    .line 327
    .local v9, "rawLocation":[B
    if-eqz v9, :cond_2

    .line 328
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 329
    .local v8, "location":Ljava/lang/String;
    sget-boolean v0, Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "PushReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS Location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    const-string v4, "ct_l = ?"

    .line 334
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    aput-object v8, v5, v11

    .line 335
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v11

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 339
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 341
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 346
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move v0, v10

    .line 350
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "location":Ljava/lang/String;
    :goto_0
    return v0

    .line 346
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "location":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_1
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "location":Ljava/lang/String;
    :cond_2
    move v0, v11

    .line 350
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 262
    sget-boolean v2, Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 263
    const-string v2, "PushReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() - START, app version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent received="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    sget-boolean v2, Lcom/motorola/messaging/receiver/PushReceiver;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 271
    const-string v2, "PushReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received PUSH Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 277
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "MMS PushReceiver"

    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 279
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 280
    new-instance v2, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;

    invoke-direct {v2, p1}, Lcom/motorola/messaging/receiver/PushReceiver$ReceivePushTask;-><init>(Landroid/content/Context;)V

    new-array v3, v5, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 282
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v1    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_2
    return-void
.end method
