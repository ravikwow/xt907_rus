.class final Lcom/android/mms/transaction/MOSmsManager$2;
.super Ljava/lang/Object;
.source "MOSmsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MOSmsManager;->retryMultipleSms(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$commonDestId:I

.field final synthetic val$uriList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/mms/transaction/MOSmsManager$2;->val$uriList:Ljava/util/List;

    iput p2, p0, Lcom/android/mms/transaction/MOSmsManager$2;->val$commonDestId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 505
    new-instance v17, Lcom/android/mms/transaction/PendingData;

    invoke-direct/range {v17 .. v17}, Lcom/android/mms/transaction/PendingData;-><init>()V

    .line 506
    .local v17, "data":Lcom/android/mms/transaction/PendingData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/MOSmsManager$2;->val$uriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 507
    .local v3, "messageUri":Landroid/net/Uri;
    # getter for: Lcom/android/mms/transaction/MOSmsManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/MOSmsManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryMultipleSms, uri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1
    # getter for: Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 513
    .local v16, "cursor":Landroid/database/Cursor;
    const/16 v22, -0x1

    .line 514
    .local v22, "msgId":I
    if-eqz v16, :cond_0

    .line 516
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 518
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 519
    .local v23, "smsType":I
    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 520
    .local v7, "msgText":Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 521
    .local v15, "address":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 522
    .local v24, "threadId":I
    const/4 v1, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 523
    .local v18, "deliveryReport":I
    const/4 v1, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 524
    .local v21, "locked":I
    const/16 v1, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 526
    .local v14, "priority":I
    const/4 v1, 0x5

    move/from16 v0, v23

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    move/from16 v0, v23

    if-eq v0, v1, :cond_2

    .line 529
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore retry, invalid folder type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 533
    :cond_2
    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/mms/transaction/MOSmsManager;->retrievePendingData(Landroid/net/Uri;Lcom/android/mms/transaction/PendingData;)V

    .line 534
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/mms/transaction/PendingData;->pendingId:I

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/mms/transaction/PendingData;->retryCount:I

    move/from16 v0, v22

    invoke-static {v1, v0, v2}, Lcom/android/mms/transaction/MOSmsManager;->startRetryAttemptForPendingTable(III)V

    .line 536
    new-instance v4, Lcom/android/mms/transaction/SmsMessageSender;

    # getter for: Lcom/android/mms/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v5

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v15, v6, v1

    move/from16 v0, v24

    int-to-long v8, v0

    move/from16 v0, v22

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/transaction/MOSmsManager$2;->val$commonDestId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/MOSmsManager$2;->val$uriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct/range {v4 .. v14}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJIII)V

    move/from16 v0, v24

    int-to-long v1, v0

    invoke-virtual {v4, v1, v2}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    .end local v7    # "msgText":Ljava/lang/String;
    .end local v14    # "priority":I
    .end local v15    # "address":Ljava/lang/String;
    .end local v18    # "deliveryReport":I
    .end local v21    # "locked":I
    .end local v23    # "smsType":I
    .end local v24    # "threadId":I
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 540
    :catch_0
    move-exception v19

    .line 541
    .local v19, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "MOSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message, msgId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", exception="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v1

    .line 549
    .end local v3    # "messageUri":Landroid/net/Uri;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v22    # "msgId":I
    :cond_4
    return-void
.end method
