.class public Lcom/android/phone/MotoRinger;
.super Ljava/lang/Object;
.source "MotoRinger.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/phone/MotoRinger;


# instance fields
.field private mCallerIdReadoutObserver:Landroid/database/ContentObserver;

.field private mCallerIdReadoutStatus:I

.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPowerManager:Landroid/os/IPowerManager;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/MotoRinger;->DBG:Z

    .line 49
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/MotoRinger;->VDBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/phone/MotoRinger$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MotoRinger$1;-><init>(Lcom/android/phone/MotoRinger;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutObserver:Landroid/database/ContentObserver;

    .line 89
    new-instance v0, Lcom/android/phone/MotoRinger$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MotoRinger$2;-><init>(Lcom/android/phone/MotoRinger;)V

    iput-object v0, p0, Lcom/android/phone/MotoRinger;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 147
    iput-object p1, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {p1}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    .line 149
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MotoRinger;->mPowerManager:Landroid/os/IPowerManager;

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/MotoRinger;->initOrShutdownTextToSpeechEngine()V

    .line 155
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_caller_id_readout"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 160
    new-instance v0, Lcom/android/phone/MotoRinger$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MotoRinger$3;-><init>(Lcom/android/phone/MotoRinger;)V

    iput-object v0, p0, Lcom/android/phone/MotoRinger;->mHandler:Landroid/os/Handler;

    .line 190
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/phone/MotoRinger;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/MotoRinger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MotoRinger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MotoRinger;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MotoRinger;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/MotoRinger;->eriCompleteUpdate(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MotoRinger;)Lcom/android/phone/Ringer;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MotoRinger;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MotoRinger;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MotoRinger;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/MotoRinger;->playIncEriTone()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MotoRinger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MotoRinger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/MotoRinger;->onCallerIdReadout(Ljava/lang/String;)V

    return-void
.end method

.method private eriCompleteUpdate(I)V
    .locals 3
    .param p1, "streamtype"    # I

    .prologue
    const/4 v2, 0x2

    .line 387
    if-nez p1, :cond_1

    .line 388
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->eriCompleteUpdateForMOCall()V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 392
    iget v0, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutStatus:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 393
    const-string v0, "MotoRinger"

    const-string v1, "CallNotifier: ERI playback complete, start Caller ID Repeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v0, "Caller id repeat"

    invoke-direct {p0, v0}, Lcom/android/phone/MotoRinger;->onCallerIdReadoutDelay(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_2
    const-string v0, "MotoRinger"

    const-string v1, "CallNotifier: ERI playback complete, Ring only or Caller ID play once. Start Ringer !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0}, Lcom/android/phone/MotoRinger;->startRingerTimer()V

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/MotoRinger;
    .locals 4

    .prologue
    .line 135
    const-class v1, Lcom/android/phone/MotoRinger;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Lcom/android/phone/MotoRinger;->sInstance:Lcom/android/phone/MotoRinger;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/phone/MotoRinger;

    invoke-direct {v0, p0}, Lcom/android/phone/MotoRinger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/MotoRinger;->sInstance:Lcom/android/phone/MotoRinger;

    .line 141
    :goto_0
    sget-object v0, Lcom/android/phone/MotoRinger;->sInstance:Lcom/android/phone/MotoRinger;

    monitor-exit v1

    return-object v0

    .line 139
    :cond_0
    const-string v0, "MotoRinger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MotoRinger;->sInstance:Lcom/android/phone/MotoRinger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 477
    const-string v0, "MotoRinger"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method private onCallerIdReadout(Ljava/lang/String;)V
    .locals 8
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 431
    iget-object v4, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 434
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    iget-object v4, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->startVibrator()V

    .line 438
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 440
    :cond_1
    const-string v4, "MotoRinger"

    const-string v5, "skipping readout because volume is zero"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void

    .line 444
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 445
    invoke-virtual {p0}, Lcom/android/phone/MotoRinger;->getTTSCallerName()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "ttsCallerName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    const v5, 0x7f0c03fc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "readTxt":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 450
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    :goto_1
    iget-object v4, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v4, :cond_4

    .line 459
    const-string v4, "MotoRinger"

    const-string v5, "TTS engine is down"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v4, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 452
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00e9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 464
    :cond_4
    iget-object v4, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 466
    iget-object v4, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 468
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v1, "myHashAlarm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "streamType"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v4, "utteranceId"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v4, "MotoRinger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallerIdReadout readTxt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v4, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v2, v7, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0
.end method

.method private onCallerIdReadoutDelay(Ljava/lang/String;)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 349
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 351
    const-string v1, "MotoRinger"

    const-string v2, "send CALLER_ID_READ_REPEAT_DELAY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method private playIncEriTone()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 356
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 357
    .local v1, "phoneApp":Lcom/android/phone/PhoneApp;
    iget-object v3, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 358
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isRingerModeSilent()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 360
    .local v2, "ring_mute":Z
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 362
    sget-boolean v3, Lcom/android/phone/MotoRinger;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "Play Incoming ERI"

    invoke-direct {p0, v3}, Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V

    .line 364
    :cond_1
    iget-object v3, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 365
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v3

    iget-object v4, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getCdmaEriAlertUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/EriAudio;->play(Landroid/net/Uri;I)V

    .line 367
    :try_start_0
    const-string v3, "setAttentionLight, ON"

    invoke-direct {p0, v3}, Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcom/android/phone/MotoRinger;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-interface {v3, v4, v5}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_1
    return-void

    .line 358
    .end local v2    # "ring_mute":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 373
    .restart local v2    # "ring_mute":Z
    :cond_3
    iget-object v3, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_1

    .line 369
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private startRingerTimer()V
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 382
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 383
    return-void
.end method


# virtual methods
.method getTTSCallerName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 217
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-object v2

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2, v0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 222
    .local v1, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->stripSeparatorIfNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 225
    :cond_1
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method initCallerIdStatus()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_caller_id_readout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutStatus:I

    .line 198
    return-void
.end method

.method protected initOrShutdownTextToSpeechEngine()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_caller_id_readout"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutStatus:I

    .line 110
    iget v1, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutStatus:I

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 115
    const-string v1, "MotoRinger"

    const-string v2, "shutdown TTS engine..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MotoRinger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_0

    .line 123
    const-string v1, "MotoRinger"

    const-string v2, "Creating TTS engine..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/MotoRinger;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    goto :goto_0
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EriAudio;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 409
    .local v0, "state":Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getSilentRingerRequested()Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    const-string v1, "Caller id then ring"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    const-string v1, "MotoRinger"

    const-string v2, "end of caller id then ring!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/android/phone/MotoRinger;->playIncEriTone()V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 418
    :cond_2
    const-string v1, "Caller id repeat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const-string v1, "MotoRinger"

    const-string v2, "end of caller id repeat!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    invoke-direct {p0}, Lcom/android/phone/MotoRinger;->playIncEriTone()V

    goto :goto_0

    .line 424
    :cond_3
    const-string v1, "Caller id repeat"

    invoke-direct {p0, v1}, Lcom/android/phone/MotoRinger;->onCallerIdReadoutDelay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method playRingtoneOnly()V
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 344
    :cond_2
    return-void
.end method

.method ring()V
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "MotoRinger"

    const-string v1, "Caller ID then ring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v0, "Caller id then ring"

    invoke-direct {p0, v0}, Lcom/android/phone/MotoRinger;->onCallerIdReadoutDelay(Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 235
    :cond_0
    iget v0, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "MotoRinger"

    const-string v1, "Caller ID Repeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "Caller id repeat"

    invoke-direct {p0, v0}, Lcom/android/phone/MotoRinger;->onCallerIdReadoutDelay(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    const-string v0, "MotoRinger"

    const-string v1, "Ring only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/android/phone/MotoRinger;->playIncEriTone()V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0, p1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 307
    return-void
.end method

.method stopIncEriTone()V
    .locals 4

    .prologue
    .line 279
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v0

    .line 280
    .local v0, "eriAudio":Lcom/android/phone/EriAudio;
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :try_start_0
    const-string v1, "setAttentionLight, OFF"

    invoke-direct {p0, v1}, Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const v3, 0xffffff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/EriAudio;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/EriAudio;->getStreamType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/android/phone/EriAudio;->stop()V

    .line 294
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MotoRinger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    :cond_1
    return-void

    .line 285
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method stopRing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 254
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    sget-boolean v0, Lcom/android/phone/MotoRinger;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "call state not ringing, destroy CALLER_ID_READ_REPEAT_DELAY"

    invoke-direct {p0, v0}, Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V

    .line 261
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 262
    sget-boolean v0, Lcom/android/phone/MotoRinger;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "stopIncEriTone()... "

    invoke-direct {p0, v0}, Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MotoRinger;->stopIncEriTone()V

    .line 268
    :cond_2
    iget v0, p0, Lcom/android/phone/MotoRinger;->mCallerIdReadoutStatus:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 276
    return-void
.end method
