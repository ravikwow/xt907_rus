.class Lcom/android/bluetooth/map/BluetoothMasActivity$3;
.super Landroid/os/Handler;
.source "BluetoothMasActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasActivity;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasActivity$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 308
    :pswitch_0
    # getter for: Lcom/android/bluetooth/map/BluetoothMasActivity;->V:Z
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasActivity;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasActivity"

    const-string v1, "Received DISMISS_TIMEOUT_DIALOG msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
