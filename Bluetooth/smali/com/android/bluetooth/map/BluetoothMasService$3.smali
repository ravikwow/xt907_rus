.class Lcom/android/bluetooth/map/BluetoothMasService$3;
.super Landroid/os/Handler;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasService;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 394
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothMasService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler(): got msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 396
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    if-nez v3, :cond_1

    .line 397
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMns;

    invoke-direct {v4, v0}, Lcom/android/bluetooth/map/BluetoothMns;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    .line 400
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 432
    :goto_0
    :sswitch_0
    return-void

    .line 402
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMasService;->access$100(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->startAll()V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMasService;->access$200(Lcom/android/bluetooth/map/BluetoothMasService;)V

    goto :goto_0

    .line 409
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    const v4, -0xf4245

    # invokes: Lcom/android/bluetooth/map/BluetoothMasService;->removeMapNotification(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/map/BluetoothMasService;->access$300(Lcom/android/bluetooth/map/BluetoothMasService;I)V

    .line 415
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v3, :cond_3

    const-string v3, "BluetoothMasService"

    const-string v4, "MAS access request notification flag off"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/map/BluetoothMasService;->access$402(Lcom/android/bluetooth/map/BluetoothMasService;Z)Z

    .line 417
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->stopObexServerSessionWaiting()V

    goto :goto_0

    .line 421
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 422
    .local v2, "masId":I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$3;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->stopObexServerSession(I)V

    goto :goto_0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x138c -> :sswitch_3
        0x138d -> :sswitch_0
        0x138e -> :sswitch_0
    .end sparse-switch
.end method
