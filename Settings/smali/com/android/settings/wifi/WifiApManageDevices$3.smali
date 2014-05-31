.class Lcom/android/settings/wifi/WifiApManageDevices$3;
.super Ljava/lang/Object;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApManageDevices;->onCreate(Landroid/os/Bundle;)V
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
    .line 209
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$3;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 212
    const-string v0, "WifiApManageDevices"

    const-string v1, "Inform HAPD about client request acceptance ,mWifiManager.startApWpsPbc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$000()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startApWpsPbc()V

    .line 214
    return-void
.end method
