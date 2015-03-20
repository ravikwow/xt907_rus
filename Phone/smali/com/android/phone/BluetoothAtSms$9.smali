.class Lcom/android/phone/BluetoothAtSms$9;
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
.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 0

    .prologue
    .line 2562
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$9;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 2565
    const-string v2, "BtAtSms"

    const-string v3, "Received for AT+CMGL "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$9;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->parseAtCmgl([Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;
    invoke-static {v2, p1}, Lcom/android/phone/BluetoothAtSms;->access$2900(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;

    move-result-object v1

    .line 2568
    .local v1, "stat":Lcom/android/phone/BluetoothAtSms$SmsStatus;
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$9;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/phone/BluetoothAtSms;->access$1600(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v0

    .line 2569
    .local v0, "mem1":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2570
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2577
    :goto_0
    return-object v2

    .line 2571
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$9;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$700(Lcom/android/phone/BluetoothAtSms;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2577
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2573
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$9;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->handleAtCmglSetCmdPduMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    invoke-static {v2, v1, v0}, Lcom/android/phone/BluetoothAtSms;->access$3000(Lcom/android/phone/BluetoothAtSms;Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_0

    .line 2575
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$9;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->handleAtCmglSetCmdTextMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    invoke-static {v2, v1, v0}, Lcom/android/phone/BluetoothAtSms;->access$3100(Lcom/android/phone/BluetoothAtSms;Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_0

    .line 2571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 2582
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2583
    .local v0, "result":Landroid/bluetooth/AtCommandResult;
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$9;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$700(Lcom/android/phone/BluetoothAtSms;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2591
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    .line 2594
    :goto_0
    return-object v0

    .line 2585
    :pswitch_0
    const-string v1, "+CMGL: (0,1,2,3,4)"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2588
    :pswitch_1
    const-string v1, "+CMGL: (\"REC UNREAD\",\"REC READ\",\"STO UNSENT\",\"STO SENT\",\"ALL\")"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
