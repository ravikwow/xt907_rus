.class Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;
.super Ljava/lang/Object;
.source "WpsP2pDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;->this$1:Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;->this$1:Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$200(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;->this$1:Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$200(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;->this$1:Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$400(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;->this$1:Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$300(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelP2pWps(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;->this$1:Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$000(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0320

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;->this$1:Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    sget-object v2, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    # invokes: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->updateDialog(Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$100(Lcom/android/settings/wifi/p2p/WpsP2pDialog;Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V

    .line 176
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method
