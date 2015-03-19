.class Lcom/android/settings/wifi/OffloadWifiApSelector$2;
.super Ljava/lang/Object;
.source "OffloadWifiApSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/OffloadWifiApSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/OffloadWifiApSelector;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector$2;->this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector$2;->this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;

    # getter for: Lcom/android/settings/wifi/OffloadWifiApSelector;->mDataOffloadWifiState:I
    invoke-static {v0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->access$000(Lcom/android/settings/wifi/OffloadWifiApSelector;)I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector$2;->this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;

    # getter for: Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->access$100(Lcom/android/settings/wifi/OffloadWifiApSelector;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector$2;->this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;

    # invokes: Lcom/android/settings/wifi/OffloadWifiApSelector;->startTimer()V
    invoke-static {v0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->access$200(Lcom/android/settings/wifi/OffloadWifiApSelector;)V

    .line 120
    return-void
.end method
