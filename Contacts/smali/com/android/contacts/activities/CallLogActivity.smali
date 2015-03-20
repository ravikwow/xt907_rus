.class public Lcom/android/contacts/activities/CallLogActivity;
.super Landroid/app/Activity;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/CallLogActivity$ViewVisibilityListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private mFragment:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/activities/CallLogActivity;->DBG:Z

    .line 45
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/activities/CallLogActivity;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method getFragment()Lcom/android/contacts/calllog/CallLogFragment;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/activities/CallLogActivity;->mFragment:Lcom/android/contacts/calllog/CallLogFragment;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xa

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070043

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/CallLogFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/CallLogActivity;->mFragment:Lcom/android/contacts/calllog/CallLogFragment;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 87
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 88
    .local v0, "callPressDiff":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 90
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v3

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_0

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 108
    :pswitch_0
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 110
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    .end local v0    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/activities/CallLogActivity;->mFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogFragment;->callSelectedEntry()V

    .line 119
    const/4 v1, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/android/contacts/activities/CallLogActivity;->mFragment:Lcom/android/contacts/calllog/CallLogFragment;

    instance-of v0, v0, Lcom/android/contacts/activities/CallLogActivity$ViewVisibilityListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/contacts/activities/CallLogActivity;->mFragment:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/CallLogActivity$ViewVisibilityListener;->onVisibilityChanged(Z)V

    .line 138
    sget-boolean v0, Lcom/android/contacts/activities/CallLogActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallLogActivity"

    const-string v1, "onPause, onVisibilityChanged to false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/activities/CallLogActivity;->mFragment:Lcom/android/contacts/calllog/CallLogFragment;

    instance-of v0, v0, Lcom/android/contacts/activities/CallLogActivity$ViewVisibilityListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/contacts/activities/CallLogActivity;->mFragment:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/CallLogActivity$ViewVisibilityListener;->onVisibilityChanged(Z)V

    .line 129
    sget-boolean v0, Lcom/android/contacts/activities/CallLogActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallLogActivity"

    const-string v1, "onResume, onVisibilityChanged to true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method
