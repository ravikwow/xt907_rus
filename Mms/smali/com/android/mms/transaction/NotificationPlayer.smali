.class public Lcom/android/mms/transaction/NotificationPlayer;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/NotificationPlayer$1;,
        Lcom/android/mms/transaction/NotificationPlayer$CmdThread;,
        Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;,
        Lcom/android/mms/transaction/NotificationPlayer$Command;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/mms/transaction/NotificationPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletionHandlingLock:Ljava/lang/Object;

.field private mCompletionThread:Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;

.field private mLooper:Landroid/os/Looper;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/android/mms/transaction/NotificationPlayer$CmdThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 235
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    .line 242
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mState:I

    .line 250
    if-eqz p1, :cond_0

    .line 251
    iput-object p1, p0, Lcom/android/mms/transaction/NotificationPlayer;->mTag:Ljava/lang/String;

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v0, "NotificationPlayer"

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/mms/transaction/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;
    .param p1, "x1"    # Landroid/media/AudioManager;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/mms/transaction/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/NotificationPlayer;Lcom/android/mms/transaction/NotificationPlayer$Command;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;
    .param p1, "x1"    # Lcom/android/mms/transaction/NotificationPlayer$Command;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/NotificationPlayer;->startSound(Lcom/android/mms/transaction/NotificationPlayer$Command;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/mms/transaction/NotificationPlayer;Lcom/android/mms/transaction/NotificationPlayer$CmdThread;)Lcom/android/mms/transaction/NotificationPlayer$CmdThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;
    .param p1, "x1"    # Lcom/android/mms/transaction/NotificationPlayer$CmdThread;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/mms/transaction/NotificationPlayer;->mThread:Lcom/android/mms/transaction/NotificationPlayer$CmdThread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/NotificationPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/NotificationPlayer;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/mms/transaction/NotificationPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 343
    :cond_0
    return-void
.end method

.method private enqueueLocked(Lcom/android/mms/transaction/NotificationPlayer$Command;)V
    .locals 1
    .param p1, "cmd"    # Lcom/android/mms/transaction/NotificationPlayer$Command;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mThread:Lcom/android/mms/transaction/NotificationPlayer$CmdThread;

    if-nez v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/android/mms/transaction/NotificationPlayer;->acquireWakeLock()V

    .line 310
    new-instance v0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;-><init>(Lcom/android/mms/transaction/NotificationPlayer;)V

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mThread:Lcom/android/mms/transaction/NotificationPlayer$CmdThread;

    .line 311
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mThread:Lcom/android/mms/transaction/NotificationPlayer$CmdThread;

    invoke-virtual {v0}, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->start()V

    .line 313
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 349
    :cond_0
    return-void
.end method

.method private startSound(Lcom/android/mms/transaction/NotificationPlayer$Command;)V
    .locals 7
    .param p1, "cmd"    # Lcom/android/mms/transaction/NotificationPlayer$Command;

    .prologue
    .line 131
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v3, v5, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 139
    :cond_0
    new-instance v3, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;-><init>(Lcom/android/mms/transaction/NotificationPlayer;Lcom/android/mms/transaction/NotificationPlayer$Command;)V

    iput-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCompletionThread:Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;

    .line 140
    iget-object v5, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCompletionThread:Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCompletionThread:Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->start()V

    .line 142
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCompletionThread:Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 143
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/mms/transaction/NotificationPlayer$Command;->requestTime:J

    sub-long v0, v3, v5

    .line 148
    .local v0, "delay":J
    const-wide/16 v3, 0x3e8

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification sound delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 155
    .end local v0    # "delay":J
    :cond_1
    :goto_0
    return-void

    .line 143
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 144
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 226
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCompletionThread:Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;

    .line 227
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    return-void

    .line 227
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 229
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZIF)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "looping"    # Z
    .param p4, "stream"    # I
    .param p5, "volume"    # F

    .prologue
    const/4 v3, 0x1

    .line 274
    new-instance v0, Lcom/android/mms/transaction/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationPlayer$Command;-><init>(Lcom/android/mms/transaction/NotificationPlayer$1;)V

    .line 275
    .local v0, "cmd":Lcom/android/mms/transaction/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->requestTime:J

    .line 276
    iput v3, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->code:I

    .line 277
    iput-object p1, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->context:Landroid/content/Context;

    .line 278
    iput-object p2, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 279
    iput-boolean p3, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->looping:Z

    .line 280
    iput p4, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->stream:I

    .line 281
    iput p5, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->volume:F

    .line 282
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 283
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/NotificationPlayer;->enqueueLocked(Lcom/android/mms/transaction/NotificationPlayer$Command;)V

    .line 284
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/mms/transaction/NotificationPlayer;->mState:I

    .line 285
    monitor-exit v2

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 293
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 296
    :try_start_0
    iget v1, p0, Lcom/android/mms/transaction/NotificationPlayer;->mState:I

    if-eq v1, v3, :cond_0

    .line 297
    new-instance v0, Lcom/android/mms/transaction/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationPlayer$Command;-><init>(Lcom/android/mms/transaction/NotificationPlayer$1;)V

    .line 298
    .local v0, "cmd":Lcom/android/mms/transaction/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->requestTime:J

    .line 299
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->code:I

    .line 300
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/NotificationPlayer;->enqueueLocked(Lcom/android/mms/transaction/NotificationPlayer$Command;)V

    .line 301
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/mms/transaction/NotificationPlayer;->mState:I

    .line 303
    .end local v0    # "cmd":Lcom/android/mms/transaction/NotificationPlayer$Command;
    :cond_0
    monitor-exit v2

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
