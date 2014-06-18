.class Lcom/android/systemui/statusbar/phone/QuickSettings$35;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 1523
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1526
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1528
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1530
    .local v1, "state":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v5

    const/16 v6, 0xc

    if-ne v1, v6, :cond_1

    :goto_0
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->enabled:Z

    .line 1531
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 1579
    .end local v1    # "state":I
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "state":I
    :cond_1
    move v3, v4

    .line 1530
    goto :goto_0

    .line 1532
    .end local v1    # "state":I
    :cond_2
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1533
    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1535
    .local v2, "status":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    :goto_2
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 1536
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1

    :cond_3
    move v3, v4

    .line 1535
    goto :goto_2

    .line 1537
    .end local v2    # "status":I
    :cond_4
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1538
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->reloadUserInfo()V

    goto :goto_1

    .line 1541
    :cond_5
    const-string v5, "com.motorola.wirelessdisplay.service.WIRELESS_DISPLAY_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1542
    const-string v4, "wireless_display_state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1544
    .restart local v2    # "status":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWirelessDisplayStatus(I)V
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1800(Lcom/android/systemui/statusbar/phone/QuickSettings;I)V

    goto :goto_1

    .line 1545
    .end local v2    # "status":I
    :cond_6
    const-string v5, "com.motorola.wirelessdisplay.service.WIRELESS_DISPLAY_MIRRORING_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1550
    const-string v3, "wireless_display_mirroring_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1553
    .restart local v2    # "status":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    const-string v3, "wireless_display_mirroring_device"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mMirroringDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1902(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1555
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mMirroringDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWirelessDisplayMirrorStatus(ILandroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$2000(Lcom/android/systemui/statusbar/phone/QuickSettings;ILandroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1

    .line 1558
    .end local v2    # "status":I
    :cond_7
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1559
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    if-eqz v3, :cond_0

    .line 1560
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$2100(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1

    .line 1563
    :cond_8
    const-string v5, "com.motorola.wirelessdisplay.service.WIRELESS_DISPLAY_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1564
    const-string v4, "wireless_display_state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1566
    .restart local v2    # "status":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWirelessDisplayStatus(I)V
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1800(Lcom/android/systemui/statusbar/phone/QuickSettings;I)V

    goto/16 :goto_1

    .line 1567
    .end local v2    # "status":I
    :cond_9
    const-string v3, "com.motorola.wirelessdisplay.service.WIRELESS_DISPLAY_MIRRORING_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1569
    const-string v3, "wireless_display_mirroring_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1572
    .restart local v2    # "status":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    const-string v3, "wireless_display_mirroring_device"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mMirroringDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1902(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1574
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mMirroringDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWirelessDisplayMirrorStatus(ILandroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$2000(Lcom/android/systemui/statusbar/phone/QuickSettings;ILandroid/net/wifi/p2p/WifiP2pDevice;)V

    goto/16 :goto_1

    .line 1576
    .end local v2    # "status":I
    :cond_a
    const-string v3, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1577
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForSslCaCerts()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$2200(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto/16 :goto_1
.end method
