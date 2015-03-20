.class public Lcom/android/soundrecorder/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/Recorder$OnStateChangedListener;
    }
.end annotation


# instance fields
.field public mChannels:I

.field mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

.field mPlayer:Landroid/media/MediaPlayer;

.field mRecorder:Landroid/media/MediaRecorder;

.field mSampleFile:Ljava/io/File;

.field mSampleLength:I

.field mSampleStart:J

.field public mSamplingRate:I

.field mState:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v2, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 51
    iput v2, p0, Lcom/android/soundrecorder/Recorder;->mChannels:I

    .line 52
    iput v2, p0, Lcom/android/soundrecorder/Recorder;->mSamplingRate:I

    .line 58
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 61
    iput v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 62
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 64
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 65
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 68
    return-void
.end method

.method private setError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onError(I)V

    .line 318
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 303
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iput p1, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 307
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onStateChanged(I)V

    .line 313
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 155
    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 157
    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 158
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 139
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 143
    iput v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 145
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 146
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 300
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 294
    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 295
    return v0
.end method

.method public progress()I
    .locals 4

    .prologue
    .line 120
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "recorderState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 82
    const-string v3, "sample_path"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "samplePath":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v3, "sample_length"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "sampleLength":I
    if-eq v1, v4, :cond_0

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->delete()V

    .line 97
    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 98
    iput v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 100
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "recorderState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const-string v0, "sample_path"

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "sample_length"

    iget v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public setChannels(I)V
    .locals 0
    .param p1, "nChannelsCount"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/soundrecorder/Recorder;->mChannels:I

    .line 109
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/soundrecorder/Recorder$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    .line 105
    return-void
.end method

.method public setSamplingRate(I)V
    .locals 0
    .param p1, "samplingRate"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/android/soundrecorder/Recorder;->mSamplingRate:I

    .line 113
    return-void
.end method

.method public startPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 254
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 256
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 260
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 261
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 262
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 274
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 275
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 265
    iput-object v4, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 269
    iput-object v4, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public startRecording(ILjava/lang/String;Landroid/content/Context;II)V
    .locals 8
    .param p1, "outputfileformat"    # I
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "audiosourcetype"    # I
    .param p5, "codectype"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 163
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-nez v5, :cond_1

    .line 164
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 165
    .local v4, "sampleDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    new-instance v4, Ljava/io/File;

    .end local v4    # "sampleDir":Ljava/io/File;
    const-string v5, "/sdcard/sdcard"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v4    # "sampleDir":Ljava/io/File;
    :cond_0
    :try_start_0
    const-string v5, "recording"

    invoke-static {v5, p2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v4    # "sampleDir":Ljava/io/File;
    :cond_1
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 177
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, p4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 179
    iget v5, p0, Lcom/android/soundrecorder/Recorder;->mChannels:I

    if-lez v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v6, p0, Lcom/android/soundrecorder/Recorder;->mChannels:I

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 182
    :cond_2
    iget v5, p0, Lcom/android/soundrecorder/Recorder;->mSamplingRate:I

    if-lez v5, :cond_3

    .line 183
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v6, p0, Lcom/android/soundrecorder/Recorder;->mSamplingRate:I

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 186
    :cond_3
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 189
    :try_start_1
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, p5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 206
    :try_start_2
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    const-string v5, "Recorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audiosourcetype "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_3
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 237
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 238
    :goto_0
    return-void

    .line 170
    .restart local v4    # "sampleDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    goto :goto_0

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "sampleDir":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 191
    .local v2, "exception":Ljava/lang/RuntimeException;
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 192
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->reset()V

    .line 193
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V

    .line 194
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v5, :cond_4

    .line 195
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 196
    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 197
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 198
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 207
    .end local v2    # "exception":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 208
    .local v2, "exception":Ljava/io/IOException;
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 209
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->reset()V

    .line 210
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V

    .line 211
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v5, :cond_5

    .line 212
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 213
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 214
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 215
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 222
    .end local v2    # "exception":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 223
    .local v2, "exception":Ljava/lang/RuntimeException;
    const-string v5, "audio"

    invoke-virtual {p3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 224
    .local v0, "audioMngr":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    :cond_6
    const/4 v3, 0x1

    .line 226
    .local v3, "isInCall":Z
    :goto_1
    if-eqz v3, :cond_8

    .line 227
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 231
    :goto_2
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->reset()V

    .line 232
    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V

    .line 233
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 224
    .end local v3    # "isInCall":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 229
    .restart local v3    # "isInCall":Z
    :cond_8
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    goto :goto_2
.end method

.method public state()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stopRecording()V

    .line 289
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stopPlayback()V

    .line 290
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 282
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 245
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 246
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_0
.end method
