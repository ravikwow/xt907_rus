.class Lcom/android/phone/BluetoothHandsfree$9;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0

    .prologue
    .line 2550
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private sendXMOT()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2552
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+XMOT=MB510,13,2.1,3"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 1

    .prologue
    .line 2618
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$9;->sendXMOT()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 1

    .prologue
    .line 2623
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$9;->sendXMOT()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2559
    array-length v2, p1

    if-ge v2, v4, :cond_0

    .line 2560
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Invalid arguments for XMOT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2613
    :goto_0
    return-object v2

    .line 2562
    :cond_0
    aget-object v2, p1, v6

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2564
    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/String;

    .line 2567
    .local v1, "mVendorId":Ljava/lang/String;
    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Integer;

    .line 2569
    .local v0, "mExHfpFeat":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2600
    const-string v2, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Extended HFP feature bits "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z
    invoke-static {v2, v6}, Lcom/android/phone/BluetoothHandsfree;->access$7402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2603
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z
    invoke-static {v2, v6}, Lcom/android/phone/BluetoothHandsfree;->access$7502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2604
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$6400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 2609
    :goto_1
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "args = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$9;->sendXMOT()Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_0

    .line 2571
    :pswitch_0
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Extended HFP feature bits 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :cond_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z
    invoke-static {v2, v6}, Lcom/android/phone/BluetoothHandsfree;->access$7402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2573
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z
    invoke-static {v2, v6}, Lcom/android/phone/BluetoothHandsfree;->access$7502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2574
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$6400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    goto :goto_1

    .line 2578
    :pswitch_1
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "HF supports battery reporting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :cond_3
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$7402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2580
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$6400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 2582
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$7600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2585
    :pswitch_2
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "HF supports battery charging status reporting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_4
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$7502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2587
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$6400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 2589
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$7600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2592
    :pswitch_3
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "HF supports both battery and charging status reporting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    :cond_5
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$7402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2594
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$7502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2595
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$6400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v5, v3}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 2597
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$9;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$7600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2612
    .end local v0    # "mExHfpFeat":Ljava/lang/Integer;
    .end local v1    # "mVendorId":Ljava/lang/String;
    :cond_6
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Invalid parameters return error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 2569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
