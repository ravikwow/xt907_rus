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
    .line 941
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
    .line 1108
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 1109
    const-string v0, "SBar.NetworkController"

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

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    .line 1124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1127
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 1148
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 1149
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

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1158
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 1131
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 1132
    const-string v0, "SBar.NetworkController"

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

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1144
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1003
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v3, :cond_0

    .line 1004
    const-string v4, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " VoiceState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "STATE_IN_SERVICE"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " DataState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "STATE_IN_SERVICE"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/motorola/android/systemui/statusbar/VzwEri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/motorola/android/systemui/statusbar/VzwEri;->updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V

    .line 1025
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1036
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 1044
    const/4 v2, 0x0

    .line 1045
    .local v2, "serviceStateNetworkType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_b

    .line 1046
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v2

    .line 1051
    :goto_2
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1052
    const-string v3, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged: serviceStateNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-eq v2, v3, :cond_1

    .line 1061
    const-string v3, "SBar.NetworkController"

    const-string v4, "onServiceStateChanged: ERROR -----> mDataNetType != serviceStateNetworkType"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->isDisabledMobileDataTypeIconShown()Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v1

    .line 1067
    .local v1, "isDataDisabledIconShowing":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->isConnectingOrAttachedMobileDataTypeIconShown()Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v0

    .line 1069
    .local v0, "isAttachedIconShowing":Z
    if-eqz v0, :cond_c

    .line 1070
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput v2, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 1071
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v3, :cond_2

    .line 1072
    const-string v3, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged: isAttachedIconShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", override mDataNetType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1104
    return-void

    .line 1004
    .end local v0    # "isAttachedIconShowing":Z
    .end local v1    # "isDataDisabledIconShowing":Z
    .end local v2    # "serviceStateNetworkType":I
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-ne v3, v6, :cond_4

    const-string v3, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-ne v3, v7, :cond_5

    const-string v3, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-ne v3, v8, :cond_6

    const-string v3, "STATE_POWER_OFF"

    goto/16 :goto_0

    :cond_6
    const-string v3, "unknown"

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v3

    if-ne v3, v6, :cond_8

    const-string v3, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v3

    if-ne v3, v7, :cond_9

    const-string v3, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v3

    if-ne v3, v8, :cond_a

    const-string v3, "STATE_POWER_OFF"

    goto/16 :goto_1

    :cond_a
    const-string v3, "unknown"

    goto/16 :goto_1

    .line 1048
    .restart local v2    # "serviceStateNetworkType":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1078
    .restart local v0    # "isAttachedIconShowing":Z
    .restart local v1    # "isDataDisabledIconShowing":Z
    :cond_c
    if-eqz v1, :cond_2

    .line 1079
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput v2, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 1080
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v3, :cond_2

    .line 1081
    const-string v3, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged: isDataDisabledIconShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", override mDataNetType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 8
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 946
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 948
    .local v0, "currTime":J
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v4, :cond_1

    .line 951
    if-nez p1, :cond_3

    const/4 v2, -0x2

    .line 958
    .local v2, "level":I
    :goto_0
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevel:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevelIntervalTimestamp:J
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 965
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

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevel:I
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$102(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 973
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v5, v0

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevelIntervalTimestamp:J
    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$202(Lcom/android/systemui/statusbar/policy/NetworkController;J)J

    .line 979
    .end local v2    # "level":I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    .line 980
    .local v3, "newDataEnabledState":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    if-eq v3, v4, :cond_2

    .line 981
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 982
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 983
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 986
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, v4, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 998
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 999
    return-void

    .line 951
    .end local v3    # "newDataEnabledState":Z
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    goto :goto_0

    .line 965
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
