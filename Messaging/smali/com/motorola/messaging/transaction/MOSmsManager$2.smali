.class final Lcom/motorola/messaging/transaction/MOSmsManager$2;
.super Ljava/lang/Object;
.source "MOSmsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/transaction/MOSmsManager;->retrySms(Landroid/net/Uri;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$messageUri:Landroid/net/Uri;

.field final synthetic val$pendingId:I

.field final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Landroid/net/Uri;II)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/motorola/messaging/transaction/MOSmsManager$2;->val$messageUri:Landroid/net/Uri;

    iput p2, p0, Lcom/motorola/messaging/transaction/MOSmsManager$2;->val$pendingId:I

    iput p3, p0, Lcom/motorola/messaging/transaction/MOSmsManager$2;->val$retryCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 499
    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$100()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/MOSmsManager$2;->val$messageUri:Landroid/net/Uri;

    sget-object v4, Lcom/motorola/messaging/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 501
    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 503
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 505
    .local v15, "msgId":I
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 506
    .local v16, "smsType":I
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "msgText":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 508
    .local v3, "address":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 509
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 510
    .local v17, "threadId":I
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 511
    .local v13, "deliveryReport":I
    const/4 v2, 0x7

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 513
    .local v10, "locked":I
    const/4 v2, 0x5

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    .line 516
    const-string v2, "MOSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore retry, invalid folder type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .end local v3    # "address":[Ljava/lang/String;
    .end local v4    # "msgText":Ljava/lang/String;
    .end local v10    # "locked":I
    .end local v13    # "deliveryReport":I
    .end local v15    # "msgId":I
    .end local v16    # "smsType":I
    .end local v17    # "threadId":I
    :cond_0
    :goto_0
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 537
    :cond_1
    return-void

    .line 520
    .restart local v3    # "address":[Ljava/lang/String;
    .restart local v4    # "msgText":Ljava/lang/String;
    .restart local v10    # "locked":I
    .restart local v13    # "deliveryReport":I
    .restart local v15    # "msgId":I
    .restart local v16    # "smsType":I
    .restart local v17    # "threadId":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/messaging/transaction/MOSmsManager$2;->val$pendingId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/messaging/transaction/MOSmsManager$2;->val$retryCount:I

    invoke-static {v2, v15, v5}, Lcom/motorola/messaging/transaction/MOSmsManager;->startRetryAttemptForPendingTable(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :try_start_2
    new-instance v1, Lcom/motorola/messaging/transaction/SmsMessageSender;

    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v2

    int-to-long v5, v15

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, -0x1

    if-eq v13, v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    invoke-direct/range {v1 .. v11}, Lcom/motorola/messaging/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JIIIIZ)V

    .line 525
    .local v1, "sender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    move/from16 v0, v17

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Lcom/motorola/messaging/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 526
    .end local v1    # "sender":Lcom/motorola/messaging/transaction/SmsMessageSender;
    :catch_0
    move-exception v14

    .line 527
    .local v14, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "MOSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message, msgId="

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 534
    .end local v3    # "address":[Ljava/lang/String;
    .end local v4    # "msgText":Ljava/lang/String;
    .end local v10    # "locked":I
    .end local v13    # "deliveryReport":I
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "msgId":I
    .end local v16    # "smsType":I
    .end local v17    # "threadId":I
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    .line 523
    .restart local v3    # "address":[Ljava/lang/String;
    .restart local v4    # "msgText":Ljava/lang/String;
    .restart local v10    # "locked":I
    .restart local v13    # "deliveryReport":I
    .restart local v15    # "msgId":I
    .restart local v16    # "smsType":I
    .restart local v17    # "threadId":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_1
.end method
