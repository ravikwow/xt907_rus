.class public Lcom/android/deskclock/Screensaver;
.super Landroid/service/dreams/DreamService;
.source "Screensaver.java"


# instance fields
.field private mAnalogClock:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatForAccessibility:Ljava/lang/String;

.field private mDigitalClock:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mMidnightUpdater:Ljava/lang/Runnable;

.field private final mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

.field private mSaverView:Landroid/view/View;

.field private final mSettingsContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/deskclock/Screensaver$1;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/Screensaver$1;-><init>(Lcom/android/deskclock/Screensaver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 56
    new-instance v0, Lcom/android/deskclock/Screensaver$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/Screensaver$2;-><init>(Lcom/android/deskclock/Screensaver;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mMidnightUpdater:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/android/deskclock/Screensaver$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/Screensaver$3;-><init>(Lcom/android/deskclock/Screensaver;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/Screensaver;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/Screensaver;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/Screensaver;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/Screensaver;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mDateFormatForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/Screensaver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/Screensaver;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/Screensaver;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/Screensaver;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mMidnightUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private layoutClockSaver()V
    .locals 3

    .prologue
    .line 153
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setContentView(I)V

    .line 154
    const v0, 0x7f0e0017

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mDigitalClock:Landroid/view/View;

    .line 155
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mAnalogClock:Landroid/view/View;

    .line 156
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->setClockStyle()V

    .line 157
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mDigitalClock:Landroid/view/View;

    check-cast v0, Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->setTimeFormat(Landroid/widget/TextClock;I)V

    .line 160
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 163
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->registerViews(Landroid/view/View;Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mDateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mDateFormatForAccessibility:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 167
    return-void
.end method

.method private setClockStyle()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mDigitalClock:Landroid/view/View;

    iget-object v3, p0, Lcom/android/deskclock/Screensaver;->mAnalogClock:Landroid/view/View;

    const-string v4, "screensaver_clock_style"

    invoke-static {p0, v2, v3, v4}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 145
    const v2, 0x7f0e003f

    invoke-virtual {p0, v2}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    .line 146
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "screensaver_night_mode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    .local v0, "dimNightMode":Z
    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mSaverView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/deskclock/Utils;->dimClockView(ZLandroid/view/View;)V

    .line 149
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setScreenBright(Z)V

    .line 150
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 109
    invoke-virtual {p0, v4}, Landroid/service/dreams/DreamService;->setInteractive(Z)V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setFullscreen(Z)V

    .line 113
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->layoutClockSaver()V

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/android/deskclock/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 122
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/Screensaver;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    invoke-direct {p0}, Lcom/android/deskclock/Screensaver;->layoutClockSaver()V

    .line 100
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 90
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mDateFormat:Ljava/lang/String;

    .line 91
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/Screensaver;->mDateFormatForAccessibility:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    .line 134
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/Screensaver;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->cancelMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 139
    iget-object v0, p0, Lcom/android/deskclock/Screensaver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    return-void
.end method
