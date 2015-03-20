.class Lcom/android/phone/BluetoothAtSms$11;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtSms;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cmdName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 1

    .prologue
    .line 2621
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$11;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    .line 2622
    const-string v0, "+CNMA"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$11;->cmdName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2626
    const-string v2, "BtAtSms"

    const-string v3, "BTAtCNMA: handleActionCommand() unAcknowledgedNotifications:"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3300()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2628
    const-string v3, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleActionCommand() ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3300()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2632
    :cond_0
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3300()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedBufferedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3400()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2634
    const-string v2, "BtAtSms"

    const-string v3, "BTAtCNMA: handleActionCommand:  CMS_NO_ACKNOWLEDGE_EXPECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2636
    .local v1, "result":Landroid/bluetooth/AtCommandResult;
    const-string v2, "+CMS ERROR: 340"

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2649
    .end local v1    # "result":Landroid/bluetooth/AtCommandResult;
    :goto_1
    return-object v1

    .line 2640
    :cond_1
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedBufferedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3400()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2641
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedBufferedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3400()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2642
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 2644
    :cond_2
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3300()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2647
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$11;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v6, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 2649
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 2715
    const-string v1, "BtAtSms"

    const-string v2, "No acknowledgement is expected for +CNMA"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2717
    .local v0, "result":Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CMS ERROR: 340"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2718
    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2654
    const-string v3, "BtAtSms"

    const-string v6, "BTAtCNMA: handleSetCommand() --------------------------"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    const-string v3, "BtAtSms"

    const-string v6, "BTAtCNMA: handleSetCommand() unAcknowledgedNotifications:"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3300()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2657
    const-string v6, "BtAtSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTAtCNMA: handleSetCommand() ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3300()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2660
    :cond_0
    const-string v3, "BtAtSms"

    const-string v6, "BTAtCNMA: handleSetCommand() ---------------------------"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 2663
    const-string v3, "BtAtSms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BTAtCNMA: handleSetCommand() parameter #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2667
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothAtSms$11;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothAtSms;->access$700(Lcom/android/phone/BluetoothAtSms;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2708
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2709
    .local v2, "result":Landroid/bluetooth/AtCommandResult;
    const-string v3, "+CMS ERROR: 303"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2710
    .end local v2    # "result":Landroid/bluetooth/AtCommandResult;
    :goto_2
    return-object v2

    .line 2669
    :pswitch_0
    array-length v3, p1

    if-nez v3, :cond_2

    .line 2670
    const-string v3, "BtAtSms"

    const-string v4, "BTAtCNMA: set operation without parameters is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2672
    .restart local v2    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v3, "+CMS ERROR: 303"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_2

    .line 2676
    .end local v2    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_2
    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2678
    .local v1, "n":I
    if-nez v1, :cond_3

    .line 2679
    invoke-virtual {p0}, Lcom/android/phone/BluetoothAtSms$11;->handleActionCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_2

    .line 2682
    :cond_3
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3300()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2683
    const-string v3, "BtAtSms"

    const-string v4, "BTAtCNMA: handleSetCommand:  CMS_NO_ACKNOWLEDGE_EXPECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2685
    .restart local v2    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v3, "+CMS ERROR: 340"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_2

    .line 2689
    .end local v2    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_4
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedBufferedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3400()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2690
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedBufferedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3400()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2691
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_2

    .line 2693
    :cond_5
    # getter for: Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->access$3300()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 2696
    iget-object v3, p0, Lcom/android/phone/BluetoothAtSms$11;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    move v3, v4

    :goto_3
    const/4 v5, 0x0

    invoke-interface {v6, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 2698
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_2

    :cond_6
    move v3, v5

    .line 2696
    goto :goto_3

    .line 2701
    .end local v1    # "n":I
    :pswitch_1
    const-string v3, "BtAtSms"

    const-string v4, "BTAtCNMA: set operation is not supported in TEXT mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2703
    .restart local v2    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v3, "+CMS ERROR: 303"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2722
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$11;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothAtSms;->access$700(Lcom/android/phone/BluetoothAtSms;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2734
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    :goto_0
    return-object v0

    .line 2724
    :pswitch_0
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: handleTestCommand() in PDU mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CNMA: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2730
    :pswitch_1
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: handleTestCommand() in TEXT mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
