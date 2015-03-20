.class Lcom/android/phone/BluetoothAtSms$2;
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
    .line 602
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 607
    .local v8, "action":Ljava/lang/String;
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Blur mSmsReciever enter :: action="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v20, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 609
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMS_BODY_RECV_ACTION, mode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v22, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 779
    :cond_0
    :goto_0
    const-string v20, "BtAtSms"

    const-string v21, "CNMI: going to default return"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_1
    :goto_1
    return-void

    .line 612
    :pswitch_0
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMS_BODY_RECV_ACTION, mt="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v22, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 615
    .local v10, "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_9

    .line 616
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v14

    .line 618
    .local v14, "messages":[Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$700(Lcom/android/phone/BluetoothAtSms;)I

    move-result v20

    if-nez v20, :cond_6

    .line 619
    array-length v0, v14

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 620
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " messages.length= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v14

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 624
    :cond_2
    const/16 v20, 0x0

    aget-object v13, v14, v20

    .line 625
    .local v13, "message":Landroid/telephony/SmsMessage;
    const-string v18, ""

    .line 627
    .local v18, "result":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 628
    .local v9, "activePhone":I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v0, v9, :cond_4

    .line 629
    const-string v20, "TAG"

    const-string v21, "Phone type is CDMA"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 631
    .local v15, "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    .line 632
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    .line 633
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    .line 634
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    .line 635
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v19

    .line 638
    .local v19, "tpdulen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v17

    .line 640
    .local v17, "pdu":[B
    if-eqz v17, :cond_3

    if-eqz v19, :cond_3

    .line 641
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CMT: ,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    # invokes: Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 654
    .end local v15    # "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .end local v17    # "pdu":[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-interface/range {v20 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto/16 :goto_1

    .line 645
    .restart local v15    # "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .restart local v17    # "pdu":[B
    :cond_3
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "pdu=null or tpdulen="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 648
    .end local v15    # "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .end local v17    # "pdu":[B
    .end local v19    # "tpdulen":I
    :cond_4
    const-string v20, "TAG"

    const-string v21, "Phone type is GSM"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    sub-int v20, v20, v21

    add-int/lit8 v19, v20, -0x1

    .line 650
    .restart local v19    # "tpdulen":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CMT: ,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v22

    # invokes: Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 659
    :cond_5
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Bt ATCNMI: : adding new unAcknowledged message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    # invokes: Lcom/android/phone/BluetoothAtSms;->addNotification(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothAtSms;->access$1100(Ljava/lang/String;)V

    .line 662
    # invokes: Lcom/android/phone/BluetoothAtSms;->canSendNotificationToTE()Z
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$1200()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 663
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "New meesage incoming: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 668
    .end local v9    # "activePhone":I
    .end local v13    # "message":Landroid/telephony/SmsMessage;
    .end local v18    # "result":Ljava/lang/String;
    .end local v19    # "tpdulen":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 669
    .local v2, "MessageBody":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 670
    aget-object v20, v14, v11

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 672
    :cond_7
    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, "OriginatingAddress":Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    .line 674
    .local v6, "TimeStamp":J
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CMT: \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/phone/BluetoothAtSms;->timeStampFormat(J)Ljava/lang/String;
    invoke-static {v0, v6, v7}, Lcom/android/phone/BluetoothAtSms;->access$1300(Lcom/android/phone/BluetoothAtSms;J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 677
    .restart local v18    # "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-interface/range {v20 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto/16 :goto_1

    .line 682
    :cond_8
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Bt ATCNMI: : adding new unAcknowledged message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    # invokes: Lcom/android/phone/BluetoothAtSms;->addNotification(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothAtSms;->access$1100(Ljava/lang/String;)V

    .line 685
    # invokes: Lcom/android/phone/BluetoothAtSms;->canSendNotificationToTE()Z
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$1200()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 686
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "New meesage incoming: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 692
    .end local v2    # "MessageBody":Ljava/lang/StringBuffer;
    .end local v3    # "OriginatingAddress":Ljava/lang/String;
    .end local v6    # "TimeStamp":J
    .end local v11    # "i":I
    .end local v14    # "messages":[Landroid/telephony/SmsMessage;
    .end local v18    # "result":Ljava/lang/String;
    :cond_9
    const-string v20, "BtAtSms"

    const-string v21, "bundle=null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->ds:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 697
    .restart local v10    # "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_12

    .line 698
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v14

    .line 700
    .restart local v14    # "messages":[Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$700(Lcom/android/phone/BluetoothAtSms;)I

    move-result v20

    if-nez v20, :cond_f

    .line 701
    array-length v0, v14

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 702
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " messages.length= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v14

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 706
    :cond_b
    const/16 v20, 0x0

    aget-object v13, v14, v20

    .line 707
    .restart local v13    # "message":Landroid/telephony/SmsMessage;
    const-string v18, ""

    .line 709
    .restart local v18    # "result":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 710
    .restart local v9    # "activePhone":I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v0, v9, :cond_d

    .line 711
    const-string v20, "TAG"

    const-string v21, "Phone type is CDMA"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 713
    .restart local v15    # "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    .line 714
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    .line 715
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    .line 716
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    .line 717
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v19

    .line 720
    .restart local v19    # "tpdulen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v17

    .line 722
    .restart local v17    # "pdu":[B
    if-eqz v17, :cond_c

    if-eqz v19, :cond_c

    .line 723
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CDS: ,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    # invokes: Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 736
    .end local v15    # "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .end local v17    # "pdu":[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-interface/range {v20 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto/16 :goto_1

    .line 727
    .restart local v15    # "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .restart local v17    # "pdu":[B
    :cond_c
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "pdu=null or tpdulen="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 730
    .end local v15    # "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .end local v17    # "pdu":[B
    .end local v19    # "tpdulen":I
    :cond_d
    const-string v20, "TAG"

    const-string v21, "Phone type is GSM"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    sub-int v20, v20, v21

    add-int/lit8 v19, v20, -0x1

    .line 732
    .restart local v19    # "tpdulen":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CDS: ,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v22

    # invokes: Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_4

    .line 741
    :cond_e
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Bt ATCNMI: : adding new unAcknowledged message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    # invokes: Lcom/android/phone/BluetoothAtSms;->addNotification(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothAtSms;->access$1100(Ljava/lang/String;)V

    .line 744
    # invokes: Lcom/android/phone/BluetoothAtSms;->canSendNotificationToTE()Z
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$1200()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 745
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "New meesage incoming: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 750
    .end local v9    # "activePhone":I
    .end local v13    # "message":Landroid/telephony/SmsMessage;
    .end local v18    # "result":Ljava/lang/String;
    .end local v19    # "tpdulen":I
    :cond_f
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 751
    .restart local v2    # "MessageBody":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_10

    .line 752
    aget-object v20, v14, v11

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 754
    :cond_10
    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 755
    .restart local v3    # "OriginatingAddress":Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    .line 756
    .restart local v6    # "TimeStamp":J
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CDS: \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/phone/BluetoothAtSms;->timeStampFormat(J)Ljava/lang/String;
    invoke-static {v0, v6, v7}, Lcom/android/phone/BluetoothAtSms;->access$1300(Lcom/android/phone/BluetoothAtSms;J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 759
    .restart local v18    # "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v20, v0

    if-nez v20, :cond_11

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-interface/range {v20 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto/16 :goto_1

    .line 764
    :cond_11
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Bt ATCNMI: : adding new unAcknowledged message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    # invokes: Lcom/android/phone/BluetoothAtSms;->addNotification(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothAtSms;->access$1100(Ljava/lang/String;)V

    .line 767
    # invokes: Lcom/android/phone/BluetoothAtSms;->canSendNotificationToTE()Z
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$1200()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 768
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "New meesage incoming: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 774
    .end local v2    # "MessageBody":Ljava/lang/StringBuffer;
    .end local v3    # "OriginatingAddress":Ljava/lang/String;
    .end local v6    # "TimeStamp":J
    .end local v11    # "i":I
    .end local v14    # "messages":[Landroid/telephony/SmsMessage;
    .end local v18    # "result":Ljava/lang/String;
    :cond_12
    const-string v20, "BtAtSms"

    const-string v21, "bundle=null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 783
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_13
    const-string v20, "android.provider.Telephony.SMS_RECEIVED_STORED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 784
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMS_URI_RECV_ACTION, mode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v22, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_1

    .line 787
    :pswitch_1
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMS_URI_RECV_ACTION, mt="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v22, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 790
    .restart local v10    # "bundle":Landroid/os/Bundle;
    if-nez v10, :cond_14

    .line 791
    const-string v20, "BtAtSms"

    const-string v21, "bundle=null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 794
    :cond_14
    const-string v20, "uri"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 795
    .local v5, "ReceivedSMSUriStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 796
    .local v4, "ReceivedSMSUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v16

    .line 797
    .local v16, "path":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 798
    .local v12, "index":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CMTI: \"ME\","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 799
    .restart local v18    # "result":Ljava/lang/String;
    # invokes: Lcom/android/phone/BluetoothAtSms;->canSendNotificationToTE()Z
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$1200()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 800
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "New meesage incoming: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 805
    .end local v4    # "ReceivedSMSUri":Landroid/net/Uri;
    .end local v5    # "ReceivedSMSUriStr":Ljava/lang/String;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v12    # "index":I
    .end local v16    # "path":Ljava/lang/String;
    .end local v18    # "result":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->ds:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 807
    .restart local v10    # "bundle":Landroid/os/Bundle;
    if-nez v10, :cond_16

    .line 808
    const-string v20, "BtAtSms"

    const-string v21, "bundle=null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 811
    :cond_16
    const-string v20, "uri"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 812
    .restart local v5    # "ReceivedSMSUriStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 813
    .restart local v4    # "ReceivedSMSUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v16

    .line 814
    .restart local v16    # "path":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 815
    .restart local v12    # "index":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CDSI: \"ME\","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 816
    .restart local v18    # "result":Ljava/lang/String;
    # invokes: Lcom/android/phone/BluetoothAtSms;->canSendNotificationToTE()Z
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$1200()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 817
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "New meesage incoming: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 785
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method
