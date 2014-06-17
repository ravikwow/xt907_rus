.class final Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p2, "x1"    # Lcom/android/mms/transaction/TransactionService$1;

    .prologue
    .line 1591
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1616
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1618
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->showData()V
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)V

    .line 1620
    packed-switch p1, :pswitch_data_0

    .line 1652
    :goto_0
    return-void

    .line 1622
    :pswitch_0
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    const-string v0, "TransactionService"

    const-string v1, "onCallStateChanged - ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    # setter for: Lcom/android/mms/transaction/TransactionService;->mIsCalling:Z
    invoke-static {v0, v3}, Lcom/android/mms/transaction/TransactionService;->access$302(Lcom/android/mms/transaction/TransactionService;Z)Z

    goto :goto_0

    .line 1630
    :pswitch_1
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1631
    const-string v0, "TransactionService"

    const-string v1, "onCallStateChanged - offhook"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    const-string v1, "call"

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/transaction/TransactionService;->startTimeoutForVoiceCall(Ljava/lang/String;Z)V

    .line 1635
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    # setter for: Lcom/android/mms/transaction/TransactionService;->mIsCalling:Z
    invoke-static {v0, v3}, Lcom/android/mms/transaction/TransactionService;->access$302(Lcom/android/mms/transaction/TransactionService;Z)Z

    goto :goto_0

    .line 1639
    :pswitch_2
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1640
    const-string v0, "TransactionService"

    const-string v1, "onCallStateChanged - idle"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mIsCalling:Z
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1645
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionService;->stopTimeoutForVoiceCall()V

    .line 1646
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    .line 1649
    :cond_3
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/transaction/TransactionService;->mIsCalling:Z
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$302(Lcom/android/mms/transaction/TransactionService;Z)Z

    goto :goto_0

    .line 1620
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1595
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 1596
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->showData()V
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)V

    .line 1602
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1606
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1608
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_0
    return-void
.end method
