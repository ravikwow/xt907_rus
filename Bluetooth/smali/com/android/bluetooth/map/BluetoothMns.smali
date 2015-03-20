.class public Lcom/android/bluetooth/map/BluetoothMns;
.super Ljava/lang/Object;
.source "BluetoothMns.java"

# interfaces
.implements Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMns$MnsClient;,
        Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;,
        Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;,
        Lcom/android/bluetooth/map/BluetoothMns$EventHandler;
    }
.end annotation


# static fields
.field public static final BluetoothUuid_ObexMns:Landroid/os/ParcelUuid;

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnectThread:Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

.field private mContext:Landroid/content/Context;

.field private final mEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMnsClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMns$MnsClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingEvent:Z

.field private mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

.field private mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

.field private mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitingMasId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field opList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    .line 124
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMns;->BluetoothUuid_ObexMns:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    .line 127
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mWaitingMasId:Ljava/util/HashSet;

    .line 128
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mEventQueue:Ljava/util/Queue;

    .line 129
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSendingEvent:Z

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    .line 585
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMns$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMns$1;-><init>(Lcom/android/bluetooth/map/BluetoothMns;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 139
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    move v1, v0

    .line 141
    :goto_0
    if-ge v1, v6, :cond_0

    .line 145
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    .line 141
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'s constructor arguments mismatch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    .line 152
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be instantiated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 154
    :catch_2
    move-exception v0

    .line 155
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be instantiated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 157
    :catch_3
    move-exception v0

    .line 158
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'s constructor invocation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 160
    :catch_4
    move-exception v0

    .line 161
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'s constructor is not accessible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 163
    :catch_5
    move-exception v0

    .line 164
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no matched constructor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const-string v0, "BtMns"

    const-string v1, "Can\'t send event when Bluetooth is disabled "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_2
    return-void

    .line 174
    :cond_1
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMns;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMnsObexSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/map/BluetoothMns;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSendingEvent:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/map/BluetoothMns;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSendingEvent:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mEventQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/map/BluetoothMns;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMns;->sendEvent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMns$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMns;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->register(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mWaitingMasId:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mConnectThread:Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/map/BluetoothMns;Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;)Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;
    .param p1, "x1"    # Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mConnectThread:Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMns;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->deregister(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMns;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMns;->canDisconnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMns;->mnsCleanupInstances()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMns;->deregisterAll()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMns;Ljavax/btobex/ObexTransport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMns;
    .param p1, "x1"    # Ljavax/btobex/ObexTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->startObexSession(Ljavax/btobex/ObexTransport;)V

    return-void
.end method

.method private assertMasid(I)Z
    .locals 4
    .param p1, "masId"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 193
    .local v0, "size":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 194
    :cond_0
    const-string v1, "BtMns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of maximum number of MAS instances: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v1, 0x0

    .line 197
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized canDisconnect()Z
    .locals 3

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 219
    .local v0, "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const/4 v2, 0x0

    .line 223
    .end local v0    # "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private deregister(I)V
    .locals 4
    .param p1, "masId"    # I

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->assertMasid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    const-string v1, "BtMns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to register MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 232
    .local v0, "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->register(Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;)V

    goto :goto_0
.end method

.method private deregisterAll()V
    .locals 3

    .prologue
    .line 238
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 239
    .local v0, "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->register(Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;)V

    goto :goto_0

    .line 243
    .end local v0    # "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    :cond_1
    return-void
.end method

.method private mnsCleanupInstances()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_0

    const-string v2, "BtMns"

    const-string v3, "MNS_BT: entered mnsCleanupInstances"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 252
    .local v0, "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_3

    const-string v2, "BtMns"

    const-string v3, "MNS_BT: mnsCleanupInstances: inside for loop"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_3
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_4

    const-string v2, "BtMns"

    const-string v3, "MNS_BT: mnsCleanupInstances: Attempt to deregister MnsClient"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_4
    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->register(Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;)V

    .line 256
    const/4 v0, 0x0

    .line 257
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_2

    const-string v2, "BtMns"

    const-string v3, "MNS_BT: mnsCleanupInstances: made client = null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v0    # "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    :cond_5
    return-void
.end method

.method private register(I)Z
    .locals 6
    .param p1, "masId"    # I

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->assertMasid(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const-string v3, "BtMns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to register MAS id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return v2

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 206
    .local v0, "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->register(Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BtMns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured while register MNS for MAS id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendEvent(Ljava/lang/String;I)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "masId"    # I

    .prologue
    .line 542
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 543
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v5, :cond_0

    .line 544
    const-string v5, "BtMns"

    const-string v6, "--------------"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v5, "BtMns"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " CONTENT OF EVENT REPORT FILE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EventReport"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "FILENAME":Ljava/lang/String;
    const/4 v4, 0x0

    .line 550
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 553
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 554
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 555
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 556
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .local v3, "fileR":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 565
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v5, :cond_1

    .line 566
    const-string v5, "BtMns"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Sending event report file for Mas "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    if-eqz v5, :cond_2

    .line 570
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    int-to-byte v6, p2

    invoke-virtual {v5, v3, v6}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->sendEvent(Ljava/io/File;B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 583
    .end local v0    # "FILENAME":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileR":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 557
    .restart local v0    # "FILENAME":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 560
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 572
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fileR":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 573
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 576
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v5, :cond_2

    .line 577
    const-string v5, "BtMns"

    const-string v6, " ERROR IN CREATING SEND EVENT OBJ FILE"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 580
    .end local v0    # "FILENAME":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileR":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v5, :cond_2

    .line 581
    const-string v5, "BtMns"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendEvent(null, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startObexSession(Ljavax/btobex/ObexTransport;)V
    .locals 3
    .param p1, "transport"    # Ljavax/btobex/ObexTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 617
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BtMns"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Client session with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;-><init>(Landroid/content/Context;Ljavax/btobex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    .line 619
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->connect()V

    .line 620
    return-void
.end method


# virtual methods
.method public addMceInitiatedOperation(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgHandle"    # Ljava/lang/String;

    .prologue
    .line 447
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;-><init>(Lcom/android/bluetooth/map/BluetoothMns;)V

    .line 448
    .local v0, "op":Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    iput-object p1, v0, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->msgHandle:Ljava/lang/String;

    .line 449
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->time:Landroid/text/format/Time;

    .line 450
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->time:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 451
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method public findLocationMceInitiatedOperation(Ljava/lang/String;)I
    .locals 10
    .param p1, "msgHandle"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 466
    const/4 v2, -0x1

    .line 468
    .local v2, "location":I
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 469
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v4, "staleOpList":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;>;"
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    .line 473
    .local v3, "op":Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    invoke-virtual {v0, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iget-object v7, v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->time:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 475
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    .end local v3    # "op":Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 479
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    .line 481
    .restart local v3    # "op":Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 485
    .end local v3    # "op":Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    .line 486
    .restart local v3    # "op":Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    iget-object v5, v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->msgHandle:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 487
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 492
    .end local v3    # "op":Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    :cond_4
    const/4 v5, -0x1

    if-ne v2, v5, :cond_6

    .line 493
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    .line 494
    .restart local v3    # "op":Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    iget-object v5, v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->msgHandle:Ljava/lang/String;

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 495
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 500
    .end local v3    # "op":Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    :cond_6
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    return-object v0
.end method

.method public onMessageDeleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "masId"    # I
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "msgType"    # Ljava/lang/String;

    .prologue
    .line 716
    const-string v2, "MessageDeleted"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public onNewMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "masId"    # I
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "msgType"    # Ljava/lang/String;

    .prologue
    .line 704
    const-string v2, "NewMessage"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public onSendingFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "masId"    # I
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "msgType"    # Ljava/lang/String;

    .prologue
    .line 708
    const-string v2, "SendingFailure"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public onSendingSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "masId"    # I
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "msgType"    # Ljava/lang/String;

    .prologue
    .line 712
    const-string v2, "SendingSuccess"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public removeMceInitiatedOperation(I)V
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 459
    return-void
.end method

.method public sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "masId"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "handle"    # Ljava/lang/String;
    .param p4, "folder"    # Ljava/lang/String;
    .param p5, "old_folder"    # Ljava/lang/String;
    .param p6, "msgType"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 509
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_0

    .line 510
    const-string v2, "BtMns"

    const-string v3, "sendMnsEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old_folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    const/4 v0, -0x1

    .line 523
    .local v0, "location":I
    const-string v2, "MemoryAvailable"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MemoryFull"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    :cond_1
    const/4 v0, -0x1

    .line 529
    :goto_0
    if-ne v0, v5, :cond_4

    .line 530
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->mapEventReportXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "str":Ljava/lang/String;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_2

    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification to MAS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, p1, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 536
    .end local v1    # "str":Ljava/lang/String;
    :goto_1
    return-void

    .line 526
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/bluetooth/map/BluetoothMns;->findLocationMceInitiatedOperation(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 534
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMns;->removeMceInitiatedOperation(I)V

    goto :goto_1
.end method

.method public sendMnsEventMemory(Ljava/lang/String;)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 683
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 684
    .local v7, "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->getMasId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    .end local v7    # "client":Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 605
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BtMns"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    if-eqz v0, :cond_2

    .line 607
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "BtMns"

    const-string v1, "Stop mSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->disconnect()V

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    .line 611
    :cond_2
    return-void
.end method
