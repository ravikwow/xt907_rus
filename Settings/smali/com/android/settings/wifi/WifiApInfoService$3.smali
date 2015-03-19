.class Lcom/android/settings/wifi/WifiApInfoService$3;
.super Ljava/lang/Object;
.source "WifiApInfoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final buf:[B

.field final synthetic this$0:Lcom/android/settings/wifi/WifiApInfoService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    return-void
.end method

.method private declared-synchronized getState(Ljava/io/File;)J
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v5, 0x0

    .line 273
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 274
    const-string v7, "WifiApInfoService"

    const-string v8, "The file is not exist, can\'t fetch the number from it!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v7, "WifiApInfoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The file abs path is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v5

    .line 309
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 279
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v4, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    invoke-virtual {v4, v7}, Ljava/io/RandomAccessFile;->read([B)I

    .line 282
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    if-eqz v4, :cond_2

    .line 289
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    .line 297
    .local v2, "num":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 298
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    aget-byte v7, v7, v1

    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    aget-byte v7, v7, v1

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    .line 301
    const-wide/16 v7, 0xa

    mul-long/2addr v2, v7

    .line 302
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApInfoService$3;->buf:[B

    aget-byte v7, v7, v1

    add-int/lit8 v7, v7, -0x30

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 290
    .end local v1    # "i":I
    .end local v2    # "num":J
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "WifiApInfoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 306
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 307
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v7, "WifiApInfoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception opening TCP statistics file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide v2, v5

    .line 309
    goto :goto_0

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 284
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v7, "WifiApInfoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception getting TCP bytes from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 287
    if-eqz v4, :cond_3

    .line 289
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    :goto_3
    move-wide v2, v5

    .line 292
    goto/16 :goto_0

    .line 290
    :catch_3
    move-exception v0

    .line 291
    :try_start_8
    const-string v7, "WifiApInfoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 287
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    if-eqz v4, :cond_4

    .line 289
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 292
    :cond_4
    :goto_4
    :try_start_a
    throw v7

    .line 290
    :catch_4
    move-exception v0

    .line 291
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "WifiApInfoService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception closing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v22

    monitor-enter v22

    .line 189
    :try_start_0
    const-string v21, "WifiApInfoService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Polling stats on "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v21, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sys/class/net/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/statistics"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/tx_bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService$3;->getState(Ljava/io/File;)J

    move-result-wide v6

    .line 192
    .local v6, "currTxBytes":J
    new-instance v21, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sys/class/net/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/statistics"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/rx_bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService$3;->getState(Ljava/io/File;)J

    move-result-wide v4

    .line 195
    .local v4, "currRxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->prevTxBytes:J
    invoke-static/range {v23 .. v23}, Lcom/android/settings/wifi/WifiApInfoService;->access$1200(Lcom/android/settings/wifi/WifiApInfoService;)J

    move-result-wide v23

    sub-long v23, v6, v23

    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->diffTxBytes:J
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$1102(Lcom/android/settings/wifi/WifiApInfoService;J)J

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->prevRxBytes:J
    invoke-static/range {v23 .. v23}, Lcom/android/settings/wifi/WifiApInfoService;->access$1400(Lcom/android/settings/wifi/WifiApInfoService;)J

    move-result-wide v23

    sub-long v23, v4, v23

    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->diffRxBytes:J
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$1302(Lcom/android/settings/wifi/WifiApInfoService;J)J

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->prevTxBytes:J
    invoke-static {v0, v6, v7}, Lcom/android/settings/wifi/WifiApInfoService;->access$1202(Lcom/android/settings/wifi/WifiApInfoService;J)J

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->prevRxBytes:J
    invoke-static {v0, v4, v5}, Lcom/android/settings/wifi/WifiApInfoService;->access$1402(Lcom/android/settings/wifi/WifiApInfoService;J)J

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->diffTxBytes:J
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1100(Lcom/android/settings/wifi/WifiApInfoService;)J

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v21, v23, v25

    if-gtz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->diffTxBytes:J
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1100(Lcom/android/settings/wifi/WifiApInfoService;)J

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v21, v23, v25

    if-ltz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->diffRxBytes:J
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1300(Lcom/android/settings/wifi/WifiApInfoService;)J

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v21, v23, v25

    if-gtz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->diffRxBytes:J
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1300(Lcom/android/settings/wifi/WifiApInfoService;)J

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v21, v23, v25

    if-gez v21, :cond_3

    .line 201
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->isTxRxByte:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$1502(Lcom/android/settings/wifi/WifiApInfoService;Z)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->checkStartIdleCheckTimer()V
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)V

    .line 208
    :goto_0
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1600(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "wifi_ap_lifetime_tx"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    add-long v10, v6, v21

    .line 210
    .local v10, "lifeTxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1600(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "wifi_ap_lifetime_rx"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    add-long v8, v4, v21

    .line 211
    .local v8, "lifeRxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1600(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "wifi_ap_reset_tx"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    add-long v16, v6, v21

    .line 212
    .local v16, "resetTxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1600(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "wifi_ap_reset_rx"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    add-long v14, v4, v21

    .line 214
    .local v14, "resetRxBytes":J
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 215
    .local v13, "now":Landroid/text/format/Time;
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 216
    .local v18, "savedTime":Landroid/text/format/Time;
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1600(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "wifi_ap_reset_at"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 219
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 220
    const-string v21, "WifiApInfoService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Triggering reset time - Now =>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Reset at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-wide/16 v16, 0x0

    .line 223
    const-wide/16 v14, 0x0

    .line 225
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 226
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 227
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 231
    :goto_1
    const-string v21, "WifiApInfoService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Next reset scheduled at : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "wifi_ap_reset_at"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1600(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "wifi_ap_reset_data_warn"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 236
    .local v19, "warnBytes":J
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-lez v21, :cond_2

    .line 237
    add-long v21, v16, v14

    const-wide/16 v23, 0x2800

    add-long v21, v21, v23

    cmp-long v21, v21, v19

    if-lez v21, :cond_2

    .line 239
    new-instance v12, Landroid/app/Notification;

    const v21, 0x1080027

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$1800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b007e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 242
    .local v12, "n":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/WifiApInfoService;->access$1800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b007e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/wifi/WifiApInfoService;->access$1800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b007f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/wifi/WifiApInfoService;->access$1900(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 246
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v21

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Landroid/app/NotificationManager;->cancel(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$2000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;

    move-result-object v21

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 252
    .end local v12    # "n":Landroid/app/Notification;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "wifi_ap_lifetime_tx"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "wifi_ap_lifetime_rx"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "wifi_ap_reset_tx"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v16

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "wifi_ap_reset_rx"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "wifi_ap_curr_tx"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "wifi_ap_curr_rx"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;

    move-result-object v23

    monitor-enter v23

    .line 260
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$1600(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "wifi_ap_data_counter_ui_alive"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    const-wide/16 v21, 0x3e8

    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    return-void

    .line 204
    .end local v8    # "lifeRxBytes":J
    .end local v10    # "lifeTxBytes":J
    .end local v13    # "now":Landroid/text/format/Time;
    .end local v14    # "resetRxBytes":J
    .end local v16    # "resetTxBytes":J
    .end local v18    # "savedTime":Landroid/text/format/Time;
    .end local v19    # "warnBytes":J
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    # setter for: Lcom/android/settings/wifi/WifiApInfoService;->isTxRxByte:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApInfoService;->access$1502(Lcom/android/settings/wifi/WifiApInfoService;Z)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApInfoService$3;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    move-object/from16 v21, v0

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->checkStartIdleCheckTimer()V
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiApInfoService;->access$600(Lcom/android/settings/wifi/WifiApInfoService;)V

    goto/16 :goto_0

    .line 208
    .end local v4    # "currRxBytes":J
    .end local v6    # "currTxBytes":J
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 229
    .restart local v4    # "currRxBytes":J
    .restart local v6    # "currTxBytes":J
    .restart local v8    # "lifeRxBytes":J
    .restart local v10    # "lifeTxBytes":J
    .restart local v13    # "now":Landroid/text/format/Time;
    .restart local v14    # "resetRxBytes":J
    .restart local v16    # "resetTxBytes":J
    .restart local v18    # "savedTime":Landroid/text/format/Time;
    :cond_4
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto/16 :goto_1

    .line 260
    .restart local v19    # "warnBytes":J
    :cond_5
    const-wide/16 v21, 0x2710

    goto :goto_2

    .line 262
    :catchall_1
    move-exception v21

    :try_start_3
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v21
.end method
