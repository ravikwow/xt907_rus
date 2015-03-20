.class Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoSocketDisconnectThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/BluetoothHandsfree;
    .param p2, "x1"    # Lcom/android/phone/BluetoothHandsfree$1;

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method

.method private closeConnectedSco()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 599
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 605
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 606
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$602(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 607
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v3, 0xa

    # invokes: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v0}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 609
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :cond_1
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;

    monitor-enter v1

    .line 612
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/BluetoothHandsfree;->mDisconnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$502(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;)Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;

    .line 613
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 614
    return-void

    .line 609
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 613
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 586
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Before Sco disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    # getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :cond_0
    :goto_0
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "After Sco disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketDisconnectThread;->closeConnectedSco()V

    .line 596
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Error when closing Sco socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
