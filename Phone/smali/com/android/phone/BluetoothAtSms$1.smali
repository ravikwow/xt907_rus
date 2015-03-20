.class Lcom/android/phone/BluetoothAtSms$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 522
    const-string v6, "+CMGS"

    .line 523
    .local v6, "mCmdName":Ljava/lang/String;
    const-string v14, "SendCmdName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 524
    .local v11, "sendCmdName":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 525
    const-string v14, "+CMSS"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 526
    const-string v6, "+CMSS"

    .line 532
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 534
    .local v8, "messageUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v10

    .line 535
    .local v10, "resultCode":I
    const-string v14, "BtAtSms"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " mCmdName is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "action= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v14, "BtAtSms"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resultCode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v14, "com.mot.bt.Sms.MESSAGE_SENT"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 540
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v13, "smsSendCompleteIntent":Landroid/content/Intent;
    invoke-virtual {v13, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 543
    const/4 v14, 0x1

    if-ne v14, v10, :cond_1

    .line 544
    const-string v14, "errorCode"

    const v15, -0x80ea

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 545
    .local v3, "errorCode":I
    const-string v14, "errorCode"

    invoke-virtual {v13, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    const-string v14, "BtAtSms"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "errorCode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v3    # "errorCode":I
    :cond_1
    const-string v14, "com.motorola.blur.conversations"

    const-string v15, "com.motorola.blur.conversations.transaction.SmsReceiver"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v13, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 553
    .local v12, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_2

    .line 555
    :try_start_0
    invoke-virtual {v12, v10}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 562
    .local v5, "isLastPackageOfSms":Z
    const-string v14, "IsLastPackageOfSMS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "flag":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 564
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get IsLastPackageOfSMS flag "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v14, "yes"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 568
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isLastPackageOfSMS  is  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    if-eqz v5, :cond_4

    .line 571
    const/4 v14, -0x1

    if-eq v10, v14, :cond_7

    .line 572
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    const/4 v14, 0x1

    invoke-direct {v9, v14}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 573
    .local v9, "result":Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v14}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v14

    invoke-virtual {v9}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 599
    .end local v4    # "flag":Ljava/lang/String;
    .end local v5    # "isLastPackageOfSms":Z
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    .end local v12    # "sentIntent":Landroid/app/PendingIntent;
    .end local v13    # "smsSendCompleteIntent":Landroid/content/Intent;
    :cond_4
    :goto_2
    return-void

    .line 527
    .end local v1    # "action":Ljava/lang/String;
    .end local v8    # "messageUri":Landroid/net/Uri;
    .end local v10    # "resultCode":I
    :cond_5
    const-string v14, "+CMGC"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCmgcbit:I
    invoke-static {v14}, Lcom/android/phone/BluetoothAtSms;->access$300(Lcom/android/phone/BluetoothAtSms;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 528
    :cond_6
    const-string v6, "+CMGC"

    goto/16 :goto_0

    .line 556
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v8    # "messageUri":Landroid/net/Uri;
    .restart local v10    # "resultCode":I
    .restart local v12    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v13    # "smsSendCompleteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 576
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v4    # "flag":Ljava/lang/String;
    .restart local v5    # "isLastPackageOfSms":Z
    :cond_7
    const/4 v7, 0x0

    .line 578
    .local v7, "messageRef":I
    :try_start_1
    const-string v14, "refNumber"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 579
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get refNumber "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v14, -0x1

    if-ne v7, v14, :cond_8

    .line 581
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    const/4 v14, 0x1

    invoke-direct {v9, v14}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 582
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v14}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v14

    invoke-virtual {v9}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 586
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :catch_1
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v14, "get refNumber NumberFormatException"

    invoke-static {v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    const/4 v14, 0x1

    invoke-direct {v9, v14}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 589
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v14}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v14

    invoke-virtual {v9}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto :goto_2

    .line 592
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get refNumber is: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    const/4 v14, 0x0

    invoke-direct {v9, v14}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 594
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v14}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v14

    invoke-virtual {v9}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
