.class public Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
.super Ljava/lang/Object;
.source "BluetoothOppRfcommListener.java"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtOppRfcommChannel:I

.field private mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;

.field private mTcpServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 80
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;-><init>(Landroid/bluetooth/BluetoothAdapter;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;I)V
    .locals 4
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "channel"    # I

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 77
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    .line 84
    iput p2, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtOppRfcommChannel:I

    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    const-string v1, "BtOppRfcommListener"

    const-string v2, "Applying OBEX debug system properties."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v1, "debug.bt.opp.server.rfcomm_scn"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "debugScn":I
    if-ltz v0, :cond_0

    .line 92
    const-string v1, "BtOppRfcommListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG: Forcing OBEX RFCOMM listener on scn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtOppRfcommChannel:I

    .line 96
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothServerSocket;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtOppRfcommChannel:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;

    const-string v1, "BtOppRfcommListener"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "BtOppRfcommListener"

    const-string v2, "stopping Accept Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z

    .line 211
    const-string v1, "BtOppRfcommListener"

    const-string v2, "close mBtServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 215
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 223
    const-string v1, "BtOppRfcommListener"

    const-string v2, "waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v1, "BtOppRfcommListener"

    const-string v2, "Error close mBtServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 227
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "BtOppRfcommListener"

    const-string v2, "Interrupted waiting for Accept Thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
