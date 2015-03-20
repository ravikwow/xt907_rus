.class final Lcom/motorola/messaging/transaction/MOSmsManager$1;
.super Ljava/lang/Object;
.source "MOSmsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 198
    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$100()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_QUEUED:Landroid/net/Uri;

    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->SEND_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$200()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 201
    .local v12, "c":Landroid/database/Cursor;
    const/4 v15, -0x1

    .line 202
    .local v15, "msgId":I
    if-eqz v12, :cond_1

    .line 204
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 206
    const-string v2, "MOSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS-STATUS - Resend queued SMS, msg_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "msgText":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 210
    .local v3, "address":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 211
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 212
    .local v17, "threadId":I
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 213
    .local v9, "priority":I
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 214
    .local v13, "deliveryReport":I
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 215
    .local v10, "locked":I
    new-instance v1, Lcom/motorola/messaging/transaction/SmsMessageSender;

    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v2

    int-to-long v5, v15

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v11, -0x1

    if-eq v13, v11, :cond_2

    const/4 v11, 0x1

    :goto_0
    invoke-direct/range {v1 .. v11}, Lcom/motorola/messaging/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .local v1, "sender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    move/from16 v0, v17

    int-to-long v5, v0

    :try_start_1
    invoke-virtual {v1, v5, v6}, Lcom/motorola/messaging/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local v1    # "sender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    .end local v3    # "address":[Ljava/lang/String;
    .end local v4    # "msgText":Ljava/lang/String;
    .end local v9    # "priority":I
    .end local v10    # "locked":I
    .end local v13    # "deliveryReport":I
    .end local v17    # "threadId":I
    :cond_0
    :goto_1
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 233
    :cond_1
    return-void

    .line 215
    .restart local v3    # "address":[Ljava/lang/String;
    .restart local v4    # "msgText":Ljava/lang/String;
    .restart local v9    # "priority":I
    .restart local v10    # "locked":I
    .restart local v13    # "deliveryReport":I
    .restart local v17    # "threadId":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 219
    .restart local v1    # "sender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    :catch_0
    move-exception v14

    .line 220
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "MOSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message: , msgId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v15

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 225
    .local v16, "msgUri":Landroid/net/Uri;
    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-static {v2, v0, v5, v6}, Lcom/motorola/messaging/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 226
    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/motorola/messaging/util/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 230
    .end local v1    # "sender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    .end local v3    # "address":[Ljava/lang/String;
    .end local v4    # "msgText":Ljava/lang/String;
    .end local v9    # "priority":I
    .end local v10    # "locked":I
    .end local v13    # "deliveryReport":I
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "msgUri":Landroid/net/Uri;
    .end local v17    # "threadId":I
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v2
.end method
