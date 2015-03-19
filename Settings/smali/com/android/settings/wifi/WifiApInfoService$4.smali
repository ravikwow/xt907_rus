.class Lcom/android/settings/wifi/WifiApInfoService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiApInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApInfoService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 453
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 454
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 455
    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 457
    packed-switch v2, :pswitch_data_0

    .line 537
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApInfoService;->access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 540
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$2200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$2600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->clearUnBlackList()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$2700(Lcom/android/settings/wifi/WifiApInfoService;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$2802(Lcom/android/settings/wifi/WifiApInfoService;Z)Z

    .line 553
    :cond_1
    :goto_1
    return-void

    .line 460
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApInfoService;->access$2200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApInfoService;->access$2200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v4

    monitor-enter v4

    .line 463
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    const-string v3, "null"

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiApInfoService;->access$1002(Lcom/android/settings/wifi/WifiApInfoService;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApInfoService;->access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    new-instance v2, Ljava/io/File;

    const-string v3, "sys/class/net/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    if-eqz v2, :cond_d

    .line 469
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 471
    :goto_2
    if-eqz v3, :cond_3

    .line 472
    array-length v5, v3

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_3

    aget-object v6, v3, v2

    .line 473
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiRegExs:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$2300(Lcom/android/settings/wifi/WifiApInfoService;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    :goto_4
    if-ge v0, v8, :cond_2

    aget-object v9, v7, v0

    .line 474
    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/io/File;

    const-string v10, "sys/class/net/"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/carrier"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 478
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/settings/wifi/WifiApInfoService;->access$1002(Lcom/android/settings/wifi/WifiApInfoService;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    const-string v0, "WifiApInfoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Link Mon Tether interface matched - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 491
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 473
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 472
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    .line 491
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 496
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$2400(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 498
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApInfoService;->access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 501
    :cond_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 503
    sget-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 504
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->removeConnectedDeviceFromScreen(Lcom/android/settings/wifi/ConnectedDevice;)V

    goto :goto_5

    .line 501
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 507
    :cond_8
    sget-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->mNoOfClientDevice:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$402(Lcom/android/settings/wifi/WifiApInfoService;I)I

    goto/16 :goto_1

    .line 512
    :pswitch_3
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 513
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 514
    sput-object v0, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    .line 516
    :cond_9
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 517
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 518
    sput-object v0, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    .line 520
    :cond_a
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 521
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 522
    sput-object v0, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 526
    :cond_b
    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$2502(Z)Z

    .line 528
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 529
    const-string v2, "restart_hotspot"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const/high16 v2, 0x54000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 539
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 550
    :cond_c
    const-string v0, "motorola.net.wifi.MAX_DEVICES_ALERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$4;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->setMaxDeviceNotification()Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$2900(Lcom/android/settings/wifi/WifiApInfoService;)Z

    goto/16 :goto_1

    :cond_d
    move-object v3, v0

    goto/16 :goto_2

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
