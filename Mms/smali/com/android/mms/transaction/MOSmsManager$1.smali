.class final Lcom/android/mms/transaction/MOSmsManager$1;
.super Ljava/lang/Object;
.source "MOSmsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MOSmsManager;->retrySms(Landroid/net/Uri;II)V
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
    .line 448
    iput-object p1, p0, Lcom/android/mms/transaction/MOSmsManager$1;->val$messageUri:Landroid/net/Uri;

    iput p2, p0, Lcom/android/mms/transaction/MOSmsManager$1;->val$pendingId:I

    iput p3, p0, Lcom/android/mms/transaction/MOSmsManager$1;->val$retryCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 451
    # getter for: Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/mms/transaction/MOSmsManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/mms/transaction/MOSmsManager;->access$100()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/MOSmsManager$1;->val$messageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 453
    .local v15, "c":Landroid/database/Cursor;
    if-eqz v15, :cond_0

    .line 455
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 457
    .local v19, "msgId":I
    const/16 v2, 0x8

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 458
    .local v20, "smsType":I
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "msgText":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    .line 460
    .local v14, "address":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 461
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 462
    .local v21, "threadId":I
    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 463
    .local v16, "deliveryReport":I
    const/4 v2, 0x7

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 464
    .local v18, "locked":I
    const/16 v2, 0x9

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 466
    .local v13, "priority":I
    const/4 v2, 0x5

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    .line 469
    const-string v2, "MOSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore retry, invalid folder type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 490
    .end local v4    # "msgText":Ljava/lang/String;
    .end local v13    # "priority":I
    .end local v14    # "address":[Ljava/lang/String;
    .end local v16    # "deliveryReport":I
    .end local v18    # "locked":I
    .end local v19    # "msgId":I
    .end local v20    # "smsType":I
    .end local v21    # "threadId":I
    :cond_0
    :goto_0
    return-void

    .line 473
    .restart local v4    # "msgText":Ljava/lang/String;
    .restart local v13    # "priority":I
    .restart local v14    # "address":[Ljava/lang/String;
    .restart local v16    # "deliveryReport":I
    .restart local v18    # "locked":I
    .restart local v19    # "msgId":I
    .restart local v20    # "smsType":I
    .restart local v21    # "threadId":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/MOSmsManager$1;->val$pendingId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/MOSmsManager$1;->val$retryCount:I

    move/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/android/mms/transaction/MOSmsManager;->startRetryAttemptForPendingTable(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :try_start_2
    new-instance v1, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    # getter for: Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v14, v3

    move/from16 v0, v21

    int-to-long v5, v0

    move/from16 v0, v19

    int-to-long v7, v0

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, -0x1

    move/from16 v0, v16

    if-eq v0, v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/transaction/MOSmsManager$1;->val$messageUri:Landroid/net/Uri;

    invoke-direct/range {v1 .. v13}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJIIZLandroid/net/Uri;I)V

    .line 478
    .local v1, "sender":Lcom/android/mms/transaction/SmsMessageSender;
    move/from16 v0, v21

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    .end local v1    # "sender":Lcom/android/mms/transaction/SmsMessageSender;
    .end local v4    # "msgText":Ljava/lang/String;
    .end local v13    # "priority":I
    .end local v14    # "address":[Ljava/lang/String;
    .end local v16    # "deliveryReport":I
    .end local v18    # "locked":I
    .end local v19    # "msgId":I
    .end local v20    # "smsType":I
    .end local v21    # "threadId":I
    :cond_2
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 476
    .restart local v4    # "msgText":Ljava/lang/String;
    .restart local v13    # "priority":I
    .restart local v14    # "address":[Ljava/lang/String;
    .restart local v16    # "deliveryReport":I
    .restart local v18    # "locked":I
    .restart local v19    # "msgId":I
    .restart local v20    # "smsType":I
    .restart local v21    # "threadId":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 479
    :catch_0
    move-exception v17

    .line 480
    .local v17, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "MOSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send message, msgId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", exception="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 487
    .end local v4    # "msgText":Ljava/lang/String;
    .end local v13    # "priority":I
    .end local v14    # "address":[Ljava/lang/String;
    .end local v16    # "deliveryReport":I
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v18    # "locked":I
    .end local v19    # "msgId":I
    .end local v20    # "smsType":I
    .end local v21    # "threadId":I
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2
.end method
