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
    .line 1817
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
    .line 2030
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 2031
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneCallState:I

    .line 2063
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 2066
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 2094
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 2095
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 2103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 2104
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 2070
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 2071
    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string v0, "DATA_UNKNOWN"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " networkType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 2082
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 2089
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 2090
    return-void

    .line 2071
    :cond_1
    if-nez p1, :cond_2

    const-string v0, "DATA_DISCONNECTED"

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string v0, "DATA_CONNECTING"

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const-string v0, "DATA_CONNECTED"

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const-string v0, "DATA_SUSPENDED"

    goto :goto_0

    :cond_5
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1887
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v1, :cond_0

    .line 1888
    const-string v2, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " VoiceState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "STATE_IN_SERVICE"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " DataState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "STATE_IN_SERVICE"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mSoundAlertForVerizonWireless:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1923
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/motorola/android/systemui/statusbar/VzwEri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/motorola/android/systemui/statusbar/VzwEri;->updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V

    .line 1926
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1927
    const-string v1, "SBar.NetworkController"

    const-string v2, "Playing sound alert on Loss/regain service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1947
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 1956
    const/4 v0, 0x0

    .line 1957
    .local v0, "serviceStateDataNetworkType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_b

    .line 1963
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 1969
    :goto_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1970
    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged: serviceStateDataNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-eq v0, v1, :cond_2

    .line 1981
    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged: WARNING -----> mDataNetType != serviceStateDataNetworkType; mDataNetType changed to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 2002
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowSpn:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheSpn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowPlmn:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCachePlmn:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 2023
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 2024
    return-void

    .line 1888
    .end local v0    # "serviceStateDataNetworkType":I
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v4, :cond_4

    const-string v1, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v5, :cond_5

    const-string v1, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v6, :cond_6

    const-string v1, "STATE_POWER_OFF"

    goto/16 :goto_0

    :cond_6
    const-string v1, "unknown"

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-ne v1, v4, :cond_8

    const-string v1, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-ne v1, v5, :cond_9

    const-string v1, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-ne v1, v6, :cond_a

    const-string v1, "STATE_POWER_OFF"

    goto/16 :goto_1

    :cond_a
    const-string v1, "unknown"

    goto/16 :goto_1

    .line 1966
    .restart local v0    # "serviceStateDataNetworkType":I
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 8
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v4, -0x2

    .line 1823
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1825
    .local v0, "currTime":J
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v5, :cond_1

    .line 1829
    if-nez p1, :cond_3

    move v2, v4

    .line 1836
    .local v2, "level":I
    :goto_0
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevel:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v5

    if-ne v5, v2, :cond_0

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevelIntervalTimestamp:J
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 1845
    :cond_0
    const-string v5, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrengthsChanged "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_4

    const-string v4, "signalStrength=(null), level unavailable"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevel:I
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$102(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 1853
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v5, v0

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevelIntervalTimestamp:J
    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$202(Lcom/android/systemui/statusbar/policy/NetworkController;J)J

    .line 1860
    .end local v2    # "level":I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    .line 1861
    .local v3, "newDataEnabledState":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataEnabled:Z

    if-eq v3, v4, :cond_2

    .line 1862
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataEnabled:Z

    .line 1863
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 1864
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 1868
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1882
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1883
    return-void

    .line 1829
    .end local v3    # "newDataEnabledState":Z
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    goto :goto_0

    .line 1845
    .restart local v2    # "level":I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " level="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
