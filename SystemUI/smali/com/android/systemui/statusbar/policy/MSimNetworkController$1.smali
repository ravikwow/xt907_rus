.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;
.super Landroid/telephony/PhoneStateListener;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mSubscription:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

.field final synthetic val$subscription:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;II)V
    .locals 1
    .param p2, "x0"    # I

    .prologue
    .line 3334
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->val$subscription:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 3336
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->val$subscription:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 3591
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3592
    const-string v0, "SBar.MSimNetwCntrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->val$subscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->INFO:Z

    if-eqz v0, :cond_1

    .line 3599
    const-string v0, "SBar.MSimNetwCntrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->CHATTY:Z

    if-eqz v0, :cond_2

    .line 3606
    const-string v0, "SBar.MSimNetwCntrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: state="

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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneCallState:[I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput p1, v0, v1

    .line 3631
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 3636
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 3703
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 3704
    const-string v0, "SBar.MSimNetwCntrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->val$subscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1600(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput p1, v0, v1

    .line 3719
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 3720
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 3640
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3641
    const-string v0, "SBar.MSimNetwCntrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->val$subscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->INFO:Z

    if-eqz v0, :cond_1

    .line 3653
    const-string v1, "SBar.MSimNetwCntrl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]: state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

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

    .line 3686
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 3690
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataState:[I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1500(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput p1, v0, v1

    .line 3691
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataNetType:[I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$900(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput p2, v0, v1

    .line 3698
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 3699
    return-void

    .line 3653
    :cond_3
    if-nez p1, :cond_4

    const-string v0, "DATA_DISCONNECTED"

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const-string v0, "DATA_CONNECTING"

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const-string v0, "DATA_CONNECTED"

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    const-string v0, "DATA_SUSPENDED"

    goto :goto_0

    :cond_7
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3415
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3416
    const-string v0, "SBar.MSimNetwCntrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->val$subscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->INFO:Z

    if-eqz v0, :cond_1

    .line 3425
    const-string v1, "SBar.MSimNetwCntrl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]: state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " VoiceState="

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

    if-nez v0, :cond_3

    const-string v0, "STATE_IN_SERVICE"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " DataState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "STATE_IN_SERVICE"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Landroid/telephony/ServiceState;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput-object p1, v0, v1

    .line 3509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$800(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Landroid/telephony/ServiceState;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    aput v2, v0, v1

    .line 3520
    const/4 v6, 0x0

    .line 3521
    .local v6, "serviceStateDataNetworkType":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Landroid/telephony/ServiceState;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_b

    .line 3522
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Landroid/telephony/ServiceState;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v6

    .line 3528
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 3529
    const-string v0, "SBar.MSimNetwCntrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: serviceStateDataNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataNetType:[I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$900(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataNetType:[I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$900(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget v0, v0, v1

    if-eq v6, v0, :cond_2

    .line 3546
    const-string v0, "SBar.MSimNetwCntrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: WARNING -----> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMSimDataNetType[mSubscription] != serviceStateDataNetworkType; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMSimDataNetType changed to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataNetType:[I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$900(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput v6, v0, v1

    .line 3573
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimCacheShowSpn:[Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Z

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-boolean v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimCacheSpn:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimCacheShowPlmn:[Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Z

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-boolean v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimCachePlmn:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 3586
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 3587
    return-void

    .line 3425
    .end local v6    # "serviceStateDataNetworkType":I
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_4

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v4, :cond_5

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v5, :cond_6

    const-string v0, "STATE_POWER_OFF"

    goto/16 :goto_0

    :cond_6
    const-string v0, "unknown"

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v3, :cond_8

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v4, :cond_9

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v5, :cond_a

    const-string v0, "STATE_POWER_OFF"

    goto/16 :goto_1

    :cond_a
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 3525
    .restart local v6    # "serviceStateDataNetworkType":I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 8
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v4, -0x2

    .line 3343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3345
    .local v0, "currTime":J
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->INFO:Z

    if-eqz v5, :cond_1

    .line 3346
    if-nez p1, :cond_4

    move v2, v4

    .line 3353
    .local v2, "level":I
    :goto_0
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->DEBUG:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLoggerSignalLevel:[I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget v5, v5, v6

    if-ne v5, v2, :cond_0

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLoggerSignalLevelIntervalTimestamp:[J
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[J

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-wide v4, v4, v5

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 3362
    :cond_0
    const-string v5, "SBar.MSimNetwCntrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrengthsChanged["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_5

    const-string v4, "signalStrength=(null), level unavailable"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLoggerSignalLevel:[I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[I

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput v2, v4, v5

    .line 3372
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLoggerSignalLevelIntervalTimestamp:[J
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[J

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    const-wide/32 v6, 0x1d4c0

    add-long/2addr v6, v0

    aput-wide v6, v4, v5

    .line 3379
    .end local v2    # "level":I
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 3380
    const-string v5, "SBar.MSimNetwCntrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrengthsChanged["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->val$subscription:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]: received on subscription :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "signalStrength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_6

    const-string v4, ""

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimConnectivityManager:[Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Landroid/net/ConnectivityManager;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    .line 3398
    .local v3, "newDataEnabledState":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileDataEnabled:[Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Z

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-boolean v4, v4, v5

    if-eq v3, v4, :cond_3

    .line 3399
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileDataEnabled:[Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Z

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput-boolean v3, v4, v5

    .line 3405
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Landroid/telephony/SignalStrength;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput-object p1, v4, v5

    .line 3410
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 3411
    return-void

    .line 3346
    .end local v3    # "newDataEnabledState":Z
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    goto/16 :goto_0

    .line 3362
    .restart local v2    # "level":I
    :cond_5
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

    goto/16 :goto_1

    .line 3380
    .end local v2    # "level":I
    :cond_6
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

    goto :goto_2
.end method
