.class public Lcom/android/bluetooth/map/BluetoothMasObexServer;
.super Ljavax/btobex/ServerRequestHandler;
.source "BluetoothMasObexServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;,
        Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final MAS_TARGET:[B

.field private static final V:Z

.field public static sIsAborted:Z


# instance fields
.field private mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

.field private mCallback:Landroid/os/Handler;

.field public mConnectionId:J

.field public mContext:Landroid/content/Context;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field private masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    .line 68
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->MAS_TARGET:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x40t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Lcom/android/bluetooth/map/IBluetoothMasApp;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "appIf"    # Lcom/android/bluetooth/map/IBluetoothMasApp;

    .prologue
    .line 539
    invoke-direct {p0}, Ljavax/btobex/ServerRequestHandler;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    .line 106
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_DISCONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 535
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;-><init>(Lcom/android/bluetooth/map/BluetoothMasObexServer;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    .line 540
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    .line 542
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mConnectionId:J

    .line 543
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    .line 544
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mContext:Landroid/content/Context;

    .line 545
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 546
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v0, :cond_0

    .line 547
    const-string v0, "BluetoothMasObexServer"

    const-string v1, "BlueoothMasObexServer const called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "Initialize MasObexServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    return v0
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "op"    # Ljavax/btobex/Operation;

    .prologue
    .line 1178
    const/4 v1, 0x1

    .line 1180
    .local v1, "returnvalue":Z
    if-eqz p0, :cond_0

    .line 1181
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1189
    :try_start_1
    invoke-interface {p1}, Ljavax/btobex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1195
    :cond_1
    :goto_1
    return v1

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BluetoothMasObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v1, 0x0

    goto :goto_0

    .line 1191
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1192
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BluetoothMasObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final msgStatus(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 2
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 847
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "msgStatus: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 849
    :cond_1
    const/16 v0, 0xc0

    .line 851
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/bluetooth/map/IBluetoothMasApp;->msgStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v0

    goto :goto_0
.end method

.method private final msgUpdate(Ljavax/btobex/Operation;)I
    .locals 2
    .param p1, "op"    # Ljavax/btobex/Operation;

    .prologue
    .line 855
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "msgUpdate: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v0}, Lcom/android/bluetooth/map/IBluetoothMasApp;->msgUpdate()I

    move-result v0

    return v0
.end method

.method private final notification(Ljavax/btobex/Operation;)I
    .locals 3
    .param p1, "op"    # Ljavax/btobex/Operation;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/bluetooth/map/IBluetoothMasApp;->notification(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v0

    return v0
.end method

.method private final pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I
    .locals 5
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "reply"    # Ljavax/btobex/HeaderSet;

    .prologue
    .line 926
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothMasObexServer"

    const-string v3, "Push Header"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothMasObexServer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_1
    const/16 v1, 0xa0

    .line 931
    .local v1, "pushResult":I
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/btobex/Operation;->sendHeaders(Ljavax/btobex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 939
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothMasObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Push Header: Exit : RetVal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_2
    return v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BluetoothMasObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/16 v1, 0xd0

    .line 938
    goto :goto_0

    .line 935
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BluetoothMasObexServer"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/16 v1, 0xc0

    goto :goto_0
.end method

.method private final pushMsg(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 24
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 753
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PushMsg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/bluetooth/map/IBluetoothMasApp;->getMasId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 754
    .local v10, "fileName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v13

    .line 755
    .local v13, "outputBufferSize":I
    const/16 v16, 0x0

    .line 756
    .local v16, "readLength":I
    const-wide/16 v18, 0x0

    .line 757
    .local v18, "timestamp":J
    const/4 v15, 0x0

    .line 758
    .local v15, "position":I
    new-array v3, v13, [B

    .line 759
    .local v3, "b":[B
    const/4 v4, 0x0

    .line 760
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 761
    .local v12, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 762
    .local v8, "error":Z
    const/4 v9, 0x0

    .line 763
    .local v9, "file":Ljava/io/File;
    new-instance v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    invoke-direct {v14}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;-><init>()V

    .line 765
    .local v14, "pMsg":Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    new-instance v9, Ljava/io/File;

    .end local v9    # "file":Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 768
    .restart local v9    # "file":Ljava/io/File;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 774
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_0

    .line 777
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 780
    .local v11, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 787
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    :cond_0
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_3

    .line 790
    :cond_1
    :goto_2
    :try_start_2
    sget-boolean v20, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v20, :cond_2

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 793
    :cond_2
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .line 794
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 795
    sget-boolean v20, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v20, :cond_3

    .line 796
    const-string v20, "BluetoothMasObexServer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Receive file reached stream end at position"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 815
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 817
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 824
    :cond_4
    :goto_4
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_8

    .line 826
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v9, v2}, Lcom/android/bluetooth/map/IBluetoothMasApp;->pushMsg(Ljava/lang/String;Ljava/io/File;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    :try_end_4
    .catch Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    .line 832
    iget-object v0, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    iget v0, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move/from16 v20, v0

    const/16 v21, 0xa0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 835
    new-instance v17, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v17 .. v17}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 836
    .local v17, "reply":Ljavax/btobex/HeaderSet;
    const/16 v20, 0x1

    iget-object v0, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 837
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v20

    .line 842
    .end local v17    # "reply":Ljavax/btobex/HeaderSet;
    :goto_5
    return v20

    .line 769
    :catch_0
    move-exception v7

    .line 770
    .local v7, "e1":Ljava/io/IOException;
    const-string v20, "BluetoothMasObexServer"

    const-string v21, "Error while opening InputStream"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 781
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 783
    .local v6, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 800
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    const/16 v20, 0x0

    :try_start_5
    move/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v4, v3, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 801
    add-int v15, v15, v16

    .line 802
    sget-boolean v20, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v20, :cond_1

    .line 803
    const-string v20, "BluetoothMasObexServer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Receive file position = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " readLength "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes took "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v18

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 809
    :catch_2
    move-exception v7

    .line 810
    .restart local v7    # "e1":Ljava/io/IOException;
    const-string v20, "BluetoothMasObexServer"

    const-string v21, "Error when receiving file"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 818
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 819
    .local v6, "e":Ljava/io/IOException;
    const-string v20, "BluetoothMasObexServer"

    const-string v21, "Error when closing stream after send"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 827
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 828
    .local v6, "e":Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
    sget-boolean v20, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v20, :cond_6

    const-string v20, "BluetoothMasObexServer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BadRequestException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    :cond_6
    const/16 v20, 0xc0

    goto/16 :goto_5

    .line 839
    .end local v6    # "e":Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
    :cond_7
    iget v0, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move/from16 v20, v0

    goto/16 :goto_5

    .line 842
    :cond_8
    const/16 v20, 0xc0

    goto/16 :goto_5
.end method

.method private final sendBody(Ljavax/btobex/Operation;Ljava/io/File;)I
    .locals 17
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "fileinfo"    # Ljava/io/File;

    .prologue
    .line 1006
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v13, :cond_0

    const-string v13, "BluetoothMasObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendFile = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    const/4 v9, 0x0

    .line 1008
    .local v9, "position":I
    const/4 v10, 0x0

    .line 1009
    .local v10, "readLength":I
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v7

    .line 1010
    .local v7, "outputBufferSize":I
    const-wide/16 v11, 0x0

    .line 1011
    .local v11, "timestamp":J
    const/4 v5, 0x0

    .line 1015
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v13, :cond_1

    const-string v13, "BluetoothMasObexServer"

    const-string v14, "Send Body: Enter"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_1
    :try_start_0
    new-array v2, v7, [B

    .line 1018
    .local v2, "buffer":[B
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 1020
    .local v8, "outputStream":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v13, 0x4000

    invoke-direct {v1, v6, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1021
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :cond_2
    :goto_0
    int-to-long v13, v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_6

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1023
    int-to-long v13, v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    .line 1024
    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    .line 1026
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v8, v2, v13, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 1027
    add-int/2addr v9, v10

    .line 1028
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v13, :cond_2

    .line 1029
    const-string v13, "BluetoothMasObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sending file position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " readLength "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bytes took "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1034
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 1035
    .end local v2    # "buffer":[B
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    const/16 v13, 0xc0

    .line 1037
    if-eqz v5, :cond_4

    .line 1039
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1051
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    return v13

    .line 1037
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v5, :cond_5

    .line 1039
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1037
    :cond_5
    :goto_4
    throw v13

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "buffer":[B
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :cond_6
    if-eqz v6, :cond_7

    .line 1039
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1045
    :cond_7
    :goto_5
    int-to-long v13, v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_9

    .line 1046
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v13, :cond_8

    const-string v13, "BluetoothMasObexServer"

    const-string v14, "SendBody : Exit: OK"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_8
    const/16 v13, 0xa0

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1050
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_9
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v13, :cond_a

    const-string v13, "BluetoothMasObexServer"

    const-string v14, "SendBody : Exit: CONTINUE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_a
    const/16 v13, 0x90

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1040
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "buffer":[B
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1041
    .local v4, "ei":Ljava/io/IOException;
    const-string v14, "BluetoothMasObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error while closing stream"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1040
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ei":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 1041
    .restart local v4    # "ei":Ljava/io/IOException;
    const-string v14, "BluetoothMasObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error while closing stream"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1040
    .end local v4    # "ei":Ljava/io/IOException;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "buffer":[B
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    .line 1041
    .restart local v4    # "ei":Ljava/io/IOException;
    const-string v13, "BluetoothMasObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error while closing stream"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1037
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "ei":Ljava/io/IOException;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1034
    .end local v2    # "buffer":[B
    :catch_4
    move-exception v3

    goto/16 :goto_1
.end method

.method private final sendFolderListing(Ljavax/btobex/Operation;)I
    .locals 8
    .param p1, "op"    # Ljavax/btobex/Operation;

    .prologue
    const/4 v7, 0x2

    .line 1091
    const/4 v1, 0x0

    .line 1092
    .local v1, "folderListSize":I
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_0

    const-string v5, "BluetoothMasObexServer"

    const-string v6, "SendFolderListing : Enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v5}, Lcom/android/bluetooth/map/IBluetoothMasApp;->folderListingSize()I

    move-result v1

    .line 1094
    new-array v4, v7, [B

    .line 1095
    .local v4, "size":[B
    const/4 v5, 0x0

    div-int/lit16 v6, v1, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1096
    const/4 v5, 0x1

    rem-int/lit16 v6, v1, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1099
    new-instance v0, Ljavax/btobex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/btobex/ApplicationParameter;-><init>()V

    .line 1100
    .local v0, "ap":Ljavax/btobex/ApplicationParameter;
    const/16 v5, 0x11

    invoke-virtual {v0, v5, v7, v4}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1104
    new-instance v2, Ljavax/btobex/HeaderSet;

    invoke-direct {v2}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 1105
    .local v2, "reply":Ljavax/btobex/HeaderSet;
    const/16 v5, 0x4c

    invoke-virtual {v0}, Ljavax/btobex/ApplicationParameter;->getAPPparam()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1107
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->isMaxListCountZero()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1109
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v3

    .line 1110
    .local v3, "retVal":I
    const/16 v5, 0xa0

    if-eq v3, v5, :cond_2

    .line 1111
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_1

    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendFolderListing : FAILED : RetVal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .end local v3    # "retVal":I
    :cond_1
    :goto_0
    return v3

    .line 1114
    .restart local v3    # "retVal":I
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/bluetooth/map/IBluetoothMasApp;->folderListing(Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendFolderListingBody(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 1116
    .end local v3    # "retVal":I
    :cond_3
    invoke-interface {p1}, Ljavax/btobex/Operation;->noEndofBody()V

    .line 1117
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v3

    goto :goto_0
.end method

.method private final sendFolderListingBody(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 15
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "folderlistString"    # Ljava/lang/String;

    .prologue
    .line 947
    if-nez p2, :cond_1

    .line 948
    const-string v11, "BluetoothMasObexServer"

    const-string v12, "folderlistString is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/16 v6, 0xa0

    .line 1002
    :cond_0
    :goto_0
    return v6

    .line 952
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 953
    .local v2, "folderlistStringLen":I
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v11, :cond_2

    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Send Folder Listing Body: len="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_2
    const/4 v4, 0x0

    .line 956
    .local v4, "outputStream":Ljava/io/OutputStream;
    const/16 v6, 0xa0

    .line 958
    .local v6, "pushResult":I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 964
    const/4 v5, 0x0

    .line 965
    .local v5, "position":I
    const-wide/16 v9, 0x0

    .line 966
    .local v9, "timestamp":J
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v3

    .line 967
    .local v3, "outputBufferSize":I
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_3

    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "outputBufferSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_3
    :goto_1
    if-eq v5, v2, :cond_4

    .line 969
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    if-eqz v11, :cond_7

    move-object/from16 v11, p1

    .line 970
    check-cast v11, Ljavax/btobex/ServerOperation;

    const/4 v12, 0x1

    iput-boolean v12, v11, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 971
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 995
    :cond_4
    :goto_2
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_5

    const-string v11, "BluetoothMasObexServer"

    const-string v12, "Send Data complete!"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 998
    const-string v11, "BluetoothMasObexServer"

    const-string v12, "Send Folder Listing Body - Close output stream error! "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/16 v6, 0xd3

    .line 1001
    :cond_6
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_0

    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Send Folder Listing Body complete! result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 959
    .end local v3    # "outputBufferSize":I
    .end local v5    # "position":I
    .end local v9    # "timestamp":J
    :catch_0
    move-exception v1

    .line 960
    .local v1, "e":Ljava/io/IOException;
    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "open outputstrem failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/16 v6, 0xd3

    goto/16 :goto_0

    .line 974
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "outputBufferSize":I
    .restart local v5    # "position":I
    .restart local v9    # "timestamp":J
    :cond_7
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 975
    :cond_8
    move v7, v3

    .line 976
    .local v7, "readLength":I
    sub-int v11, v2, v5

    if-ge v11, v3, :cond_9

    .line 977
    sub-int v7, v2, v5

    .line 979
    :cond_9
    add-int v11, v5, v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 981
    .local v8, "subStr":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 987
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v11, :cond_a

    .line 988
    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sending folderlist String position = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " readLength "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_a
    add-int/2addr v5, v7

    .line 993
    goto/16 :goto_1

    .line 982
    :catch_1
    move-exception v1

    .line 983
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "write outputstream failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/16 v6, 0xd3

    .line 985
    goto/16 :goto_2
.end method

.method private final sendMsg(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 9
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xa0

    const/4 v7, 0x1

    .line 1057
    new-instance v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    invoke-direct {v1}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;-><init>()V

    .line 1058
    .local v1, "msg":Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    new-array v4, v7, [B

    .line 1060
    .local v4, "val":[B
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_0

    const-string v5, "BluetoothMasObexServer"

    const-string v6, "SendMsg : Enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v6

    invoke-interface {v5, p2, v6}, Lcom/android/bluetooth/map/IBluetoothMasApp;->msg(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    move-result-object v1

    .line 1062
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    if-eq v5, v8, :cond_3

    .line 1063
    :cond_1
    iget v3, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 1086
    :cond_2
    :goto_0
    return v3

    .line 1066
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v5

    iget-byte v5, v5, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    if-ne v5, v7, :cond_4

    .line 1068
    const/4 v5, 0x0

    iget-byte v6, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->fractionDeliver:B

    aput-byte v6, v4, v5

    .line 1069
    new-instance v0, Ljavax/btobex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/btobex/ApplicationParameter;-><init>()V

    .line 1070
    .local v0, "ap":Ljavax/btobex/ApplicationParameter;
    const/16 v5, 0x16

    invoke-virtual {v0, v5, v7, v4}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1075
    new-instance v2, Ljavax/btobex/HeaderSet;

    invoke-direct {v2}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 1076
    .local v2, "reply":Ljavax/btobex/HeaderSet;
    const/16 v5, 0x4c

    invoke-virtual {v0}, Ljavax/btobex/ApplicationParameter;->getAPPparam()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1079
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v3

    .line 1080
    .local v3, "retVal":I
    if-eq v3, v8, :cond_4

    .line 1081
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_2

    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendMsg : FAILED: RetVal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1085
    .end local v0    # "ap":Ljavax/btobex/ApplicationParameter;
    .end local v2    # "reply":Ljavax/btobex/HeaderSet;
    .end local v3    # "retVal":I
    :cond_4
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_5

    const-string v5, "BluetoothMasObexServer"

    const-string v6, "SendMsg : SUCCESS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_5
    iget-object v5, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->file:Ljava/io/File;

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendBody(Ljavax/btobex/Operation;Ljava/io/File;)I

    move-result v3

    goto :goto_0
.end method

.method private final sendMsgListing(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 15
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1124
    const/4 v11, 0x2

    new-array v10, v11, [B

    .line 1125
    .local v10, "val":[B
    new-instance v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    invoke-direct {v3}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;-><init>()V

    .line 1126
    .local v3, "appIfMsgListRsp":Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v11, :cond_0

    const-string v11, "BluetoothMasObexServer"

    const-string v12, "SendMsgListing : Enter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_0
    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v11, v0, v12}, Lcom/android/bluetooth/map/IBluetoothMasApp;->msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    move-result-object v3

    .line 1129
    if-eqz v3, :cond_1

    iget v11, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    const/16 v12, 0xa0

    if-eq v11, v12, :cond_3

    .line 1130
    :cond_1
    iget v6, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 1173
    :cond_2
    :goto_0
    return v6

    .line 1133
    :cond_3
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1134
    .local v7, "time":Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 1136
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v8

    .line 1137
    .local v8, "time3339":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 1139
    .local v9, "timeStrLength":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0xf

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, -0x6

    add-int/lit8 v13, v9, -0x3

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, -0x2

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1143
    .local v4, "datetimeStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1146
    .local v1, "MSETime":[B
    new-instance v2, Ljavax/btobex/ApplicationParameter;

    invoke-direct {v2}, Ljavax/btobex/ApplicationParameter;-><init>()V

    .line 1147
    .local v2, "ap":Ljavax/btobex/ApplicationParameter;
    const/16 v11, 0x19

    const/16 v12, 0x14

    invoke-virtual {v2, v11, v12, v1}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1149
    const/4 v11, 0x0

    iget-byte v12, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    aput-byte v12, v10, v11

    .line 1150
    const/16 v11, 0xd

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12, v10}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1153
    const/4 v11, 0x0

    iget v12, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    div-int/lit16 v12, v12, 0x100

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1154
    const/4 v11, 0x1

    iget v12, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    rem-int/lit16 v12, v12, 0x100

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1156
    const/16 v11, 0x12

    const/4 v12, 0x2

    invoke-virtual {v2, v11, v12, v10}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1161
    new-instance v5, Ljavax/btobex/HeaderSet;

    invoke-direct {v5}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 1162
    .local v5, "reply":Ljavax/btobex/HeaderSet;
    const/16 v11, 0x4c

    invoke-virtual {v2}, Ljavax/btobex/ApplicationParameter;->getAPPparam()[B

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1164
    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->isMaxListCountZero()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1166
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v6

    .line 1167
    .local v6, "retVal":I
    const/16 v11, 0xa0

    if-eq v6, v11, :cond_4

    .line 1168
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v11, :cond_2

    const-string v11, "BluetoothMasObexServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SendMsgListing : Failed : RetVal "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1171
    :cond_4
    iget-object v11, v3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->file:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendBody(Ljavax/btobex/Operation;Ljava/io/File;)I

    move-result v6

    goto/16 :goto_0

    .line 1173
    .end local v6    # "retVal":I
    :cond_5
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v6

    goto/16 :goto_0
.end method


# virtual methods
.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public onAbort(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/btobex/HeaderSet;
    .param p2, "reply"    # Ljavax/btobex/HeaderSet;

    .prologue
    .line 635
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "onAbort(): enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 637
    const/16 v0, 0xa0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Lcom/android/bluetooth/map/IBluetoothMasApp;->stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V

    .line 691
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 693
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 694
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v1}, Lcom/android/bluetooth/map/IBluetoothMasApp;->getMasId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 695
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 696
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasObexServer"

    const-string v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 12
    .param p1, "request"    # Ljavax/btobex/HeaderSet;
    .param p2, "reply"    # Ljavax/btobex/HeaderSet;

    .prologue
    const/16 v8, 0xd0

    const/16 v11, 0x10

    const/16 v7, 0xc6

    .line 559
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v6, :cond_0

    const-string v6, "BluetoothMasObexServer"

    const-string v9, "onConnect()"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 562
    .local v5, "uuid":[B
    if-nez v5, :cond_1

    .line 563
    const-string v6, "BluetoothMasObexServer"

    const-string v9, "Null UUID "

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 612
    .end local v5    # "uuid":[B
    :goto_0
    return v6

    .line 566
    .restart local v5    # "uuid":[B
    :cond_1
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v6, :cond_2

    .line 567
    const-string v6, "BluetoothMasObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_2
    array-length v6, v5

    if-eq v6, v11, :cond_3

    .line 570
    const-string v6, "BluetoothMasObexServer"

    const-string v9, "Wrong UUID length"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 571
    goto :goto_0

    .line 573
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_5

    .line 574
    aget-byte v6, v5, v2

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMasObexServer;->MAS_TARGET:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_4

    .line 575
    const-string v6, "BluetoothMasObexServer"

    const-string v9, "Wrong UUID"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 576
    goto :goto_0

    .line 573
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 579
    :cond_5
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v6}, Lcom/android/bluetooth/map/IBluetoothMasApp;->checkPrecondition()Z

    move-result v6

    if-nez v6, :cond_6

    .line 580
    const/16 v6, 0xd3

    goto :goto_0

    .line 582
    :cond_6
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 592
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 593
    .local v4, "remote":[B
    if-eqz v4, :cond_8

    .line 594
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v6, :cond_7

    const-string v6, "BluetoothMasObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect(): remote="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_7
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 602
    :cond_8
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v6, :cond_9

    const-string v6, "BluetoothMasObexServer"

    const-string v7, "onConnect(): uuid is ok, will send out MSG_SESSION_ESTABLISHED msg."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_9
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 606
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x138d

    iput v6, v3, Landroid/os/Message;->what:I

    .line 607
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 609
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 610
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v6, :cond_a

    const-string v6, "BluetoothMasObexServer"

    const-string v7, "Connect(): Success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_a
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v6}, Lcom/android/bluetooth/map/IBluetoothMasApp;->onConnect()V

    .line 612
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 583
    .end local v2    # "i":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "remote":[B
    .end local v5    # "uuid":[B
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "BluetoothMasObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 585
    goto/16 :goto_0

    .line 586
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 587
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "BluetoothMasObexServer"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/16 v6, 0xc0

    goto/16 :goto_0

    .line 597
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "i":I
    .restart local v5    # "uuid":[B
    :catch_2
    move-exception v1

    .line 598
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "BluetoothMasObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 599
    goto/16 :goto_0
.end method

.method public onDisconnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)V
    .locals 3
    .param p1, "req"    # Ljavax/btobex/HeaderSet;
    .param p2, "resp"    # Ljavax/btobex/HeaderSet;

    .prologue
    .line 617
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasObexServer"

    const-string v2, "onDisconnect(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v1}, Lcom/android/bluetooth/map/IBluetoothMasApp;->onDisconnect()V

    .line 620
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/btobex/HeaderSet;->responseCode:I

    .line 621
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 622
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 623
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 624
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 625
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMasObexServer"

    const-string v2, "onDisconnect(): msg MSG_SESSION_DISCONNECTED sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Lcom/android/bluetooth/map/IBluetoothMasApp;->stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V

    .line 630
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_DISCONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 631
    return-void
.end method

.method public onGet(Ljavax/btobex/Operation;)I
    .locals 11
    .param p1, "op"    # Ljavax/btobex/Operation;

    .prologue
    const/16 v8, 0xc0

    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, "appParams":[B
    const/4 v5, 0x1

    .line 706
    .local v5, "retVal":Z
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v7, :cond_0

    const-string v7, "BluetoothMasObexServer"

    const-string v9, "onGet(): support GET request."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 709
    const/4 v4, 0x0

    .line 710
    .local v4, "request":Ljavax/btobex/HeaderSet;
    const-string v6, ""

    .line 711
    .local v6, "type":Ljava/lang/String;
    const-string v3, ""

    .line 715
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v4

    .line 716
    const/16 v7, 0x42

    invoke-virtual {v4, v7}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 717
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 718
    const/16 v7, 0x4c

    invoke-virtual {v4, v7}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 727
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->clear()V

    .line 728
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v7, v1}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->parse([B)Z

    move-result v5

    .line 730
    if-eqz v6, :cond_1

    if-nez v5, :cond_2

    :cond_1
    move v7, v8

    .line 747
    :goto_0
    return v7

    .line 719
    :catch_0
    move-exception v2

    .line 720
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "BluetoothMasObexServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request headers error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v7, 0xd0

    goto :goto_0

    .line 722
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 723
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "BluetoothMasObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request headers error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 724
    goto :goto_0

    .line 734
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v7, :cond_3

    const-string v7, "BluetoothMasObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_3
    const-string v7, "x-obex/folder-listing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 737
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendFolderListing(Ljavax/btobex/Operation;)I

    move-result v7

    goto :goto_0

    .line 739
    :cond_4
    const-string v7, "x-bt/MAP-msg-listing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 740
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendMsgListing(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 742
    :cond_5
    const-string v7, "x-bt/message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 743
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sendMsg(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 746
    :cond_6
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v7, :cond_7

    const-string v7, "BluetoothMasObexServer"

    const-string v9, "get returns HTTP_BAD_REQUEST"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v7, v8

    .line 747
    goto/16 :goto_0
.end method

.method public onPut(Ljavax/btobex/Operation;)I
    .locals 12
    .param p1, "op"    # Ljavax/btobex/Operation;

    .prologue
    const/16 v9, 0xc0

    .line 866
    const/4 v1, 0x0

    .line 867
    .local v1, "appParams":[B
    const/4 v5, 0x1

    .line 870
    .local v5, "retVal":Z
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v8, :cond_0

    const-string v8, "BluetoothMasObexServer"

    const-string v10, "onPut(): support PUT request."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/bluetooth/map/BluetoothMasObexServer;->sIsAborted:Z

    .line 873
    const/4 v4, 0x0

    .line 874
    .local v4, "request":Ljavax/btobex/HeaderSet;
    const-string v7, ""

    .line 875
    .local v7, "type":Ljava/lang/String;
    const-string v3, ""

    .line 879
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v4

    .line 880
    const/16 v8, 0x42

    invoke-virtual {v4, v8}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 881
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 882
    const/16 v8, 0x4c

    invoke-virtual {v4, v8}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 890
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->clear()V

    .line 891
    if-eqz v1, :cond_1

    .line 892
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v8, v1}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->parse([B)Z

    .line 894
    :cond_1
    if-eqz v7, :cond_2

    if-nez v5, :cond_3

    :cond_2
    move v8, v9

    .line 918
    :goto_0
    return v8

    .line 883
    :catch_0
    move-exception v2

    .line 884
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "BluetoothMasObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request headers error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/16 v8, 0xd0

    goto :goto_0

    .line 886
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 887
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "BluetoothMasObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "request headers error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 888
    goto :goto_0

    .line 898
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->masAppParams:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->get()Lcom/android/bluetooth/map/BluetoothMasAppParams;

    move-result-object v6

    .line 900
    .local v6, "tmp":Lcom/android/bluetooth/map/BluetoothMasAppParams;
    iget-byte v8, v6, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    if-nez v8, :cond_4

    .line 901
    const/16 v8, 0xd1

    goto :goto_0

    .line 903
    :cond_4
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v8, :cond_5

    const-string v8, "BluetoothMasObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_5
    const-string v8, "x-bt/message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 906
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->pushMsg(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 908
    :cond_6
    const-string v8, "x-bt/messageStatus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 909
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->msgStatus(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 911
    :cond_7
    const-string v8, "x-bt/MAP-messageUpdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 912
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->msgUpdate(Ljavax/btobex/Operation;)I

    move-result v8

    goto/16 :goto_0

    .line 914
    :cond_8
    const-string v8, "x-bt/MAP-NotificationRegistration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 915
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->notification(Ljavax/btobex/Operation;)I

    move-result v8

    goto/16 :goto_0

    .line 917
    :cond_9
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v8, :cond_a

    const-string v8, "BluetoothMasObexServer"

    const-string v10, "put returns HTTP_BAD_REQUEST"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v8, v9

    .line 918
    goto/16 :goto_0
.end method

.method public onSetPath(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;ZZ)I
    .locals 9
    .param p1, "request"    # Ljavax/btobex/HeaderSet;
    .param p2, "reply"    # Ljavax/btobex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    const/4 v8, 0x1

    .line 644
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_0

    const-string v5, "BluetoothMasObexServer"

    const-string v6, "onSetPath(): supports SetPath request."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    const/4 v4, 0x0

    .line 647
    .local v4, "tmpPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 648
    .local v2, "retVal":Z
    move v3, p3

    .line 650
    .local v3, "tmpBackup":Z
    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    .line 651
    const/4 v3, 0x1

    .line 655
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    if-eq v5, v6, :cond_3

    .line 656
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_1

    .line 657
    const-string v5, "BluetoothMasObexServer"

    const-string v6, "onSetPath() Failed: Mas Server not connected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_1
    const/16 v5, 0xd3

    .line 683
    :goto_1
    return v5

    .line 653
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 660
    :cond_3
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_SET_FOLDER:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 663
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 671
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->D:Z

    if-eqz v5, :cond_4

    .line 672
    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " create="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mAppIf:Lcom/android/bluetooth/map/IBluetoothMasApp;

    invoke-interface {v5, p3, v4}, Lcom/android/bluetooth/map/IBluetoothMasApp;->setPath(ZLjava/lang/String;)Z

    move-result v2

    .line 676
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer;->mState:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 677
    if-ne v2, v8, :cond_6

    .line 678
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMasObexServer;->V:Z

    if-eqz v5, :cond_5

    .line 679
    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetPath to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SUCCESS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_5
    const/16 v5, 0xa0

    goto :goto_1

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get name header fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/16 v5, 0xd0

    goto/16 :goto_1

    .line 667
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 668
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "BluetoothMasObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get name header fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/16 v5, 0xc0

    goto/16 :goto_1

    .line 682
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    const-string v5, "BluetoothMasObexServer"

    const-string v6, "Path not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v5, 0xc4

    goto/16 :goto_1
.end method
