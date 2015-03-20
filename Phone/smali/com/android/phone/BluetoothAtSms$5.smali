.class Lcom/android/phone/BluetoothAtSms$5;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtSms;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cmdName:Ljava/lang/String;

.field index:I

.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 1

    .prologue
    .line 2397
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    .line 2398
    const-string v0, "+CMGR"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 14
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2405
    const/4 v0, -0x1

    .line 2407
    .local v0, "error":I
    aget-object v8, p1, v12

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/phone/BluetoothAtSms$5;->index:I

    .line 2408
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v8, v11}, Lcom/android/phone/BluetoothAtSms;->access$1600(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v1

    .line 2409
    .local v1, "mem1":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2410
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2487
    :goto_0
    return-object v5

    .line 2411
    :cond_0
    const-string v8, "\"ME\""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2412
    new-instance v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 2413
    .local v2, "message":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/BluetoothAtSms$5;->index:I

    # invokes: Lcom/android/phone/BluetoothAtSms;->readMessageFromME(Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I
    invoke-static {v8, v9, v10, v2}, Lcom/android/phone/BluetoothAtSms;->access$2000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I

    move-result v0

    .line 2414
    const/4 v8, -0x1

    if-eq v8, v0, :cond_1

    .line 2415
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2417
    :cond_1
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothAtSms;->access$700(Lcom/android/phone/BluetoothAtSms;)I

    move-result v8

    if-nez v8, :cond_5

    .line 2418
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v3

    .line 2419
    .local v3, "pdu":[B
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;
    invoke-static {v8, v3}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;

    move-result-object v4

    .line 2421
    .local v4, "pduHexStr":Ljava/lang/String;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    if-ne v8, v11, :cond_3

    .line 2422
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2425
    .local v5, "result":Landroid/bluetooth/AtCommandResult;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v8, :cond_2

    .line 2426
    const/4 v6, 0x0

    .line 2427
    .local v6, "stat":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2428
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2429
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/BluetoothAtSms$5;->index:I

    # invokes: Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V
    invoke-static {v8, v9, v10, v7}, Lcom/android/phone/BluetoothAtSms;->access$2100(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 2432
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2431
    .end local v6    # "stat":I
    :cond_2
    const/4 v6, 0x1

    .restart local v6    # "stat":I
    goto :goto_1

    .line 2440
    .end local v5    # "result":Landroid/bluetooth/AtCommandResult;
    .end local v6    # "stat":I
    :cond_3
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2442
    .restart local v5    # "result":Landroid/bluetooth/AtCommandResult;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    if-ne v8, v13, :cond_4

    .line 2443
    const/4 v6, 0x3

    .line 2446
    .restart local v6    # "stat":I
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2445
    .end local v6    # "stat":I
    :cond_4
    const/4 v6, 0x2

    .restart local v6    # "stat":I
    goto :goto_2

    .line 2455
    .end local v3    # "pdu":[B
    .end local v4    # "pduHexStr":Ljava/lang/String;
    .end local v5    # "result":Landroid/bluetooth/AtCommandResult;
    .end local v6    # "stat":I
    :cond_5
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    if-ne v8, v11, :cond_7

    .line 2456
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2459
    .restart local v5    # "result":Landroid/bluetooth/AtCommandResult;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v8, :cond_6

    .line 2460
    const-string v6, "\"REC UNREAD\""

    .line 2461
    .local v6, "stat":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2462
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v8, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2463
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/BluetoothAtSms$5;->index:I

    # invokes: Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V
    invoke-static {v8, v9, v10, v7}, Lcom/android/phone/BluetoothAtSms;->access$2100(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 2466
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\",\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\",\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget v10, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    int-to-long v10, v10

    # invokes: Lcom/android/phone/BluetoothAtSms;->timeStampFormat(J)Ljava/lang/String;
    invoke-static {v9, v10, v11}, Lcom/android/phone/BluetoothAtSms;->access$1300(Lcom/android/phone/BluetoothAtSms;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\"\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2465
    .end local v6    # "stat":Ljava/lang/String;
    :cond_6
    const-string v6, "\"REC READ\""

    .restart local v6    # "stat":Ljava/lang/String;
    goto :goto_3

    .line 2474
    .end local v5    # "result":Landroid/bluetooth/AtCommandResult;
    .end local v6    # "stat":Ljava/lang/String;
    :cond_7
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2476
    .restart local v5    # "result":Landroid/bluetooth/AtCommandResult;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    if-ne v8, v13, :cond_8

    .line 2477
    const-string v6, "\"STO SENT\""

    .line 2480
    .restart local v6    # "stat":Ljava/lang/String;
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\",\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\"\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2479
    .end local v6    # "stat":Ljava/lang/String;
    :cond_8
    const-string v6, "\"STO UNSENT\""

    .restart local v6    # "stat":Ljava/lang/String;
    goto :goto_4

    .line 2487
    .end local v2    # "message":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .end local v5    # "result":Landroid/bluetooth/AtCommandResult;
    .end local v6    # "stat":Ljava/lang/String;
    :cond_9
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0
.end method
