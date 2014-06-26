.class public Lcom/android/deskclock/ScreensaverActivity;
.super Landroid/app/Activity;
.source "ScreensaverActivity.java"


# instance fields
.field private mAnalogClock:Landroid/view/View;

.field private mClockStyle:Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatForAccessibility:Ljava/lang/String;

.field private mDigitalClock:Landroid/view/View;

.field private final mFlags:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mMidnightUpdater:Ljava/lang/Runnable;

.field private final mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

.field private mPluggedIn:Z

.field private mSaverView:Landroid/view/View;

.field private final mSettingsContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z

    .line 54
    const v0, 0x480081

    iput v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mFlags:I

    .line 59
    new-instance v0, Lcom/android/deskclock/ScreensaverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ScreensaverActivity$1;-><init>(Lcom/android/deskclock/ScreensaverActivity;)V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/android/deskclock/ScreensaverActivity$2;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/ScreensaverActivity$2;-><init>(Lcom/android/deskclock/ScreensaverActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 91
    new-instance v0, Lcom/android/deskclock/ScreensaverActivity$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ScreensaverActivity$3;-><init>(Lcom/android/deskclock/ScreensaverActivity;)V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mMidnightUpdater:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/android/deskclock/ScreensaverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/ScreensaverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/deskclock/ScreensaverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/ScreensaverActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->setWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ScreensaverActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ScreensaverActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ScreensaverActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/ScreensaverActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ScreensaverActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/ScreensaverActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mMidnightUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private layoutClockSaver()V
    .locals 3

    .prologue
    .line 191
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 192
    const v0, 0x7f0e0017

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDigitalClock:Landroid/view/View;

    .line 193
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mAnalogClock:Landroid/view/View;

    .line 194
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->setClockStyle()V

    .line 195
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDigitalClock:Landroid/view/View;

    check-cast v0, Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->setTimeFormat(Landroid/widget/TextClock;I)V

    .line 198
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 200
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 201
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 203
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;->registerViews(Landroid/view/View;Landroid/view/View;)V

    .line 205
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    const/16 v1, 0x405

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mContentView:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 211
    return-void
.end method

.method private setClockStyle()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mDigitalClock:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mAnalogClock:Landroid/view/View;

    const-string v2, "clock_style"

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 184
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mDigitalClock:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const-string v0, "digital"

    :goto_0
    iput-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mClockStyle:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mSaverView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->dimClockView(ZLandroid/view/View;)V

    .line 188
    return-void

    .line 185
    :cond_0
    const-string v0, "analog"

    goto :goto_0
.end method

.method private setWakeLock()V
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 172
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 173
    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 174
    iget-boolean v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z

    if-eqz v2, :cond_0

    .line 175
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x480081

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 178
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 179
    return-void

    .line 177
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x480082

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->layoutClockSaver()V

    .line 161
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->cancelMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "chargingIntent":Landroid/content/Intent;
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, "plugged":I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mPluggedIn:Z

    .line 130
    const/high16 v2, 0x7f0d0000

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormat:Ljava/lang/String;

    .line 131
    const v2, 0x7f0d0001

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mDateFormatForAccessibility:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->setWakeLock()V

    .line 134
    invoke-direct {p0}, Lcom/android/deskclock/ScreensaverActivity;->layoutClockSaver()V

    .line 135
    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/deskclock/ScreensaverActivity;->mMoveSaverRunnable:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    iget-object v2, p0, Lcom/android/deskclock/ScreensaverActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/deskclock/ScreensaverActivity;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/android/deskclock/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 138
    return-void

    .line 126
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/deskclock/ScreensaverActivity;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 153
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 168
    return-void
.end method
