.class final Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingScoMessageHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;->this$1:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    .param p2, "x1"    # Lcom/android/phone/BluetoothHandsfree$1;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 372
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;->this$1:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    # getter for: Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->access$200(Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "IncomingScoMessageHandler:: handleMessage() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;->this$1:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    # invokes: Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->connectSco()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->access$300(Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
