.class Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;
.super Ljava/lang/Object;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothMasObexConnectionManager"
.end annotation


# instance fields
.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMasService;)V
    .locals 5

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mSupportedMessageTypes:I

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mRfcommPort:I

    invoke-direct {v2, p1, v3, v0, v4}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;-><init>(Lcom/android/bluetooth/map/BluetoothMasService;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 3

    .prologue
    .line 592
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 594
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    const/4 v2, 0x1

    # setter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mInterrupted:Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$802(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Z)Z

    .line 595
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->closeConnection()V

    goto :goto_0

    .line 597
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 7

    .prologue
    .line 523
    const-string v5, "BluetoothMasService"

    const-string v6, "Request to disconnect MAP"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v3, 0x1

    .line 525
    .local v3, "disconnected":Z
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 526
    .local v1, "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 527
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 530
    # invokes: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->stopObexServerSession()V
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)V

    goto :goto_0

    .line 534
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 606
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 607
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mInterrupted:Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$802(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Z)Z

    goto :goto_0

    .line 609
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_0
    return-void
.end method

.method public initiateObexServerSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 538
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 539
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$600(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    if-eqz v3, :cond_0

    .line 540
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    .line 541
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->startObexServerSession(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMns;)V
    invoke-static {v0, p1, v3}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$700(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMns;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 545
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "BluetoothMasService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught the error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public isAllowedConnection(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 11
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 612
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "remoteAddress":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 614
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v8, :cond_0

    const-string v8, "BluetoothMasService"

    const-string v9, "Connection request from unknown device"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    :goto_0
    return v7

    .line 617
    :cond_1
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 618
    .local v5, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_6

    .line 619
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 620
    .local v1, "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$600(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    .line 621
    .local v6, "socket":Landroid/bluetooth/BluetoothSocket;
    if-eqz v6, :cond_5

    .line 622
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 623
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_5

    .line 624
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 626
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 627
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v7, :cond_2

    .line 628
    const-string v7, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection request from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v7, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "when MAS id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is connected to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v7, v8

    .line 631
    goto :goto_0

    .line 633
    :cond_3
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v8, :cond_0

    .line 634
    const-string v8, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection request from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v8, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "when MAS id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is connected to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 642
    :cond_4
    const-string v9, "BluetoothMasService"

    const-string v10, "Connected device has no address!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 648
    .end local v1    # "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    .end local v6    # "socket":Landroid/bluetooth/BluetoothSocket;
    :cond_6
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v7, :cond_7

    .line 649
    const-string v7, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection request from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v7, "BluetoothMasService"

    const-string v9, "when no MAS instance is connected."

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v7, v8

    .line 652
    goto/16 :goto_0
.end method

.method public setWaitingForConfirmation(I)V
    .locals 4
    .param p1, "masId"    # I

    .prologue
    .line 550
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 552
    .local v0, "connect":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    .line 557
    .end local v0    # "connect":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :goto_0
    return-void

    .line 554
    :cond_0
    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to set waiting for user confirmation for MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v1, "BluetoothMasService"

    const-string v2, "out of index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAll()V
    .locals 3

    .prologue
    .line 600
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 601
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    # invokes: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->startRfcommSocketListener(Lcom/android/bluetooth/map/BluetoothMns;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$900(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Lcom/android/bluetooth/map/BluetoothMns;)V

    goto :goto_0

    .line 603
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_0
    return-void
.end method

.method public stopObexServerSession(I)V
    .locals 4
    .param p1, "masId"    # I

    .prologue
    .line 560
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 562
    .local v0, "connect":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$600(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 563
    # invokes: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->stopObexServerSession()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)V

    .line 572
    .end local v0    # "connect":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :goto_0
    return-void

    .line 565
    .restart local v0    # "connect":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_0
    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to stop OBEX Server session for MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v1, "BluetoothMasService"

    const-string v2, "when there is no connected socket"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    .end local v0    # "connect":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_1
    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to stop OBEX Server session for MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v1, "BluetoothMasService"

    const-string v2, "out of index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopObexServerSessionWaiting()V
    .locals 3

    .prologue
    .line 575
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 576
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$600(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    if-eqz v2, :cond_0

    .line 577
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    .line 578
    # invokes: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->stopObexServerSession()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)V

    goto :goto_0

    .line 581
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_1
    return-void
.end method
