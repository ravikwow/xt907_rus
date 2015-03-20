.class public Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaScannerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnectMediaScanner()V
    .locals 5

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    # setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 158
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    # getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    # setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v1, v3}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 160
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 161
    const-string v1, "DownloadManager"

    const-string v3, "Disconnecting from Media Scanner"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :try_start_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 172
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    :try_start_4
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 172
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 169
    :catchall_1
    move-exception v1

    :try_start_5
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "DownloadManager"

    const-string v1, "Connected to Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    # setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v0, v2}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 144
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v2

    # setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0, v2}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 145
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    # getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadService;->access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    # invokes: Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadService;->access$000(Lcom/android/providers/downloads/DownloadService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 150
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0

    .line 152
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 177
    :try_start_0
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "DownloadManager"

    const-string v1, "Disconnected from Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v1

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    # setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0, v2}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 183
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    # setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v0, v2}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 185
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v1

    .line 188
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 181
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v1

    .line 182
    :try_start_2
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    # setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 183
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    # setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 185
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
