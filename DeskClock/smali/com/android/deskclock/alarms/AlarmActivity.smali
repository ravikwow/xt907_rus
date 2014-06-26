.class public Lcom/android/deskclock/alarms/AlarmActivity;
.super Landroid/app/Activity;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;
    }
.end annotation


# instance fields
.field private glowPadController:Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;

.field private mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

.field private mInstance:Lcom/android/deskclock/provider/AlarmInstance;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeBehavior:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 117
    new-instance v0, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;-><init>(Lcom/android/deskclock/alarms/AlarmActivity;Lcom/android/deskclock/alarms/AlarmActivity$1;)V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->glowPadController:Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;

    .line 118
    new-instance v0, Lcom/android/deskclock/alarms/AlarmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/AlarmActivity$1;-><init>(Lcom/android/deskclock/alarms/AlarmActivity;)V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/alarms/AlarmActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/alarms/AlarmActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->ping()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/alarms/AlarmActivity;)Lcom/android/deskclock/widget/multiwaveview/GlowPadView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/alarms/AlarmActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/alarms/AlarmActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/alarms/AlarmActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->snooze()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/alarms/AlarmActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/alarms/AlarmActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInstance:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-static {p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 141
    return-void
.end method

.method private ping()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->ping()V

    .line 215
    return-void
.end method

.method private snooze()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInstance:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-static {p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSnoozeState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 137
    return-void
.end method

.method private updateLayout()V
    .locals 5

    .prologue
    .line 199
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 200
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 202
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 203
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->updateTitle()V

    .line 204
    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    check-cast v2, Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/deskclock/Utils;->setTimeFormat(Landroid/widget/TextClock;I)V

    .line 208
    const v2, 0x7f0e0009

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    iput-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    .line 209
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmActivity;->glowPadController:Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;

    invoke-virtual {v2, v3}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 210
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->glowPadController:Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;

    invoke-virtual {v2}, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->startPinger()V

    .line 211
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInstance:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-virtual {v2, p0}, Lcom/android/deskclock/provider/AlarmInstance;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "titleText":Ljava/lang/String;
    const v2, 0x7f0e0007

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-super {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmActivity - dispatchKeyEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 258
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 259
    iget v1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mVolumeBehavior:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 261
    :pswitch_0
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->snooze()V

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->dismiss()V

    goto :goto_0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->updateLayout()V

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 148
    .local v1, "instanceId":J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInstance:Lcom/android/deskclock/provider/AlarmInstance;

    .line 149
    iget-object v5, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInstance:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz v5, :cond_1

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Displaying alarm for instance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInstance:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "volume_button_setting"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "vol":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mVolumeBehavior:I

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 166
    .local v4, "win":Landroid/view/Window;
    const v5, 0x680081

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 178
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->updateLayout()V

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "com.android.deskclock.ALARM_DONE"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v5, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v5, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "vol":Ljava/lang/String;
    .end local v4    # "win":Landroid/view/Window;
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error displaying alarm for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->glowPadController:Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;

    invoke-virtual {v0}, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->stopPinger()V

    .line 233
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->glowPadController:Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;

    invoke-virtual {v0}, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->startPinger()V

    .line 227
    return-void
.end method
