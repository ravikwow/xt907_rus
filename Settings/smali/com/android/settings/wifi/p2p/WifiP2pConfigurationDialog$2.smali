.class Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;
.super Ljava/lang/Object;
.source "WifiP2pConfigurationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x1

    .line 118
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    .local v0, "autoConnectEnabled":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "deviceConfig":Ljava/lang/String;
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_p2p_configuration"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2$1;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 138
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pConfigureDevice(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 144
    .end local v0    # "autoConnectEnabled":I
    .end local v1    # "deviceConfig":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 141
    :cond_2
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$300()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b03c3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
