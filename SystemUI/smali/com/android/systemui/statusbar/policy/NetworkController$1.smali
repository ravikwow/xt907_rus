.class Lcom/android/systemui/statusbar/policy/NetworkController$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 899
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " incomingNumber=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 910
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 913
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 931
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 934
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 935
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 936
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 918
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 924
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 926
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 846
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v1, "StatusBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged VoiceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "STATE_IN_SERVICE"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v1, "StatusBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged DataState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "STATE_IN_SERVICE"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/motorola/android/systemui/statusbar/VzwEri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/motorola/android/systemui/statusbar/VzwEri;->updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 877
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 879
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Combining data service state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for signal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 891
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 893
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 894
    return-void

    .line 847
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v5, :cond_3

    const-string v0, "STATE_POWER_OFF"

    goto/16 :goto_0

    :cond_3
    const-string v0, "unknown"

    goto/16 :goto_0

    .line 853
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v0

    if-ne v0, v3, :cond_5

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v0

    if-ne v0, v4, :cond_6

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v0

    if-ne v0, v5, :cond_7

    const-string v0, "STATE_POWER_OFF"

    goto/16 :goto_1

    :cond_7
    const-string v0, "unknown"

    goto/16 :goto_1
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 820
    const-string v2, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 826
    .local v0, "newDataEnabledState":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    if-eq v0, v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 828
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 829
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 833
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 835
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 838
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 840
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 841
    return-void

    .line 820
    .end local v0    # "newDataEnabledState":Z
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " level="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
