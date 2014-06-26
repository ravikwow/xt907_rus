.class public Lcom/android/deskclock/alarms/AlarmKlaxon;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"


# static fields
.field private static sMediaPlayer:Landroid/media/MediaPlayer;

.field private static sStarted:Z

.field private static final sVibratePattern:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/deskclock/alarms/AlarmKlaxon;->sVibratePattern:[J

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/deskclock/alarms/AlarmKlaxon;->sStarted:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    return-void

    .line 38
    nop

    :array_0
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setDataSourceFromResource(Landroid/content/Context;Landroid/media/MediaPlayer;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 145
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 146
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 147
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 149
    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;
    .param p2, "inTelephoneCall"    # Z

    .prologue
    .line 67
    const-string v4, "AlarmKlaxon.start()"

    invoke-static {v4}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 69
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->stop(Landroid/content/Context;)V

    .line 71
    sget-object v4, Lcom/android/deskclock/provider/AlarmInstance;->NO_RINGTONE_URI:Landroid/net/Uri;

    iget-object v5, p1, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    .line 75
    .local v0, "alarmNoise":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 76
    const/4 v4, 0x4

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 83
    :cond_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    .line 84
    sget-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/deskclock/alarms/AlarmKlaxon$1;

    invoke-direct {v5, p0}, Lcom/android/deskclock/alarms/AlarmKlaxon$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 96
    if-eqz p2, :cond_3

    .line 97
    :try_start_0
    const-string v4, "Using the in-call alarm"

    invoke-static {v4}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 98
    sget-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v5, 0x3e000000

    const/high16 v6, 0x3e000000

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 99
    sget-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    const v5, 0x7f070001

    invoke-static {p0, v4, v5}, Lcom/android/deskclock/alarms/AlarmKlaxon;->setDataSourceFromResource(Landroid/content/Context;Landroid/media/MediaPlayer;I)V

    .line 103
    :goto_0
    sget-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {p0, v4}, Lcom/android/deskclock/alarms/AlarmKlaxon;->startAlarm(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "alarmNoise":Landroid/net/Uri;
    :cond_1
    :goto_1
    iget-boolean v4, p1, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    if-eqz v4, :cond_2

    .line 121
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 122
    .local v3, "vibrator":Landroid/os/Vibrator;
    sget-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sVibratePattern:[J

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 125
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sStarted:Z

    .line 126
    return-void

    .line 101
    .restart local v0    # "alarmNoise":Landroid/net/Uri;
    :cond_3
    :try_start_1
    sget-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Using the fallback ringtone"

    invoke-static {v4}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 110
    :try_start_2
    sget-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 111
    sget-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v5, 0x7f070000

    invoke-static {p0, v4, v5}, Lcom/android/deskclock/alarms/AlarmKlaxon;->setDataSourceFromResource(Landroid/content/Context;Landroid/media/MediaPlayer;I)V

    .line 112
    sget-object v4, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {p0, v4}, Lcom/android/deskclock/alarms/AlarmKlaxon;->startAlarm(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 113
    :catch_1
    move-exception v2

    .line 115
    .local v2, "ex2":Ljava/lang/Exception;
    const-string v4, "Failed to play fallback ringtone"

    invoke-static {v4, v2}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static startAlarm(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 130
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 132
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 134
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 135
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 136
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 138
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 140
    :cond_0
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 47
    const-string v1, "AlarmKlaxon.stop()"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 49
    sget-boolean v1, Lcom/android/deskclock/alarms/AlarmKlaxon;->sStarted:Z

    if-eqz v1, :cond_1

    .line 50
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/deskclock/alarms/AlarmKlaxon;->sStarted:Z

    .line 52
    sget-object v1, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 54
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 56
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 57
    sget-object v1, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 58
    sput-object v2, Lcom/android/deskclock/alarms/AlarmKlaxon;->sMediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 63
    :cond_1
    return-void
.end method
