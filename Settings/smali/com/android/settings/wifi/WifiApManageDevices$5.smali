.class Lcom/android/settings/wifi/WifiApManageDevices$5;
.super Ljava/lang/Object;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApManageDevices;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApManageDevices;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$5;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 344
    packed-switch p2, :pswitch_data_0

    .line 355
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 356
    return-void

    .line 346
    :pswitch_0
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$000()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disassociateSta()V

    .line 347
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$000()Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 348
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$000()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$5;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    .line 351
    :pswitch_1
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$000()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$5;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
