.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/btobex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mTransport1:Ljavax/btobex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/btobex/ObexTransport;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transport"    # Ljavax/btobex/ObexTransport;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 219
    const-string v1, "BtOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 216
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 220
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 221
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    .line 222
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 223
    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 225
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 226
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "BtOpp ObexClient"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    return-void
.end method

.method private connect()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 308
    const-string v4, "BtOpp ObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create ClientSession with transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :try_start_0
    new-instance v4, Ljavax/btobex/ClientSession;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-direct {v4, v5}, Ljavax/btobex/ClientSession;-><init>(Ljavax/btobex/ObexTransport;)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    .line 311
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 312
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    check-cast v4, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->getMaxPacketSize()I

    move-result v3

    .line 313
    .local v3, "mps":I
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v4, v3}, Ljavax/btobex/ClientSession;->setMaxPacketSize(I)V

    .line 314
    const-string v4, "BtOpp ObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting ClientSession mps "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v3    # "mps":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v4, :cond_0

    .line 319
    iput-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 320
    new-instance v2, Ljavax/btobex/HeaderSet;

    invoke-direct {v2}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 321
    .local v2, "hs":Ljavax/btobex/HeaderSet;
    monitor-enter p0

    .line 322
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v5, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 323
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v4, v2}, Ljavax/btobex/ClientSession;->connect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    .line 326
    const-string v4, "BtOpp ObexClient"

    const-string v5, "OBEX session created"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 332
    .end local v2    # "hs":Ljavax/btobex/HeaderSet;
    :cond_0
    :goto_1
    monitor-enter p0

    .line 333
    :try_start_3
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v5, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 334
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 335
    return-void

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e1":Ljava/io/IOException;
    const-string v4, "BtOpp ObexClient"

    const-string v5, "OBEX session create error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v2    # "hs":Ljavax/btobex/HeaderSet;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 328
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BtOpp ObexClient"

    const-string v5, "OBEX session connect error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "hs":Ljavax/btobex/HeaderSet;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/btobex/ClientSession;->disconnect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    .line 283
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    .line 284
    const-string v1, "BtOpp ObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    if-eqz v1, :cond_1

    .line 290
    const-string v1, "BtOpp ObexClient"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v1}, Ljavax/btobex/ClientSession;->close()V

    .line 292
    const-string v1, "BtOpp ObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    if-eqz v1, :cond_2

    .line 299
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-interface {v1}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 305
    :cond_2
    :goto_2
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 295
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 301
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 4

    .prologue
    .line 339
    const/16 v1, 0xc8

    .line 342
    .local v1, "status":I
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v2, :cond_0

    .line 344
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/InterruptedException;
    const/16 v1, 0x1ea

    .line 347
    goto :goto_0

    .line 349
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v2, :cond_1

    .line 351
    const/16 v1, 0x1f1

    .line 353
    :cond_1
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 355
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v1

    .line 361
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 365
    :goto_2
    return-void

    .line 359
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v1, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_1

    .line 363
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v2, v3, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 758
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when sending file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/16 v0, 0x1f0

    .line 760
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 761
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 371
    const-string v10, "BtOpp ObexClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Client thread processShareInfo() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 373
    .local v4, "context":Landroid/content/Context;
    const v10, 0x7f050064

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 374
    .local v8, "tickerText":Ljava/lang/CharSequence;
    const v10, 0x7f050065

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 375
    .local v2, "contentTitle":Ljava/lang/CharSequence;
    const v10, 0x7f050066

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 377
    .local v1, "contentText":Ljava/lang/CharSequence;
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 378
    .local v7, "n":Landroid/app/Notification;
    const v10, 0x1080088

    iput v10, v7, Landroid/app/Notification;->icon:I

    .line 379
    iput-object v8, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Landroid/app/Notification;->when:J

    .line 382
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.btopp.intent.action.LIST"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {v4, v13, v6, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 384
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v7, v4, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 385
    const-string v10, "notification"

    invoke-virtual {v4, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    check-cast v10, Landroid/app/NotificationManager;

    iget-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v11, v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v10, v11, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 387
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v11, v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v12, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v13, v13, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v10, v11, v12, v13}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v5

    .line 389
    .local v5, "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v10, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-wide v10, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 390
    :cond_0
    const-string v10, "BtOpp ObexClient"

    const-string v11, "BluetoothOppSendFileInfo get invalid file"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v11, v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v12, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    invoke-static {v10, v11, v12}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 411
    :goto_0
    const-string v10, "notification"

    invoke-virtual {v4, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    check-cast v10, Landroid/app/NotificationManager;

    iget-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v11, v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 412
    return-object v5

    .line 395
    :cond_1
    const-string v10, "BtOpp ObexClient"

    const-string v11, "Generate BluetoothOppSendFileInfo:"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v10, "BtOpp ObexClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filename  :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v10, "BtOpp ObexClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "length    :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v10, "BtOpp ObexClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mimetype  :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 402
    .local v9, "updateValues":Landroid/content/ContentValues;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v11, v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 404
    .local v3, "contentUri":Landroid/net/Uri;
    const-string v10, "hint"

    iget-object v11, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v10, "total_bytes"

    iget-wide v11, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    const-string v10, "mimetype"

    iget-object v11, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v3, v9, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 42
    .param p1, "fileInfo"    # Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .prologue
    .line 416
    const/16 v16, 0x0

    .line 417
    .local v16, "error":Z
    const/16 v30, -0x1

    .line 418
    .local v30, "responseCode":I
    const/16 v33, 0xc8

    .line 419
    .local v33, "status":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 421
    .local v5, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 423
    .local v2, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    const-wide/16 v6, 0x0

    .line 424
    .local v6, "position":J
    new-instance v28, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v28 .. v28}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 426
    .local v28, "reply":Ljavax/btobex/HeaderSet;
    new-instance v29, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v29 .. v29}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 427
    .local v29, "request":Ljavax/btobex/HeaderSet;
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 428
    const/16 v3, 0x42

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 430
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/btobex/HeaderSet;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v38, 0xc0

    move/from16 v0, v38

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 434
    const/16 v3, 0xc3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v4, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->isSrmCapable()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljavax/btobex/ObexHelper;->setLocalSrmCapability(Z)V

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    invoke-virtual {v3}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 442
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRM status: Enable SRM for first PUT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 444
    const/16 v3, 0x97

    sget-object v4, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 449
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    .line 451
    const/16 v24, 0x0

    .line 452
    .local v24, "putOperation":Ljavax/btobex/ClientOperation;
    const/16 v21, 0x0

    .line 453
    .local v21, "outputStream":Ljava/io/OutputStream;
    const/16 v18, 0x0

    .line 455
    .local v18, "inputStream":Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 456
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 457
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :try_start_2
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "put headerset for "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljavax/btobex/ClientSession;->put(Ljavax/btobex/HeaderSet;)Ljavax/btobex/Operation;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljavax/btobex/ClientOperation;

    move-object/from16 v24, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 468
    :goto_1
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 469
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 470
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 472
    if-nez v16, :cond_3

    .line 477
    :try_start_5
    const-string v3, "bt.opp.amp_move_threshold"

    const v4, 0x61a80

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 479
    .local v9, "ampThresh":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->isAmpCapable()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    int-to-long v0, v9

    move-wide/from16 v38, v0

    cmp-long v3, v3, v38

    if-lez v3, :cond_2

    .line 482
    const-string v3, "debug.bt.opp.ms_pre_amp_move"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 483
    .local v23, "preWait":I
    if-ltz v23, :cond_0

    .line 484
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "DEBUG: delaying before AMP move: "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 486
    move/from16 v0, v23

    int-to-long v3, v0

    :try_start_6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 493
    :cond_0
    :goto_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->setDesiredAmpPolicy(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 495
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Unable to set AMP policy, using default (BR/EDR req)."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_1
    const-string v3, "debug.bt.opp.ms_post_amp_move"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 501
    .local v22, "postWait":I
    if-ltz v22, :cond_2

    .line 502
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "DEBUG: delaying after AMP move: "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 504
    move/from16 v0, v22

    int-to-long v3, v0

    :try_start_8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 513
    .end local v22    # "postWait":I
    .end local v23    # "preWait":I
    :cond_2
    :goto_3
    :try_start_9
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "openOutputStream "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    .line 515
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v18

    .line 523
    .end local v9    # "ampThresh":I
    :cond_3
    :goto_4
    if-nez v16, :cond_4

    .line 524
    :try_start_a
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 525
    .local v37, "updateValues":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v3, "status"

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    .end local v37    # "updateValues":Landroid/content/ContentValues;
    :cond_4
    if-nez v16, :cond_20

    .line 531
    const/16 v25, 0x0

    .line 532
    .local v25, "readLength":I
    const-wide/16 v26, 0x0

    .line 533
    .local v26, "readbytesleft":J
    const/16 v19, 0x0

    .line 534
    .local v19, "okToProceed":Z
    const-wide/16 v34, 0x0

    .line 535
    .local v34, "timestamp":J
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->getMaxPacketSize()I

    move-result v20

    .line 536
    .local v20, "outputBufferSize":I
    move/from16 v0, v20

    new-array v12, v0, [B

    .line 537
    .local v12, "buffer":[B
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    const/16 v4, 0x4000

    invoke-direct {v8, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 539
    .local v8, "a":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_7

    .line 541
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    sub-long v26, v3, v6

    .line 542
    move/from16 v0, v20

    int-to-long v3, v0

    cmp-long v3, v26, v3

    if-gez v3, :cond_5

    .line 543
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v20, v0

    .line 546
    :cond_5
    move/from16 v0, v20

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I
    invoke-static {v8, v12, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Ljava/io/InputStream;[BI)I

    move-result v25

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v4

    const/16 v38, 0x4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v38, 0xc350

    move-wide/from16 v0, v38

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 551
    monitor-enter p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 552
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 553
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 556
    const/4 v3, 0x0

    :try_start_c
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v12, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 558
    move/from16 v0, v25

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 560
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_18

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    monitor-enter p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 563
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 564
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 575
    :goto_5
    :try_start_e
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v30

    .line 577
    const/16 v3, 0x90

    move/from16 v0, v30

    if-eq v0, v3, :cond_6

    const/16 v3, 0xa0

    move/from16 v0, v30

    if-ne v0, v3, :cond_1b

    .line 579
    :cond_6
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Remote accept"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v28

    .line 582
    const/16 v3, 0x97

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Byte;

    .line 583
    .local v31, "srm":Ljava/lang/Byte;
    sget-object v3, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    move-object/from16 v0, v31

    if-ne v0, v3, :cond_1a

    .line 584
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRM status: Enabled by Server response"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 586
    const/16 v3, 0x98

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Byte;

    .line 587
    .local v32, "srmp":Ljava/lang/Byte;
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SRMP header (CONTINUE or OK): "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    sget-object v3, Ljavax/btobex/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    move-object/from16 v0, v32

    if-ne v0, v3, :cond_19

    .line 589
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRMP status: WAIT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    .line 600
    .end local v32    # "srmp":Ljava/lang/Byte;
    :goto_6
    const/16 v19, 0x1

    .line 601
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 602
    .restart local v37    # "updateValues":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 609
    .end local v31    # "srm":Ljava/lang/Byte;
    .end local v37    # "updateValues":Landroid/content/ContentValues;
    :cond_7
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-wide v10

    .local v10, "beginTime":J
    move-object/from16 v36, v2

    .line 610
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v36, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :goto_8
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_1e

    if-eqz v19, :cond_1e

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_1e

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 614
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    sub-long v26, v3, v6

    .line 615
    move/from16 v0, v20

    int-to-long v3, v0

    cmp-long v3, v26, v3

    if-gez v3, :cond_8

    .line 616
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v20, v0

    .line 619
    :cond_8
    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v12, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v25

    .line 620
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v12, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 623
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v30

    .line 624
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Response code is "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 625
    const/16 v3, 0x90

    move/from16 v0, v30

    if-eq v0, v3, :cond_1c

    const/16 v3, 0xa0

    move/from16 v0, v30

    if-eq v0, v3, :cond_1c

    .line 628
    const/16 v19, 0x0

    goto :goto_8

    .line 446
    .end local v8    # "a":Ljava/io/BufferedInputStream;
    .end local v10    # "beginTime":J
    .end local v12    # "buffer":[B
    .end local v18    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "okToProceed":Z
    .end local v20    # "outputBufferSize":I
    .end local v21    # "outputStream":Ljava/io/OutputStream;
    .end local v24    # "putOperation":Ljavax/btobex/ClientOperation;
    .end local v25    # "readLength":I
    .end local v26    # "readbytesleft":J
    .end local v34    # "timestamp":J
    .end local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_9
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRM status: Disable SRM for first PUT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    goto/16 :goto_0

    .line 457
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    .restart local v21    # "outputStream":Ljava/io/OutputStream;
    .restart local v24    # "putOperation":Ljavax/btobex/ClientOperation;
    :catchall_0
    move-exception v3

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    throw v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 687
    :catch_0
    move-exception v13

    .line 688
    .local v13, "e":Ljava/io/IOException;
    :goto_9
    :try_start_12
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 699
    if-eqz v2, :cond_a

    .line 700
    :try_start_13
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 701
    const/4 v2, 0x0

    .line 704
    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 705
    if-nez v16, :cond_b

    .line 706
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v30

    .line 707
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_2b

    .line 708
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Get response code "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/16 v3, 0xa0

    move/from16 v0, v30

    if-eq v0, v3, :cond_b

    .line 710
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v38, 0x0

    cmp-long v3, v3, v38

    if-nez v3, :cond_2c

    const/16 v3, 0xcb

    move/from16 v0, v30

    if-ne v0, v3, :cond_2c

    .line 713
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 715
    const/16 v33, 0x193

    .line 734
    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v33

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 736
    if-eqz v18, :cond_c

    .line 737
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 739
    :cond_c
    if-eqz v24, :cond_d

    .line 740
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 754
    .end local v13    # "e":Ljava/io/IOException;
    :cond_d
    :goto_b
    return v33

    .line 461
    :catch_1
    move-exception v13

    .line 462
    .restart local v13    # "e":Ljava/io/IOException;
    const/16 v33, 0x1f0

    .line 463
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v33

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 465
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when put HeaderSet "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 466
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 470
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    throw v3
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 690
    :catch_2
    move-exception v13

    .line 691
    .local v13, "e":Ljava/lang/NullPointerException;
    :goto_c
    :try_start_17
    const-string v3, "BtOpp ObexClient"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 699
    if-eqz v2, :cond_e

    .line 700
    :try_start_18
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 701
    const/4 v2, 0x0

    .line 704
    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 705
    if-nez v16, :cond_f

    .line 706
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v30

    .line 707
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_2f

    .line 708
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Get response code "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/16 v3, 0xa0

    move/from16 v0, v30

    if-eq v0, v3, :cond_f

    .line 710
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v38, 0x0

    cmp-long v3, v3, v38

    if-nez v3, :cond_30

    const/16 v3, 0xcb

    move/from16 v0, v30

    if-ne v0, v3, :cond_30

    .line 713
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 715
    const/16 v33, 0x193

    .line 734
    :cond_f
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v33

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 736
    if-eqz v18, :cond_10

    .line 737
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 739
    :cond_10
    if-eqz v24, :cond_d

    .line 740
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3

    goto/16 :goto_b

    .line 742
    :catch_3
    move-exception v13

    .line 743
    .local v13, "e":Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_d

    .line 749
    const/16 v33, 0x193

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    :goto_e
    move/from16 v0, v33

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_b

    .line 487
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v9    # "ampThresh":I
    .restart local v23    # "preWait":I
    :catch_4
    move-exception v13

    .line 488
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_19
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Interrupted during pre-AMP move delay."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    goto/16 :goto_2

    .line 693
    .end local v9    # "ampThresh":I
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v23    # "preWait":I
    :catch_5
    move-exception v13

    .line 694
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_f
    :try_start_1a
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IndexOutOfBoundsException"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 699
    if-eqz v2, :cond_11

    .line 700
    :try_start_1b
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 701
    const/4 v2, 0x0

    .line 704
    :cond_11
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 705
    if-nez v16, :cond_12

    .line 706
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v30

    .line 707
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_33

    .line 708
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Get response code "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/16 v3, 0xa0

    move/from16 v0, v30

    if-eq v0, v3, :cond_12

    .line 710
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v38, 0x0

    cmp-long v3, v3, v38

    if-nez v3, :cond_34

    const/16 v3, 0xcb

    move/from16 v0, v30

    if-ne v0, v3, :cond_34

    .line 713
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 715
    const/16 v33, 0x193

    .line 734
    :cond_12
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v33

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 736
    if-eqz v18, :cond_13

    .line 737
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 739
    :cond_13
    if-eqz v24, :cond_d

    .line 740
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_6

    goto/16 :goto_b

    .line 742
    :catch_6
    move-exception v13

    .line 743
    .local v13, "e":Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_d

    .line 749
    const/16 v33, 0x193

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto/16 :goto_e

    .line 505
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v9    # "ampThresh":I
    .restart local v22    # "postWait":I
    .restart local v23    # "preWait":I
    :catch_7
    move-exception v13

    .line 506
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_1c
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Interrupted during post-AMP move delay."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/16 :goto_3

    .line 697
    .end local v9    # "ampThresh":I
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v22    # "postWait":I
    .end local v23    # "preWait":I
    :catchall_2
    move-exception v3

    .line 699
    :goto_11
    if-eqz v2, :cond_14

    .line 700
    :try_start_1d
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 701
    const/4 v2, 0x0

    .line 704
    :cond_14
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 705
    if-nez v16, :cond_15

    .line 706
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v30

    .line 707
    const/4 v4, -0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_27

    .line 708
    const-string v4, "BtOpp ObexClient"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Get response code "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/16 v4, 0xa0

    move/from16 v0, v30

    if-eq v0, v4, :cond_15

    .line 710
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v4, v38, v40

    if-nez v4, :cond_28

    const/16 v4, 0xcb

    move/from16 v0, v30

    if-ne v0, v4, :cond_28

    .line 713
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 715
    const/16 v33, 0x193

    .line 734
    :cond_15
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 736
    if-eqz v18, :cond_16

    .line 737
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 739
    :cond_16
    if-eqz v24, :cond_17

    .line 740
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c

    .line 697
    :cond_17
    :goto_13
    throw v3

    .line 516
    .restart local v9    # "ampThresh":I
    :catch_8
    move-exception v13

    .line 517
    .local v13, "e":Ljava/io/IOException;
    const/16 v33, 0x1f0

    .line 518
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v33

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 519
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when openOutputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_5
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 520
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 553
    .end local v9    # "ampThresh":I
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v8    # "a":Ljava/io/BufferedInputStream;
    .restart local v12    # "buffer":[B
    .restart local v19    # "okToProceed":Z
    .restart local v20    # "outputBufferSize":I
    .restart local v25    # "readLength":I
    .restart local v26    # "readbytesleft":J
    .restart local v34    # "timestamp":J
    :catchall_3
    move-exception v3

    :try_start_1f
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    :try_start_20
    throw v3
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 564
    :catchall_4
    move-exception v3

    :try_start_21
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    :try_start_22
    throw v3

    .line 568
    :cond_18
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 570
    monitor-enter p0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_22} :catch_5
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 571
    :try_start_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 572
    monitor-exit p0

    goto/16 :goto_5

    :catchall_5
    move-exception v3

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    :try_start_24
    throw v3

    .line 592
    .restart local v31    # "srm":Ljava/lang/Byte;
    .restart local v32    # "srmp":Ljava/lang/Byte;
    :cond_19
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRMP status: NONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    goto/16 :goto_6

    .line 596
    .end local v32    # "srmp":Ljava/lang/Byte;
    :cond_1a
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRM status: Disabled by Server response"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    goto/16 :goto_6

    .line 606
    .end local v31    # "srm":Ljava/lang/Byte;
    :cond_1b
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Remote reject, Response code is "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_24} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24 .. :try_end_24} :catch_5
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    goto/16 :goto_7

    .line 630
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v10    # "beginTime":J
    .restart local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_1c
    move/from16 v0, v25

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 632
    :try_start_25
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Sending file position = "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v38, " readLength "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v38, " bytes took "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v34

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v38, " ms"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    if-nez v36, :cond_1d

    .line 638
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    .line 640
    .end local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_start_26
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->start()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_26} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_26 .. :try_end_26} :catch_5
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    move-object/from16 v36, v2

    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_8

    .line 642
    :cond_1d
    :try_start_27
    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->updateProgress(J)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    goto/16 :goto_8

    .line 687
    :catch_9
    move-exception v13

    move-object/from16 v2, v36

    .end local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_9

    .line 649
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_1e
    if-eqz v36, :cond_3b

    .line 651
    :try_start_28
    invoke-virtual/range {v36 .. v36}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 652
    invoke-virtual/range {v36 .. v36}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->join()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_28} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    .line 653
    const/4 v2, 0x0

    .line 655
    .end local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_start_29
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .restart local v37    # "updateValues":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_10
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_29} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_29 .. :try_end_29} :catch_5
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    .line 664
    .end local v37    # "updateValues":Landroid/content/ContentValues;
    :goto_14
    const/16 v3, 0xc3

    move/from16 v0, v30

    if-eq v0, v3, :cond_1f

    const/16 v3, 0xc6

    move/from16 v0, v30

    if-ne v0, v3, :cond_24

    .line 666
    :cond_1f
    :try_start_2a
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Remote reject file "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v38, " length "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_2a} :catch_5
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    .line 668
    const/16 v33, 0x193

    .line 699
    .end local v8    # "a":Ljava/io/BufferedInputStream;
    .end local v10    # "beginTime":J
    .end local v12    # "buffer":[B
    .end local v19    # "okToProceed":Z
    .end local v20    # "outputBufferSize":I
    .end local v25    # "readLength":I
    .end local v26    # "readbytesleft":J
    .end local v34    # "timestamp":J
    :cond_20
    :goto_15
    if-eqz v2, :cond_21

    .line 700
    :try_start_2b
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 701
    const/4 v2, 0x0

    .line 704
    :cond_21
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 705
    if-nez v16, :cond_22

    .line 706
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v30

    .line 707
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_37

    .line 708
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Get response code "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/16 v3, 0xa0

    move/from16 v0, v30

    if-eq v0, v3, :cond_22

    .line 710
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v38, 0x0

    cmp-long v3, v3, v38

    if-nez v3, :cond_38

    const/16 v3, 0xcb

    move/from16 v0, v30

    if-ne v0, v3, :cond_38

    .line 713
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 715
    const/16 v33, 0x193

    .line 734
    :cond_22
    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v33

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 736
    if-eqz v18, :cond_23

    .line 737
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 739
    :cond_23
    if-eqz v24, :cond_d

    .line 740
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_a

    goto/16 :goto_b

    .line 742
    :catch_a
    move-exception v13

    .line 743
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_d

    .line 749
    const/16 v33, 0x193

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto/16 :goto_e

    .line 659
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v8    # "a":Ljava/io/BufferedInputStream;
    .restart local v10    # "beginTime":J
    .restart local v12    # "buffer":[B
    .restart local v19    # "okToProceed":Z
    .restart local v20    # "outputBufferSize":I
    .restart local v25    # "readLength":I
    .restart local v26    # "readbytesleft":J
    .restart local v34    # "timestamp":J
    .restart local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_b
    move-exception v17

    move-object/from16 v2, v36

    .line 660
    .end local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v17, "ie":Ljava/lang/InterruptedException;
    :goto_17
    :try_start_2c
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Interrupted waiting for uiUpdateThread to join"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 669
    .end local v17    # "ie":Ljava/lang/InterruptedException;
    :cond_24
    const/16 v3, 0xcf

    move/from16 v0, v30

    if-ne v0, v3, :cond_25

    .line 670
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Remote reject file type "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v33, 0x196

    goto/16 :goto_15

    .line 672
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_26

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_26

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 674
    .local v14, "endTime":J
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SendFile finished sending file "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v38, " length "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v38, "Bytes in "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v38, v14, v10

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v38, "ms"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_15

    .line 679
    .end local v14    # "endTime":J
    :cond_26
    const/16 v16, 0x1

    .line 680
    const/16 v33, 0x1ea

    .line 681
    invoke-virtual/range {v24 .. v24}, Ljavax/btobex/ClientOperation;->abort()V

    .line 683
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SendFile interrupted when send out file "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v38, " at "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v38, " of "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_2c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2c .. :try_end_2c} :catch_5
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    goto/16 :goto_15

    .line 742
    .end local v8    # "a":Ljava/io/BufferedInputStream;
    .end local v10    # "beginTime":J
    .end local v12    # "buffer":[B
    .end local v19    # "okToProceed":Z
    .end local v20    # "outputBufferSize":I
    .end local v25    # "readLength":I
    .end local v26    # "readbytesleft":J
    .end local v34    # "timestamp":J
    :catch_c
    move-exception v13

    .line 743
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v4, "BtOpp ObexClient"

    const-string v38, "IOException"

    move-object/from16 v0, v38

    invoke-static {v4, v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    const-string v4, "BtOpp ObexClient"

    const-string v38, "Error when closing stream after send"

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    cmp-long v4, v6, v38

    if-eqz v4, :cond_17

    .line 749
    const/16 v33, 0x193

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_13

    .line 730
    .end local v13    # "e":Ljava/io/IOException;
    :cond_27
    const/16 v33, 0x1f1

    goto/16 :goto_12

    .line 717
    :cond_28
    :try_start_2d
    const-string v4, "BtOpp ObexClient"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Response error code is "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_c

    .line 718
    const/16 v33, 0x1ef

    .line 719
    const/16 v4, 0xcf

    move/from16 v0, v30

    if-ne v0, v4, :cond_29

    .line 720
    const/16 v33, 0x196

    .line 722
    :cond_29
    const/16 v4, 0xc3

    move/from16 v0, v30

    if-eq v0, v4, :cond_2a

    const/16 v4, 0xc6

    move/from16 v0, v30

    if-ne v0, v4, :cond_15

    .line 724
    :cond_2a
    const/16 v33, 0x193

    goto/16 :goto_12

    .line 742
    .restart local v13    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v13

    .line 743
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_d

    .line 749
    const/16 v33, 0x193

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto/16 :goto_e

    .line 730
    :cond_2b
    const/16 v33, 0x1f1

    goto/16 :goto_a

    .line 717
    :cond_2c
    :try_start_2e
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Response error code is "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_d

    .line 718
    const/16 v33, 0x1ef

    .line 719
    const/16 v3, 0xcf

    move/from16 v0, v30

    if-ne v0, v3, :cond_2d

    .line 720
    const/16 v33, 0x196

    .line 722
    :cond_2d
    const/16 v3, 0xc3

    move/from16 v0, v30

    if-eq v0, v3, :cond_2e

    const/16 v3, 0xc6

    move/from16 v0, v30

    if-ne v0, v3, :cond_b

    .line 724
    :cond_2e
    const/16 v33, 0x193

    goto/16 :goto_a

    .line 730
    .local v13, "e":Ljava/lang/NullPointerException;
    :cond_2f
    const/16 v33, 0x1f1

    goto/16 :goto_d

    .line 717
    :cond_30
    :try_start_2f
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Response error code is "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_3

    .line 718
    const/16 v33, 0x1ef

    .line 719
    const/16 v3, 0xcf

    move/from16 v0, v30

    if-ne v0, v3, :cond_31

    .line 720
    const/16 v33, 0x196

    .line 722
    :cond_31
    const/16 v3, 0xc3

    move/from16 v0, v30

    if-eq v0, v3, :cond_32

    const/16 v3, 0xc6

    move/from16 v0, v30

    if-ne v0, v3, :cond_f

    .line 724
    :cond_32
    const/16 v33, 0x193

    goto/16 :goto_d

    .line 730
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_33
    const/16 v33, 0x1f1

    goto/16 :goto_10

    .line 717
    :cond_34
    :try_start_30
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Response error code is "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_6

    .line 718
    const/16 v33, 0x1ef

    .line 719
    const/16 v3, 0xcf

    move/from16 v0, v30

    if-ne v0, v3, :cond_35

    .line 720
    const/16 v33, 0x196

    .line 722
    :cond_35
    const/16 v3, 0xc3

    move/from16 v0, v30

    if-eq v0, v3, :cond_36

    const/16 v3, 0xc6

    move/from16 v0, v30

    if-ne v0, v3, :cond_12

    .line 724
    :cond_36
    const/16 v33, 0x193

    goto/16 :goto_10

    .line 730
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_37
    const/16 v33, 0x1f1

    goto/16 :goto_16

    .line 717
    :cond_38
    :try_start_31
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Response error code is "

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_a

    .line 718
    const/16 v33, 0x1ef

    .line 719
    const/16 v3, 0xcf

    move/from16 v0, v30

    if-ne v0, v3, :cond_39

    .line 720
    const/16 v33, 0x196

    .line 722
    :cond_39
    const/16 v3, 0xc3

    move/from16 v0, v30

    if-eq v0, v3, :cond_3a

    const/16 v3, 0xc6

    move/from16 v0, v30

    if-ne v0, v3, :cond_22

    .line 724
    :cond_3a
    const/16 v33, 0x193

    goto/16 :goto_16

    .line 697
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v8    # "a":Ljava/io/BufferedInputStream;
    .restart local v10    # "beginTime":J
    .restart local v12    # "buffer":[B
    .restart local v19    # "okToProceed":Z
    .restart local v20    # "outputBufferSize":I
    .restart local v25    # "readLength":I
    .restart local v26    # "readbytesleft":J
    .restart local v34    # "timestamp":J
    .restart local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catchall_6
    move-exception v3

    move-object/from16 v2, v36

    .end local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_11

    .line 693
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_e
    move-exception v13

    move-object/from16 v2, v36

    .end local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_f

    .line 690
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_f
    move-exception v13

    move-object/from16 v2, v36

    .end local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_c

    .line 659
    :catch_10
    move-exception v17

    goto/16 :goto_17

    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_3b
    move-object/from16 v2, v36

    .end local v36    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_14
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 231
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 233
    return-void
.end method

.method public interrupt()V
    .locals 4

    .prologue
    .line 766
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 767
    monitor-enter p0

    .line 768
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 769
    const-string v2, "BtOpp ObexClient"

    const-string v3, "Interrupted when waitingForRemote"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-interface {v2}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 776
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 777
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v2, :cond_0

    .line 778
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 780
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 782
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit p0

    .line 783
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BtOpp ObexClient"

    const-string v3, "mTransport.close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 237
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 239
    const-string v2, "BtOpp ObexClient"

    const-string v3, "acquire partial WakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 243
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect()V

    .line 252
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v2, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e1":Ljava/lang/InterruptedException;
    const-string v2, "BtOpp ObexClient"

    const-string v3, "Client thread was interrupted (1), exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto :goto_0

    .line 257
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    const-string v2, "BtOpp ObexClient"

    const-string v3, "Client thread waiting for next share, sleep for 500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 260
    :catch_1
    move-exception v2

    goto :goto_1

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    .line 267
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    const-string v2, "BtOpp ObexClient"

    const-string v3, "release partial WakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 271
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 272
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 273
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 276
    return-void
.end method
