.class Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;
.super Landroid/os/Handler;
.source "BluetoothMnsEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;->this$1:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    # getter for: Lcom/android/bluetooth/map/BluetoothMnsEmail;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsEmail;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EmailContentObserver.Hanlder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mas Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;->this$1:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->mMasId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 176
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1$1;-><init>(Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;)V

    const-string v2, "Email Content Observer Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
