.class Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingScoAcceptThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;
    }
.end annotation


# instance fields
.field private mIncomingSco:Landroid/bluetooth/BluetoothSocket;

.field private mIncomingScoMessageHandler:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;

.field private final mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private stopped:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 4

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 361
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    new-instance v2, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingScoMessageHandler:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;

    .line 387
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 392
    :goto_0
    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 393
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Could not create BluetoothServerSocket"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->connectSco()V

    return-void
.end method

.method private connectSco()V
    .locals 6

    .prologue
    .line 418
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 419
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # invokes: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # invokes: Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    if-nez v1, :cond_2

    .line 423
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Routing audio for incoming SCO connection"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$602(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 425
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 426
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    # invokes: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 429
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    if-nez v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1302(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 431
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    const-string v3, "SignalScoCloseThread"

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 443
    :cond_1
    :goto_0
    monitor-exit v2

    .line 444
    return-void

    .line 435
    :cond_2
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Rejecting incoming SCO connection"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Error when closing incoming Sco socket"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 397
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    if-nez v2, :cond_2

    .line 399
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_1
    const-string v2, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passing message to Handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mDisconnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mConnectedSco:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingScoMessageHandler:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;

    const/16 v3, 0xd

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 407
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingScoMessageHandler:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread$IncomingScoMessageHandler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 400
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "BluetoothServerSocket could not accept connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 411
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->connectSco()V

    goto :goto_0

    .line 415
    :cond_2
    return-void
.end method

.method shutdown()V
    .locals 3

    .prologue
    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    .line 454
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 455
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Error when closing server socket"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
