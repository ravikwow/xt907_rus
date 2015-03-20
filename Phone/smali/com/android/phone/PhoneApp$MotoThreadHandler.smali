.class Lcom/android/phone/PhoneApp$MotoThreadHandler;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotoThreadHandler"
.end annotation


# instance fields
.field private final EVENT_PROXIMITYWAKELOCK_ACQUIRE:I

.field private final EVENT_PROXIMITYWAKELOCK_RELEASE:I

.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2569
    iput-object p1, p0, Lcom/android/phone/PhoneApp$MotoThreadHandler;->this$0:Lcom/android/phone/PhoneApp;

    .line 2570
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2566
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneApp$MotoThreadHandler;->EVENT_PROXIMITYWAKELOCK_ACQUIRE:I

    .line 2567
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/PhoneApp$MotoThreadHandler;->EVENT_PROXIMITYWAKELOCK_RELEASE:I

    .line 2571
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2574
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2600
    :goto_0
    return-void

    .line 2576
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp$MotoThreadHandler;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    monitor-enter v1

    .line 2577
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp$MotoThreadHandler;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2578
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v2, "updateProximitySensorMode: acquiring..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp$MotoThreadHandler;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2584
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2581
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v2, "updateProximitySensorMode: lock already held."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2587
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp$MotoThreadHandler;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    monitor-enter v1

    .line 2588
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp$MotoThreadHandler;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2589
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhoneApp"

    const-string v2, "updateProximitySensorMode: releasing..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PhoneApp$MotoThreadHandler;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 2595
    :cond_4
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2592
    :cond_5
    :try_start_3
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "PhoneApp"

    const-string v2, "updateProximitySensorMode: lock already released."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 2574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final proximityWakeLockAcquire()V
    .locals 1

    .prologue
    .line 2603
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2604
    return-void
.end method

.method public final proximityWakeLockRelease(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 2607
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2608
    return-void
.end method
