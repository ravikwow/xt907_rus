.class Lcom/android/providers/media/MtpService$MyTimerTask;
.super Ljava/util/TimerTask;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field mNewState:Ljava/lang/String;

.field mObjectHandle:I

.field mOldState:Ljava/lang/String;

.field mPath:Ljava/lang/String;

.field mReason:I

.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;II)V
    .locals 0
    .param p2, "reason"    # I
    .param p3, "objectid"    # I

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    .line 81
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 82
    iput p2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    .line 83
    iput p3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mObjectHandle:I

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/android/providers/media/MtpService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "reason"    # I
    .param p3, "oldState"    # Ljava/lang/String;
    .param p4, "newState"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    .line 72
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 73
    iput p2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    .line 74
    iput-object p5, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mPath:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mOldState:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mNewState:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerTask.run(): mReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    # getter for: Lcom/android/providers/media/MtpService;->REASON_USER_PRESENT:I
    invoke-static {}, Lcom/android/providers/media/MtpService;->access$000()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 91
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v2

    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mMtpDisabled:Z
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$200(Lcom/android/providers/media/MtpService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # invokes: Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)V

    .line 95
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    const/4 v3, 0x0

    # setter for: Lcom/android/providers/media/MtpService;->mMtpDisabled:Z
    invoke-static {v1, v3}, Lcom/android/providers/media/MtpService;->access$202(Lcom/android/providers/media/MtpService;Z)Z

    .line 97
    :cond_0
    monitor-exit v2

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 98
    :cond_2
    iget v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    # getter for: Lcom/android/providers/media/MtpService;->REASON_STORAGE_EVENT:I
    invoke-static {}, Lcom/android/providers/media/MtpService;->access$400()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 99
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v2

    monitor-enter v2

    .line 100
    :try_start_1
    const-string v1, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mOldState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mNewState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v1, "mounted"

    iget-object v3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mNewState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    iget-object v3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mPath:Ljava/lang/String;

    # invokes: Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/providers/media/MtpService;->access$500(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V

    .line 109
    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 103
    :cond_4
    :try_start_2
    const-string v1, "mounted"

    iget-object v3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mOldState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$600(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 105
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_3

    .line 106
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # invokes: Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/os/storage/StorageVolume;)V
    invoke-static {v1, v0}, Lcom/android/providers/media/MtpService;->access$700(Lcom/android/providers/media/MtpService;Landroid/os/storage/StorageVolume;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 112
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    iget v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    # getter for: Lcom/android/providers/media/MtpService;->REASON_OBJADDED_EVENT:I
    invoke-static {}, Lcom/android/providers/media/MtpService;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 113
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v2

    monitor-enter v2

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$900(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 115
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$900(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v1

    iget v3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mObjectHandle:I

    invoke-virtual {v1, v3}, Landroid/mtp/MtpServer;->sendObjectAdded(I)V

    .line 117
    :cond_6
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 118
    :cond_7
    iget v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    # getter for: Lcom/android/providers/media/MtpService;->REASON_OBJREMOVED_EVENT:I
    invoke-static {}, Lcom/android/providers/media/MtpService;->access$1000()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v2

    monitor-enter v2

    .line 120
    :try_start_4
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$900(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 121
    iget-object v1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$900(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v1

    iget v3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mObjectHandle:I

    invoke-virtual {v1, v3}, Landroid/mtp/MtpServer;->sendObjectRemoved(I)V

    .line 123
    :cond_8
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1
.end method
