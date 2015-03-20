.class public Lcom/motorola/blur/setup/ConnectionFailed;
.super Lcom/motorola/blur/setup/ConnectionSetupActivity;
.source "ConnectionFailed.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;
    }
.end annotation


# static fields
.field static final CONNECTION_ACTION_MSG:I = 0x1

.field private static final RADIO_GROUP_STATE:Ljava/lang/String; = "radio_state"

.field private static final TAG:Ljava/lang/String; = "SetupCF"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mRadios:Landroid/widget/RadioGroup;

.field mReceiver:Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mReceiver:Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;

    .line 162
    new-instance v0, Lcom/motorola/blur/setup/ConnectionFailed$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ConnectionFailed$1;-><init>(Lcom/motorola/blur/setup/ConnectionFailed;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private continueToNext()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mRadios:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 102
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 106
    :goto_0
    return-void

    .line 79
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3f

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->registerReceiver()V

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 86
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isSetupHomeDisabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 94
    :cond_0
    const-string v1, "is_initial_setup_flow"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_initial_setup_flow"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f0c002d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected goBack()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 112
    return-void
.end method

.method public isWifiOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 179
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 182
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 180
    goto :goto_0

    :cond_1
    move v2, v3

    .line 182
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 117
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_0

    .line 118
    if-ne p2, v1, :cond_0

    .line 119
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 120
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 123
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->goBack()V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->continueToNext()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 35
    const v1, 0x7f0c002c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mRadios:Landroid/widget/RadioGroup;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mRadios:Landroid/widget/RadioGroup;

    const-string v2, "radio_state"

    const v3, 0x7f0c002d

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isEmaraFlow(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    const/high16 v1, 0x7f0c0000

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "backButton":Landroid/widget/Button;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .end local v0    # "backButton":Landroid/widget/Button;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->unregisterReceiver()V

    .line 51
    invoke-super {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onDestroy()V

    .line 52
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    const-string v0, "radio_state"

    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mRadios:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method protected registerReceiver()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mReceiver:Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;

    if-nez v1, :cond_0

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;-><init>(Lcom/motorola/blur/setup/ConnectionFailed;Lcom/motorola/blur/setup/ConnectionFailed$1;)V

    iput-object v1, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mReceiver:Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;

    .line 136
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mReceiver:Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected unregisterReceiver()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mReceiver:Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mReceiver:Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed;->mReceiver:Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;

    .line 145
    :cond_0
    return-void
.end method
