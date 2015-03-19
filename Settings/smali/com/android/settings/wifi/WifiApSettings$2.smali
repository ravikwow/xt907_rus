.class Lcom/android/settings/wifi/WifiApSettings$2;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApSettings;->handleNewConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 347
    packed-switch p2, :pswitch_data_0

    .line 359
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 360
    return-void

    .line 349
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 350
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 351
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 352
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$400(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const v3, 0x7f0b037e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    .end local v0    # "index":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
