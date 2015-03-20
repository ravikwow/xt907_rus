.class Lcom/android/soundrecorder/RemainingTimeCalculator;
.super Ljava/lang/Object;
.source "SoundRecorder.java"


# instance fields
.field private mBlocksChangedTime:J

.field private mBytesPerSecond:I

.field private mCurrentLowerLimit:I

.field private mFileSizeChangedTime:J

.field private mLastBlocks:J

.field private mLastFileSize:J

.field private mMaxBytes:J

.field private mRecordingFile:Ljava/io/File;

.field private mSDCardDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 96
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/io/File;

    .line 97
    return-void
.end method


# virtual methods
.method public currentLowerLimit()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    return v0
.end method

.method public diskSpaceAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 186
    new-instance v0, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "fs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    if-le v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 118
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 119
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 120
    return-void
.end method

.method public setBitRate(I)V
    .locals 1
    .param p1, "bitRate"    # I

    .prologue
    .line 197
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    .line 198
    return-void
.end method

.method public setFileSizeLimit(Ljava/io/File;J)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "maxBytes"    # J

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 110
    iput-wide p2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    .line 111
    return-void
.end method

.method public timeRemaining()J
    .locals 19

    .prologue
    .line 128
    new-instance v8, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 129
    .local v8, "fs":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v4, v15

    .line 130
    .local v4, "blocks":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v2, v15

    .line 131
    .local v2, "blockSize":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 133
    .local v9, "now":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    cmp-long v15, v4, v15

    if-eqz v15, :cond_1

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 135
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    .line 144
    :cond_1
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    mul-long/2addr v15, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    div-long v11, v15, v17

    .line 146
    .local v11, "result":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    sub-long v15, v9, v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    sub-long/2addr v11, v15

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    if-nez v15, :cond_2

    .line 149
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 170
    .end local v11    # "result":J
    :goto_0
    return-wide v11

    .line 156
    .restart local v11    # "result":J
    :cond_2
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 157
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 158
    .local v6, "fileSize":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    cmp-long v15, v6, v15

    if-eqz v15, :cond_4

    .line 159
    :cond_3
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 160
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    .line 163
    :cond_4
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    sub-long/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    div-long v13, v15, v17

    .line 164
    .local v13, "result2":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    sub-long v15, v9, v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    sub-long/2addr v13, v15

    .line 165
    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    .line 167
    cmp-long v15, v11, v13

    if-gez v15, :cond_5

    const/4 v15, 0x2

    :goto_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 170
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_0

    .line 167
    :cond_5
    const/4 v15, 0x1

    goto :goto_1
.end method
