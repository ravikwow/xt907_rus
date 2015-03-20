.class public Lcom/android/phone/EriAudio;
.super Ljava/lang/Object;
.source "EriAudio.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private mAudio:Landroid/media/MediaPlayer;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMsgParam:I

.field private mStreamType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/EriAudio;->mStreamType:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EriAudio;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/phone/EriAudio;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/phone/EriAudio;->mHandler:Landroid/os/Handler;

    .line 57
    iput p3, p0, Lcom/android/phone/EriAudio;->mMsgParam:I

    .line 58
    return-void
.end method

.method private cleanupMediaPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 190
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 191
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iput-object v1, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    .line 196
    :cond_0
    return-void

    .line 193
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    throw v0
.end method

.method private open(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/EriAudio;->mUri:Landroid/net/Uri;

    .line 103
    invoke-direct {p0}, Lcom/android/phone/EriAudio;->openMediaPlayer()V

    .line 104
    return-void
.end method

.method private openMediaPlayer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    .line 85
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/phone/EriAudio;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/EriAudio;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/android/phone/EriAudio;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 94
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ERI Audio data source set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/phone/EriAudio;->mStreamType:I

    .line 68
    return-void
.end method


# virtual methods
.method getStreamType()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/phone/EriAudio;->mStreamType:I

    return v0
.end method

.method isPlaying()Z
    .locals 2

    .prologue
    .line 204
    const-string v0, "EriAudio"

    const-string v1, "IsPlaying Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/phone/EriAudio;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/phone/EriAudio;->mMsgParam:I

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/phone/EriAudio;->mStreamType:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EriAudio;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    invoke-direct {p0}, Lcom/android/phone/EriAudio;->cleanupMediaPlayer()V

    .line 162
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 172
    const-string v2, "EriAudio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError--->   what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    extra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/android/phone/EriAudio;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/phone/EriAudio;->mMsgParam:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/phone/EriAudio;->mStreamType:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/EriAudio;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 178
    .local v1, "retval":Z
    invoke-direct {p0}, Lcom/android/phone/EriAudio;->cleanupMediaPlayer()V

    .line 179
    return v1
.end method

.method play(Landroid/net/Uri;I)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 116
    const-string v1, "EriAudio"

    const-string v2, "Play called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const-string v1, "EriAudio"

    const-string v2, "Eri Audio is playing, can not play, return directly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/android/phone/EriAudio;->cleanupMediaPlayer()V

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3

    .line 128
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/phone/EriAudio;->setStreamType(I)V

    .line 129
    invoke-direct {p0, p1}, Lcom/android/phone/EriAudio;->open(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "EriAudio"

    const-string v2, "play() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    iget-object v1, p0, Lcom/android/phone/EriAudio;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/EriAudio;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/phone/EriAudio;->mMsgParam:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/phone/EriAudio;->mStreamType:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    goto :goto_1
.end method

.method stop()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "EriAudio"

    const-string v1, "Stop called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/phone/EriAudio;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/phone/EriAudio;->cleanupMediaPlayer()V

    .line 150
    :cond_0
    return-void
.end method
