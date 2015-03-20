.class Lcom/android/bluetooth/ftp/BluetoothFtpService$1;
.super Landroid/os/Handler;
.source "BluetoothFtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ftp/BluetoothFtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x7

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 863
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 969
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 865
    :sswitch_1
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1000(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 866
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->startRfcommSocketListener()V
    invoke-static {v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1100(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    .line 867
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->startL2capSocketListener()V
    invoke-static {v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1200(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 869
    :cond_1
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeService()V
    invoke-static {v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1300(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 873
    :sswitch_2
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const-string v10, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v5, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    invoke-virtual {v10, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 878
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->isWaitingAuthorization:Z
    invoke-static {v10, v12}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$802(Lcom/android/bluetooth/ftp/BluetoothFtpService;Z)Z

    .line 879
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V
    invoke-static {v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 882
    .end local v5    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.android.bluetooth.ftp.userconfirmtimeout"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v4, "i":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    invoke-virtual {v10, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 884
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const v11, -0xf4246

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->removeFtpNotification(I)V
    invoke-static {v10, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1500(Lcom/android/bluetooth/ftp/BluetoothFtpService;I)V

    .line 885
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyAuthCancelled()V
    invoke-static {v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    .line 886
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V
    invoke-static {v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 889
    .end local v4    # "i":Landroid/content/Intent;
    :sswitch_4
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->stopObexServerSession()V
    invoke-static {v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    goto :goto_0

    .line 897
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 898
    .local v0, "arguments":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v11, 0x6

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyMediaScanner(Landroid/os/Bundle;I)V
    invoke-static {v10, v0, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 902
    .end local v0    # "arguments":Landroid/os/Bundle;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 903
    .local v1, "delarguments":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyMediaScanner(Landroid/os/Bundle;I)V
    invoke-static {v10, v1, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 907
    .end local v1    # "delarguments":Landroid/os/Bundle;
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 908
    .local v2, "delfilesarguments":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/16 v11, 0x9

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyMediaScanner(Landroid/os/Bundle;I)V
    invoke-static {v10, v2, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 912
    .end local v2    # "delfilesarguments":Landroid/os/Bundle;
    :sswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 913
    .local v6, "newfilearguments":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/16 v11, 0x8

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyMediaScanner(Landroid/os/Bundle;I)V
    invoke-static {v10, v6, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1700(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 918
    .end local v6    # "newfilearguments":Landroid/os/Bundle;
    :sswitch_9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/Uri;

    .line 923
    .local v8, "uri":Landroid/net/Uri;
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eq v10, v11, :cond_2

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/16 v11, 0x9

    if-ne v10, v11, :cond_0

    .line 924
    :cond_2
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->notifyContentResolver(Landroid/net/Uri;)V
    invoke-static {v10, v8}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1800(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 933
    .end local v8    # "uri":Landroid/net/Uri;
    :sswitch_a
    :try_start_0
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v11, 0x1

    const/4 v12, 0x0

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeL2capSocket(ZZ)V
    invoke-static {v10, v11, v12}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1900(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V

    .line 934
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v11, 0x0

    # setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v10, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$902(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    .line 935
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v11, 0x1

    const/4 v12, 0x0

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeRfcommSocket(ZZ)V
    invoke-static {v10, v11, v12}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$2000(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V

    .line 936
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v11, 0x0

    # setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v10, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$302(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 937
    :catch_0
    move-exception v3

    .line 938
    .local v3, "ex":Ljava/io/IOException;
    const-string v10, "BluetoothFtpService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CloseSocket error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 947
    .end local v3    # "ex":Ljava/io/IOException;
    :sswitch_b
    :try_start_1
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v11, 0x1

    const/4 v12, 0x0

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeRfcommSocket(ZZ)V
    invoke-static {v10, v11, v12}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$2000(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V

    .line 948
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v11, 0x0

    # setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v10, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$302(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    .line 949
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v11, 0x1

    const/4 v12, 0x0

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->closeL2capSocket(ZZ)V
    invoke-static {v10, v11, v12}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$1900(Lcom/android/bluetooth/ftp/BluetoothFtpService;ZZ)V

    .line 950
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v11, 0x0

    # setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mL2capServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v10, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$902(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 951
    :catch_1
    move-exception v3

    .line 952
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v10, "BluetoothFtpService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CloseSocket error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 956
    .end local v3    # "ex":Ljava/io/IOException;
    :sswitch_c
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 957
    .local v7, "pm":Landroid/os/PowerManager;
    const v10, 0x3000001a

    const-string v11, "FtpAuthChallenge"

    invoke-virtual {v7, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    .line 961
    .local v9, "wl":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v10, 0x1388

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 962
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const-string v11, "com.android.bluetooth.ftp.authchall"

    # invokes: Lcom/android/bluetooth/ftp/BluetoothFtpService;->createFtpNotification(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$2100(Lcom/android/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 963
    iget-object v10, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    # getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 863
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x138c -> :sswitch_4
        0x138d -> :sswitch_0
        0x138e -> :sswitch_0
        0x138f -> :sswitch_c
        0x1390 -> :sswitch_5
        0x1391 -> :sswitch_6
        0x1392 -> :sswitch_8
        0x1393 -> :sswitch_7
    .end sparse-switch
.end method
