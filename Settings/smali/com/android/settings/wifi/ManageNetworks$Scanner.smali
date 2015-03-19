.class Lcom/android/settings/wifi/ManageNetworks$Scanner;
.super Landroid/os/Handler;
.source "ManageNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ManageNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings/wifi/ManageNetworks;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/ManageNetworks;)V
    .locals 1

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 899
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/ManageNetworks;Lcom/android/settings/wifi/ManageNetworks$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/ManageNetworks;
    .param p2, "x1"    # Lcom/android/settings/wifi/ManageNetworks$1;

    .prologue
    .line 898
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 914
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 915
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 920
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    # getter for: Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/ManageNetworks;->access$600(Lcom/android/settings/wifi/ManageNetworks;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    iput v2, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    .line 928
    :cond_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 929
    :goto_0
    return-void

    .line 922
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 923
    iput v2, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0302

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 908
    iput v0, p0, Lcom/android/settings/wifi/ManageNetworks$Scanner;->mRetry:I

    .line 909
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 910
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 902
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 905
    :cond_0
    return-void
.end method
