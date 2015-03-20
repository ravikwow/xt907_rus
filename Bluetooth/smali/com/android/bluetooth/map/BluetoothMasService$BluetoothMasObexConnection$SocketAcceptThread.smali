.class Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private mMasId:I

.field private mnsObj:Lcom/android/bluetooth/map/BluetoothMns;

.field private stopped:Z

.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Lcom/android/bluetooth/map/BluetoothMns;I)V
    .locals 1
    .param p2, "mnsClient"    # Lcom/android/bluetooth/map/BluetoothMns;
    .param p3, "masId"    # I

    .prologue
    .line 857
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->stopped:Z

    .line 858
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->mnsObj:Lcom/android/bluetooth/map/BluetoothMns;

    .line 859
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->mMasId:I

    .line 860
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 864
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->stopped:Z

    if-nez v5, :cond_1

    .line 866
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    # getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$1300(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 868
    .local v0, "connSocket":Landroid/bluetooth/BluetoothSocket;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 869
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_2

    .line 870
    const-string v5, "BluetoothMasService"

    const-string v6, "getRemoteDevice() = null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .end local v0    # "connSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :goto_1
    return-void

    .line 873
    .restart local v0    # "connSocket":Landroid/bluetooth/BluetoothSocket;
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 875
    .local v3, "remoteDeviceName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 876
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    const v6, 0x7f05009b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 879
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v5, v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->isAllowedConnection(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 880
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 913
    .end local v0    # "connSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "remoteDeviceName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 914
    .local v2, "ex":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->stopped:Z

    if-nez v5, :cond_1

    .line 917
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v5, :cond_0

    .line 918
    const-string v5, "BluetoothMasService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Accept exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 883
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "connSocket":Landroid/bluetooth/BluetoothSocket;
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "remoteDeviceName":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    # setter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v5, v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$602(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 884
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v4

    .line 885
    .local v4, "trust":Z
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v5, :cond_5

    const-string v5, "BluetoothMasService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetTrustState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMasService;->access$400(Lcom/android/bluetooth/map/BluetoothMasService;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 887
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v5, :cond_6

    const-string v5, "BluetoothMasService"

    const-string v6, "Request notification is still on going."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_6
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->mMasId:I

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->setWaitingForConfirmation(I)V

    goto/16 :goto_1

    .line 890
    :cond_7
    if-eqz v4, :cond_9

    .line 891
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v5, :cond_8

    .line 892
    const-string v5, "BluetoothMasService"

    const-string v6, "trust is true::"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v5, "BluetoothMasService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "incomming connection accepted from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " automatically as trusted device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 897
    :cond_8
    :try_start_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->mnsObj:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->startObexServerSession(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMns;)V
    invoke-static {v5, v1, v6}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$700(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMns;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 912
    :goto_2
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->stopped:Z

    goto/16 :goto_0

    .line 898
    :catch_1
    move-exception v2

    .line 899
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v5, "BluetoothMasService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "catch exception starting obex server session"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 903
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_9
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v5, :cond_a

    const-string v5, "BluetoothMasService"

    const-string v6, "trust is false."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_a
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->mMasId:I

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->setWaitingForConfirmation(I)V

    .line 905
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMasService;->createMapNotification(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v5, v1}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1400(Lcom/android/bluetooth/map/BluetoothMasService;Landroid/bluetooth/BluetoothDevice;)V

    .line 906
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v5, :cond_b

    const-string v5, "BluetoothMasService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "incomming connection accepted from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_b
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1000(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1000(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method shutdown()V
    .locals 4

    .prologue
    .line 924
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcceptThread shutdown for MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->mMasId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->stopped:Z

    .line 926
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 927
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    # getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$1300(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    # getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$1300(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 930
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$1302(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_1
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothMasService"

    const-string v2, "Failed to close socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
