.class Lcom/android/phone/BluetoothAtSms$12;
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
.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 0

    .prologue
    .line 2738
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$12;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2751
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$12;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$700(Lcom/android/phone/BluetoothAtSms;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2763
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    :goto_0
    return-object v0

    .line 2753
    :pswitch_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2754
    .local v0, "result":Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CMGF: 0"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2758
    .end local v0    # "result":Landroid/bluetooth/AtCommandResult;
    :pswitch_1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2759
    .restart local v0    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CMGF: 1"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 2741
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2742
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 2743
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$12;->this$0:Lcom/android/phone/BluetoothAtSms;

    # setter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothAtSms;->access$702(Lcom/android/phone/BluetoothAtSms;I)I

    .line 2747
    :goto_0
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v1

    .line 2745
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$12;->this$0:Lcom/android/phone/BluetoothAtSms;

    const/4 v2, 0x1

    # setter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothAtSms;->access$702(Lcom/android/phone/BluetoothAtSms;I)I

    goto :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2767
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2768
    .local v0, "result":Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CMGF: (0,1)"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2769
    return-object v0
.end method
