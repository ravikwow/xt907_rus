.class Lcom/android/phone/BluetoothHandsfree$35;
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
    .line 3338
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3341
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth HS/HF"

    const-string v1, "Receiving AT+BCC from HF, sending OK to HF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3343
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$4002(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3344
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    .line 3345
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$9602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 3346
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$9700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 3347
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x2

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$5902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3348
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Bluetooth HS/HF"

    const-string v1, "Sending +BCS:2 to HF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    :cond_1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+BCS:2"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .line 3357
    :goto_0
    return-object v0

    .line 3351
    :cond_2
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3352
    # getter for: Lcom/android/phone/BluetoothHandsfree;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3900()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Bluetooth HS/HF"

    const-string v1, "Sending +BCS:1 to HF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    :cond_3
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+BCS:1"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3356
    :cond_4
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "ERROR no codec negotiation enabled AG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method
