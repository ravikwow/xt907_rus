.class Lcom/android/settings/wifi/WifiApInfoService$1;
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
    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 100
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v13, "workList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/ConnectedDevice;>;"
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectedDevList()Ljava/util/List;

    move-result-object v12

    .line 104
    .local v12, "staList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/wifi/StaInfo;>;"
    const-string v1, "WifiApInfoService"

    const-string v2, "polling mRefreshConnectedDeviceList"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 106
    .local v0, "c":Lcom/android/settings/wifi/ConnectedDevice;
    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/wifi/StaInfo;

    iget-object v1, v1, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    .line 109
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/wifi/StaInfo;

    iget-object v1, v1, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->updateConnectedDevice(Lcom/android/settings/wifi/ConnectedDevice;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->updateNotificationDetails(Lcom/android/settings/wifi/ConnectedDevice;)V
    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$100(Lcom/android/settings/wifi/WifiApInfoService;Lcom/android/settings/wifi/ConnectedDevice;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_1
    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :catch_0
    move-exception v6

    .line 113
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "WifiApInfoService"

    const-string v2, "Something is not right in the index IP update"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z
    invoke-static {v1, v14, v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$200(Lcom/android/settings/wifi/WifiApInfoService;ZLcom/android/settings/wifi/ConnectedDevice;)Z

    .line 119
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->removeConnectedDeviceFromScreen(Lcom/android/settings/wifi/ConnectedDevice;)V

    .line 120
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 127
    .restart local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 130
    .end local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 131
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/android/wifi/StaInfo;

    .line 132
    .local v11, "s":Lcom/motorola/android/wifi/StaInfo;
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v11, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    iget-object v3, v11, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    iget-object v4, v11, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 133
    .restart local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z
    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$200(Lcom/android/settings/wifi/WifiApInfoService;ZLcom/android/settings/wifi/ConnectedDevice;)Z

    .line 134
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->addConnectedDeviceToScreen(Lcom/android/settings/wifi/ConnectedDevice;)V

    goto :goto_3

    .line 144
    .end local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    .end local v11    # "s":Lcom/motorola/android/wifi/StaInfo;
    :cond_3
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$300()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 145
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$300()I

    move-result v2

    sub-int v9, v1, v2

    .local v9, "numToPop":I
    move v10, v9

    .line 146
    .end local v9    # "numToPop":I
    .local v10, "numToPop":I
    :goto_4
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "numToPop":I
    .restart local v9    # "numToPop":I
    if-lez v10, :cond_4

    .line 147
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I
    invoke-static {}, Lcom/android/settings/wifi/WifiApInfoService;->access$300()I

    move-result v2

    add-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 148
    .restart local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z
    invoke-static {v1, v14, v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$200(Lcom/android/settings/wifi/WifiApInfoService;ZLcom/android/settings/wifi/ConnectedDevice;)Z

    .line 149
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->removeConnectedDeviceFromScreen(Lcom/android/settings/wifi/ConnectedDevice;)V

    move v10, v9

    .line 150
    .end local v9    # "numToPop":I
    .restart local v10    # "numToPop":I
    goto :goto_4

    .line 153
    .end local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    .end local v10    # "numToPop":I
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNoOfClientDevice:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)I

    move-result v1

    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 154
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->mNoOfClientDevice:I
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$402(Lcom/android/settings/wifi/WifiApInfoService;I)I

    .line 155
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.motorola.wifi.wifiapinfoservice.action.WIFI_AP_STATE_HOTSPOT_CONNECTION_CHANGED"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v8, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;

    const-string v1, "wifi_state"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNoOfClientDevice:I
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$400(Lcom/android/settings/wifi/WifiApInfoService;)I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->isAttFeatureEnabled:Z
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$500(Lcom/android/settings/wifi/WifiApInfoService;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 162
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->checkStartIdleCheckTimer()V
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)V

    .line 166
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService$1;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method
