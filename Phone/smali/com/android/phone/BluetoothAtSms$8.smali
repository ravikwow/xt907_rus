.class Lcom/android/phone/BluetoothAtSms$8;
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
    .line 2538
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2541
    const-string v1, "BtAtSms"

    const-string v2, "+CMGW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->parseAtCmgw([Ljava/lang/Object;)Z
    invoke-static {v1, p1}, Lcom/android/phone/BluetoothAtSms;->access$2800(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2543
    const-string v1, "BtAtSms"

    const-string v2, "Received Invalid parameters for AT+CMGW "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2545
    .local v0, "result":Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CMS ERROR: 304"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2558
    .end local v0    # "result":Landroid/bluetooth/AtCommandResult;
    :goto_0
    return-object v0

    .line 2548
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    # setter for: Lcom/android/phone/BluetoothAtSms;->mInputMode:I
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothAtSms;->access$1402(Lcom/android/phone/BluetoothAtSms;I)I

    .line 2549
    const-string v1, ""

    # setter for: Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 2550
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    # setter for: Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothAtSms;->access$2402(Lcom/android/phone/BluetoothAtSms;I)I

    .line 2551
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    # setter for: Lcom/android/phone/BluetoothAtSms;->mCmgwbit:I
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothAtSms;->access$2602(Lcom/android/phone/BluetoothAtSms;I)I

    .line 2552
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    # setter for: Lcom/android/phone/BluetoothAtSms;->mCmgcbit:I
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothAtSms;->access$302(Lcom/android/phone/BluetoothAtSms;I)I

    .line 2553
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    # setter for: Lcom/android/phone/BluetoothAtSms;->mCmgsbit:I
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothAtSms;->access$2502(Lcom/android/phone/BluetoothAtSms;I)I

    .line 2555
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    const-string v2, "\r\n> "

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2557
    const-string v1, "+CMGW"

    const-string v2, "wait sms input"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method
