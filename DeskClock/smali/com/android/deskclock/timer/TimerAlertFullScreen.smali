.class public Lcom/android/deskclock/timer/TimerAlertFullScreen;
.super Landroid/app/Activity;
.source "TimerAlertFullScreen.java"

# interfaces
.implements Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getFragment()Lcom/android/deskclock/timer/TimerFragment;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerFragment;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 95
    .local v0, "up":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .line 94
    .end local v0    # "up":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    .restart local v0    # "up":Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->stopAllTimesUpTimers()V

    goto :goto_1

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    const v1, 0x7f0e0081

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    .local v0, "viewContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0e0081

    const/4 v5, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v4, 0x7f040029

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 47
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 51
    .local v3, "win":Landroid/view/Window;
    const/high16 v4, 0x480000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 55
    const v4, 0x200081

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 60
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->getFragment()Lcom/android/deskclock/timer/TimerFragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 61
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {v1}, Lcom/android/deskclock/timer/TimerFragment;-><init>()V

    .line 65
    .local v1, "timerFragment":Lcom/android/deskclock/timer/TimerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "times_up"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string v5, "timer"

    invoke-virtual {v4, v6, v1, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 74
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "timerFragment":Lcom/android/deskclock/timer/TimerFragment;
    :cond_0
    return-void
.end method

.method public onEmptyList()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "TimerAlertFullScreen"

    const-string v1, "onEmptyList"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->onListChanged()V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 152
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0}, Lcom/android/deskclock/Utils;->showInUseNotifications(Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->getFragment()Lcom/android/deskclock/timer/TimerFragment;

    move-result-object v0

    .line 120
    .local v0, "timerFragment":Lcom/android/deskclock/timer/TimerFragment;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment;->restartAdapter()V

    .line 123
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/deskclock/Utils;->showTimesUpNotifications(Landroid/content/Context;)V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    invoke-static {p0}, Lcom/android/deskclock/Utils;->cancelTimesUpNotifications(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 136
    return-void
.end method

.method protected stopAllTimesUpTimers()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerAlertFullScreen;->getFragment()Lcom/android/deskclock/timer/TimerFragment;

    move-result-object v0

    .line 140
    .local v0, "timerFragment":Lcom/android/deskclock/timer/TimerFragment;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment;->stopAllTimesUpTimers()V

    .line 143
    :cond_0
    return-void
.end method
