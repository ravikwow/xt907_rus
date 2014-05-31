.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$3$2;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 291
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsGoCreated:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 287
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 288
    return-void
.end method
