.class Lcom/android/phone/BluetoothAtSms$MyHandler;
.super Landroid/os/Handler;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    .line 239
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 240
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 249
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 250
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    :goto_1
    # setter for: Lcom/android/phone/BluetoothAtSms;->mSuccess:Z
    invoke-static {v4, v1}, Lcom/android/phone/BluetoothAtSms;->access$102(Lcom/android/phone/BluetoothAtSms;Z)Z

    .line 251
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSuccess:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceCenterAddress success : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # setter for: Lcom/android/phone/BluetoothAtSms;->mServiceCenter:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothAtSms;->access$202(Lcom/android/phone/BluetoothAtSms;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    :goto_2
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 263
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    move v1, v2

    .line 250
    goto :goto_1

    .line 259
    :cond_1
    :try_start_1
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceCenterAddress failed for exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 267
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 268
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 269
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    :goto_3
    # setter for: Lcom/android/phone/BluetoothAtSms;->mSuccess:Z
    invoke-static {v4, v1}, Lcom/android/phone/BluetoothAtSms;->access$102(Lcom/android/phone/BluetoothAtSms;Z)Z

    .line 270
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mSuccess:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    const-string v1, "BtAtSms"

    const-string v2, "setServiceCenterAddress success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_4
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$MyHandler;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    move v1, v2

    .line 269
    goto :goto_3

    .line 274
    :cond_3
    :try_start_3
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setServiceCenterAddress failed for exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
