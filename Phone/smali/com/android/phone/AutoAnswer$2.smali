.class Lcom/android/phone/AutoAnswer$2;
.super Ljava/lang/Object;
.source "AutoAnswer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AutoAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoAnswer;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoAnswer;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/phone/AutoAnswer$2;->this$0:Lcom/android/phone/AutoAnswer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/phone/AutoAnswer$2;->this$0:Lcom/android/phone/AutoAnswer;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/phone/AutoAnswer;->access$502(Lcom/android/phone/AutoAnswer;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 232
    # getter for: Lcom/android/phone/AutoAnswer;->VDBG:Z
    invoke-static {}, Lcom/android/phone/AutoAnswer;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AutoAnswer$2;->this$0:Lcom/android/phone/AutoAnswer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Got BluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/AutoAnswer$2;->this$0:Lcom/android/phone/AutoAnswer;

    # getter for: Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/AutoAnswer;->access$500(Lcom/android/phone/AutoAnswer;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/AutoAnswer;->access$300(Lcom/android/phone/AutoAnswer;Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/phone/AutoAnswer$2;->this$0:Lcom/android/phone/AutoAnswer;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/AutoAnswer;->access$502(Lcom/android/phone/AutoAnswer;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 237
    return-void
.end method
