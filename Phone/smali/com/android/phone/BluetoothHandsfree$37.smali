.class Lcom/android/phone/BluetoothHandsfree$37;
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
    .line 3407
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3411
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Receiving AT+BAC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$9702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3413
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4002(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 3415
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Bluetooth HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "args["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    :cond_1
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 3417
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3427
    const-string v2, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown codec ID from HF: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3419
    :pswitch_0
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Bluetooth HS/HF"

    const-string v2, "HF supports CODEC_CVSD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # |= operator for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v1, v5}, Lcom/android/phone/BluetoothHandsfree;->access$9776(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_1

    .line 3423
    :pswitch_1
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Bluetooth HS/HF"

    const-string v2, "HF supports CODEC_MSBC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # |= operator for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v1, v6}, Lcom/android/phone/BluetoothHandsfree;->access$9776(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_1

    .line 3431
    :cond_4
    const-string v1, "Bluetooth HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Codec ID Format from HF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3434
    :cond_5
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Bluetooth HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteAvailableCodecs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$9700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    :cond_6
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$9600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3436
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Bluetooth HS/HF"

    const-string v2, "expecting AT+BCS=<codec id>, sending +BCS:<codec id> again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    :cond_7
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3438
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4002(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3439
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$9700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 3440
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Bluetooth HS/HF"

    const-string v2, "+BCS:2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :cond_8
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v1, v6}, Lcom/android/phone/BluetoothHandsfree;->access$5902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3442
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const-string v2, "+BCS:2"

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .line 3449
    :goto_2
    return-object v1

    .line 3444
    :cond_9
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Bluetooth HS/HF"

    const-string v2, "+BCS:1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    :cond_a
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$37;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v1, v5}, Lcom/android/phone/BluetoothHandsfree;->access$5902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3446
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const-string v2, "+BCS:1"

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 3449
    :cond_b
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_2

    .line 3417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
