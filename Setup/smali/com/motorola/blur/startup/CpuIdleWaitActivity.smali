.class public Lcom/motorola/blur/startup/CpuIdleWaitActivity;
.super Landroid/app/Activity;
.source "CpuIdleWaitActivity.java"


# static fields
.field private static final S_PATH_PROC_LOADAVG:Ljava/lang/String; = "/proc/loadavg"

.field private static final S_PATH_PROC_STAT:Ljava/lang/String; = "/proc/stat"

.field private static final TAG:Ljava/lang/String; = "CpuIdleWaitActivity"


# instance fields
.field private S_HISTORY_SIZE:I

.field private S_IDLE_THRESHOLD_CPU:I

.field private S_IDLE_THRESHOLD_DURATION:I

.field private S_PROFILE_DURATION:J

.field private S_PROFILE_INTERVAL:J

.field private S_PROFILE_WAIT_ENABLED:Z

.field private mAveTotal:I

.field private mDlgWait:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:[I

.field private mHistoryIdx:I

.field private mLastCpuIdle:J

.field private mLastCpuTotal:J

.field private mRunCheckCPU:Ljava/lang/Runnable;

.field private mStopCheckCPU:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mDlgWait:Landroid/app/ProgressDialog;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;-><init>(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mRunCheckCPU:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/startup/CpuIdleWaitActivity$3;-><init>(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mStopCheckCPU:Ljava/lang/Runnable;

    .line 225
    iput-wide v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mLastCpuIdle:J

    .line 226
    iput-wide v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mLastCpuTotal:J

    .line 275
    iput-object v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistory:[I

    .line 276
    iput v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistoryIdx:I

    .line 277
    iput v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mAveTotal:I

    return-void
.end method

.method static synthetic access$001(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->getCpuLoad()F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->getCpuStat()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/startup/CpuIdleWaitActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/startup/CpuIdleWaitActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->getCpuAverage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_IDLE_THRESHOLD_CPU:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCpuAverage(I)I
    .locals 4
    .param p1, "cpuStat"    # I

    .prologue
    const/4 v1, -0x1

    .line 280
    iget-object v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistory:[I

    if-nez v2, :cond_1

    .line 281
    iget v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_HISTORY_SIZE:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistory:[I

    .line 282
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistoryIdx:I

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 286
    :cond_1
    iget v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistoryIdx:I

    iget v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_HISTORY_SIZE:I

    rem-int v0, v2, v3

    .line 287
    .local v0, "idx":I
    iget v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mAveTotal:I

    iget-object v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistory:[I

    aget v3, v3, v0

    sub-int v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mAveTotal:I

    .line 288
    iget-object v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistory:[I

    aput p1, v2, v0

    .line 290
    iget v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistoryIdx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHistoryIdx:I

    iget v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_HISTORY_SIZE:I

    if-lt v2, v3, :cond_0

    .line 294
    iget v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mAveTotal:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_HISTORY_SIZE:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    goto :goto_0
.end method

.method private getCpuLoad()F
    .locals 10

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 201
    .local v0, "cpuLoad":F
    const/4 v5, 0x0

    .line 203
    .local v5, "s":Ljava/util/Scanner;
    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/loadavg"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v5    # "s":Ljava/util/Scanner;
    .local v6, "s":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 205
    .local v3, "last1Min":F
    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 206
    .local v4, "last5Min":F
    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 207
    .local v2, "last15Min":F
    const-string v7, "CpuIdleWaitActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadavg = ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    move v0, v3

    .line 215
    if-eqz v6, :cond_2

    .line 216
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    move-object v5, v6

    .line 220
    .end local v2    # "last15Min":F
    .end local v3    # "last1Min":F
    .end local v4    # "last5Min":F
    .end local v6    # "s":Ljava/util/Scanner;
    .restart local v5    # "s":Ljava/util/Scanner;
    :cond_0
    :goto_0
    return v0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    if-eqz v5, :cond_0

    .line 216
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 213
    .local v1, "e":Ljava/util/NoSuchElementException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    if-eqz v5, :cond_0

    .line 216
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 215
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_1

    .line 216
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_1
    throw v7

    .line 215
    .end local v5    # "s":Ljava/util/Scanner;
    .restart local v6    # "s":Ljava/util/Scanner;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "s":Ljava/util/Scanner;
    .restart local v5    # "s":Ljava/util/Scanner;
    goto :goto_3

    .line 212
    .end local v5    # "s":Ljava/util/Scanner;
    .restart local v6    # "s":Ljava/util/Scanner;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "s":Ljava/util/Scanner;
    .restart local v5    # "s":Ljava/util/Scanner;
    goto :goto_2

    .line 210
    .end local v5    # "s":Ljava/util/Scanner;
    .restart local v6    # "s":Ljava/util/Scanner;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6    # "s":Ljava/util/Scanner;
    .restart local v5    # "s":Ljava/util/Scanner;
    goto :goto_1

    .end local v5    # "s":Ljava/util/Scanner;
    .restart local v2    # "last15Min":F
    .restart local v3    # "last1Min":F
    .restart local v4    # "last5Min":F
    .restart local v6    # "s":Ljava/util/Scanner;
    :cond_2
    move-object v5, v6

    .end local v6    # "s":Ljava/util/Scanner;
    .restart local v5    # "s":Ljava/util/Scanner;
    goto :goto_0
.end method

.method private getCpuStat()I
    .locals 26

    .prologue
    .line 229
    const-wide/16 v3, 0x0

    .line 230
    .local v3, "cpuIdle":J
    const-wide/16 v5, 0x0

    .line 234
    .local v5, "cpuTotal":J
    const/16 v16, 0x0

    .line 236
    .local v16, "s":Ljava/util/Scanner;
    :try_start_0
    new-instance v17, Ljava/util/Scanner;

    new-instance v22, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    const-string v24, "/proc/stat"

    invoke-direct/range {v23 .. v24}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v22 .. v23}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v16    # "s":Ljava/util/Scanner;
    .local v17, "s":Ljava/util/Scanner;
    :cond_0
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v22

    const-string v23, "cpu"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 238
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 239
    .local v20, "user":J
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 240
    .local v14, "nice":J
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 241
    .local v18, "system":J
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v12

    .line 243
    .local v12, "idle":J
    move-wide v3, v12

    .line 244
    add-long v22, v20, v14

    add-long v22, v22, v18

    add-long v5, v22, v12

    .line 250
    if-eqz v17, :cond_3

    .line 251
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->close()V

    move-object/from16 v16, v17

    .line 255
    .end local v12    # "idle":J
    .end local v14    # "nice":J
    .end local v17    # "s":Ljava/util/Scanner;
    .end local v18    # "system":J
    .end local v20    # "user":J
    .restart local v16    # "s":Ljava/util/Scanner;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mLastCpuTotal:J

    move-wide/from16 v22, v0

    sub-long v9, v5, v22

    .line 256
    .local v9, "deltaTotal":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mLastCpuIdle:J

    move-wide/from16 v22, v0

    sub-long v7, v3, v22

    .line 258
    .local v7, "deltaIdle":J
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mLastCpuTotal:J

    .line 259
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mLastCpuIdle:J

    .line 261
    sub-long v22, v9, v7

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    const-wide/16 v24, 0x5

    add-long v22, v22, v24

    const-wide/16 v24, 0xa

    div-long v22, v22, v24

    div-long v22, v22, v9

    move-wide/from16 v0, v22

    long-to-int v2, v0

    .line 263
    .local v2, "cpu":I
    return v2

    .line 245
    .end local v2    # "cpu":I
    .end local v7    # "deltaIdle":J
    .end local v9    # "deltaTotal":J
    :catch_0
    move-exception v11

    .line 246
    .local v11, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    if-eqz v16, :cond_1

    .line 251
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 247
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    .line 248
    .local v11, "e":Ljava/util/NoSuchElementException;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    if-eqz v16, :cond_1

    .line 251
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 250
    .end local v11    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v22

    :goto_3
    if-eqz v16, :cond_2

    .line 251
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v22

    .line 250
    .end local v16    # "s":Ljava/util/Scanner;
    .restart local v17    # "s":Ljava/util/Scanner;
    :catchall_1
    move-exception v22

    move-object/from16 v16, v17

    .end local v17    # "s":Ljava/util/Scanner;
    .restart local v16    # "s":Ljava/util/Scanner;
    goto :goto_3

    .line 247
    .end local v16    # "s":Ljava/util/Scanner;
    .restart local v17    # "s":Ljava/util/Scanner;
    :catch_2
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "s":Ljava/util/Scanner;
    .restart local v16    # "s":Ljava/util/Scanner;
    goto :goto_2

    .line 245
    .end local v16    # "s":Ljava/util/Scanner;
    .restart local v17    # "s":Ljava/util/Scanner;
    :catch_3
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "s":Ljava/util/Scanner;
    .restart local v16    # "s":Ljava/util/Scanner;
    goto :goto_1

    .end local v16    # "s":Ljava/util/Scanner;
    .restart local v12    # "idle":J
    .restart local v14    # "nice":J
    .restart local v17    # "s":Ljava/util/Scanner;
    .restart local v18    # "system":J
    .restart local v20    # "user":J
    :cond_3
    move-object/from16 v16, v17

    .end local v17    # "s":Ljava/util/Scanner;
    .restart local v16    # "s":Ljava/util/Scanner;
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mRunCheckCPU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mStopCheckCPU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    new-instance v0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;-><init>(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 50
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_WAIT_ENABLED:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    iget-boolean v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_WAIT_ENABLED:Z

    if-nez v1, :cond_0

    .line 57
    const-string v1, "CpuIdleWaitActivity"

    const-string v2, "CPU idle wait dialog not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->finish()V

    .line 62
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_DURATION:J

    .line 63
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_INTERVAL:J

    .line 64
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_IDLE_THRESHOLD_CPU:I

    .line 65
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_IDLE_THRESHOLD_DURATION:I

    .line 66
    iget v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_IDLE_THRESHOLD_DURATION:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_INTERVAL:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_HISTORY_SIZE:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :goto_1
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "CpuIdleWaitActivity"

    const-string v2, "Failed to read cpu_idle_wait config value: \"cpu_idle_wait_enabled\"."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_WAIT_ENABLED:Z

    goto :goto_0

    .line 67
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 68
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "CpuIdleWaitActivity"

    const-string v2, "Failed to read config values:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v1, "CpuIdleWaitActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S_PROFILE_DURATION="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_DURATION:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v1, "CpuIdleWaitActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S_PROFILE_INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_INTERVAL:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, "CpuIdleWaitActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S_IDLE_THRESHOLD_CPU="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_IDLE_THRESHOLD_CPU:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v1, "CpuIdleWaitActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S_IDLE_THRESHOLD_DURATION="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_IDLE_THRESHOLD_DURATION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->finish()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 80
    const-string v0, "CpuIdleWaitActivity"

    const-string v1, "Enter CPU idle wait dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v0, "CpuIdleWaitActivity"

    const-string v1, "Hiding system navigation bar & notification tray."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1600000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 92
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mDlgWait:Landroid/app/ProgressDialog;

    .line 98
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mRunCheckCPU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mStopCheckCPU:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_DURATION:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mRunCheckCPU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mStopCheckCPU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mDlgWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 113
    const-string v0, "CpuIdleWaitActivity"

    const-string v1, "Exit CPU idle wait dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method
