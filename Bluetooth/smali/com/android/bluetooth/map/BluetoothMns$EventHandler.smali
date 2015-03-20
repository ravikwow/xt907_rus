.class Lcom/android/bluetooth/map/BluetoothMns$EventHandler;
.super Landroid/os/Handler;
.source "BluetoothMns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMns;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    .line 267
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 268
    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns$EventHandler;
    .param p1, "x1"    # I

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->removeTimeout()V

    return-void
.end method

.method private removeTimeout()V
    .locals 2

    .prologue
    const/16 v1, 0x11

    .line 399
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->removeMessages(I)V

    .line 401
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->sendEventDone()V

    .line 403
    :cond_0
    return-void
.end method

.method private sendEventDone()V
    .locals 2

    .prologue
    .line 406
    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtMns"

    const-string v1, "post MNS_SEND_EVENT_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 408
    return-void
.end method

.method private setTimeout(I)V
    .locals 3
    .param p1, "masId"    # I

    .prologue
    .line 393
    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtMns"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeout MNS_SEND_TIMEOUT for instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 396
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 272
    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 273
    const-string v7, "BtMns"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Handle Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 390
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 278
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 279
    .local v2, "masId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 280
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$100(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 281
    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "BtMns"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is MNS session connected? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;
    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMns;->access$100(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$100(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 283
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMns;->register(I)Z
    invoke-static {v7, v2}, Lcom/android/bluetooth/map/BluetoothMns;->access$200(Lcom/android/bluetooth/map/BluetoothMns;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 285
    const/16 v7, 0xe

    const/4 v8, -0x1

    invoke-virtual {p0, v7, v2, v8}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 290
    :cond_3
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mWaitingMasId:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$300(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 291
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mWaitingMasId:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$300(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-direct {v8, v9, v0}, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;-><init>(Lcom/android/bluetooth/map/BluetoothMns;Landroid/bluetooth/BluetoothDevice;)V

    # setter for: Lcom/android/bluetooth/map/BluetoothMns;->mConnectThread:Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;
    invoke-static {v7, v8}, Lcom/android/bluetooth/map/BluetoothMns;->access$402(Lcom/android/bluetooth/map/BluetoothMns;Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;)Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

    .line 293
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mConnectThread:Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$400(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;->start()V

    goto/16 :goto_0

    .line 295
    :cond_4
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mWaitingMasId:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$300(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 301
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "masId":I
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 302
    .restart local v2    # "masId":I
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$1;

    invoke-direct {v8, p0, v2}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$1;-><init>(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 313
    .end local v2    # "masId":I
    :pswitch_3
    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "BtMns"

    const-string v8, "MNS_BT: receive MNS_BLUETOOTH_OFF msg"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_5
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$2;

    invoke-direct {v8, p0}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$2;-><init>(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 329
    :pswitch_4
    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "BtMns"

    const-string v8, "receive RFCOMM_ERROR msg"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_6
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMns;->deregisterAll()V
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$800(Lcom/android/bluetooth/map/BluetoothMns;)V

    .line 331
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMns;->canDisconnect()Z
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$600(Lcom/android/bluetooth/map/BluetoothMns;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 332
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMns;->stop()V

    goto/16 :goto_0

    .line 340
    :pswitch_5
    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "BtMns"

    const-string v8, "Transfer receive RFCOMM_CONNECTED msg"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljavax/btobex/ObexTransport;

    .line 343
    .local v5, "transport":Ljavax/btobex/ObexTransport;
    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMns;->startObexSession(Ljavax/btobex/ObexTransport;)V
    invoke-static {v7, v5}, Lcom/android/bluetooth/map/BluetoothMns;->access$900(Lcom/android/bluetooth/map/BluetoothMns;Ljavax/btobex/ObexTransport;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mWaitingMasId:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$300(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 349
    .restart local v2    # "masId":I
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMns;->register(I)Z
    invoke-static {v7, v2}, Lcom/android/bluetooth/map/BluetoothMns;->access$200(Lcom/android/bluetooth/map/BluetoothMns;I)Z

    goto :goto_1

    .line 344
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "masId":I
    :catch_0
    move-exception v3

    .line 345
    .local v3, "ne":Ljava/lang/NullPointerException;
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 351
    .end local v3    # "ne":Ljava/lang/NullPointerException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mWaitingMasId:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$300(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    .line 356
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "transport":Ljavax/btobex/ObexTransport;
    :pswitch_6
    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "BtMns"

    const-string v8, "receive MSG_SESSION_ERROR"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_9
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMns;->deregisterAll()V
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$800(Lcom/android/bluetooth/map/BluetoothMns;)V

    .line 358
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMns;->stop()V

    goto/16 :goto_0

    .line 362
    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 363
    .local v6, "xml":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 364
    .restart local v2    # "masId":I
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mSendingEvent:Z
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$1000(Lcom/android/bluetooth/map/BluetoothMns;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 365
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mEventQueue:Ljava/util/Queue;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$1100(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/Queue;

    move-result-object v7

    new-instance v8, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 367
    :cond_a
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    const/4 v8, 0x1

    # setter for: Lcom/android/bluetooth/map/BluetoothMns;->mSendingEvent:Z
    invoke-static {v7, v8}, Lcom/android/bluetooth/map/BluetoothMns;->access$1002(Lcom/android/bluetooth/map/BluetoothMns;Z)Z

    .line 368
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;

    invoke-direct {v8, p0, v6, v2}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;-><init>(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;Ljava/lang/String;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 373
    .end local v2    # "masId":I
    .end local v6    # "xml":Ljava/lang/String;
    :pswitch_8
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mEventQueue:Ljava/util/Queue;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$1100(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 374
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    const/4 v8, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMns;->mSendingEvent:Z
    invoke-static {v7, v8}, Lcom/android/bluetooth/map/BluetoothMns;->access$1002(Lcom/android/bluetooth/map/BluetoothMns;Z)Z

    goto/16 :goto_0

    .line 376
    :cond_b
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->mEventQueue:Ljava/util/Queue;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$1100(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 377
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 378
    .restart local v2    # "masId":I
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 379
    .restart local v6    # "xml":Ljava/lang/String;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;

    invoke-direct {v8, p0, v6, v2}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;-><init>(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;Ljava/lang/String;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 384
    .end local v2    # "masId":I
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "xml":Ljava/lang/String;
    :pswitch_9
    # getter for: Lcom/android/bluetooth/map/BluetoothMns;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "BtMns"

    const-string v8, "MNS_SEND_TIMEOUT disconnecting."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_c
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMns;->deregisterAll()V
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMns;->access$800(Lcom/android/bluetooth/map/BluetoothMns;)V

    .line 386
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMns;->stop()V

    goto/16 :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method
