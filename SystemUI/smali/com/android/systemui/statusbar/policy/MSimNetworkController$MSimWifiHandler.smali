.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;
.super Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MSimWifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 0

    .prologue
    .line 9824
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9828
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 9848
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->handleMessage(Landroid/os/Message;)V

    .line 9851
    :cond_0
    :goto_0
    return-void

    .line 9830
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 9831
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 9834
    :cond_1
    const-string v0, "SBar.MSimNetwCntrl"

    const-string v1, "MSimWifiHandler.handleMessage: Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9839
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    if-eq v0, v1, :cond_0

    .line 9840
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    .line 9841
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    goto :goto_0

    .line 9828
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method
