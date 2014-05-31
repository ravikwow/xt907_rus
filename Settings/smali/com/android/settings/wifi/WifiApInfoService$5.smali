.class Lcom/android/settings/wifi/WifiApInfoService$5;
.super Ljava/lang/Object;
.source "WifiApInfoService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 564
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 567
    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$3000()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 568
    :try_start_0
    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$3000()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 569
    .local v0, "mac":Ljava/lang/String;
    const-string v1, "WifiApInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing Blacklisted MAC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/android/settings/wifi/WifiApManageDevices;->setAllowIfWhiteMac(ZLjava/lang/String;Landroid/content/Context;)Z

    .line 571
    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$3000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->setApAllowedDeviceConfig(Landroid/content/Context;)V

    .line 579
    :cond_0
    :goto_0
    monitor-exit v2

    .line 580
    return-void

    .line 575
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$5;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$3000()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    goto :goto_0

    .line 579
    .end local v0    # "mac":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
