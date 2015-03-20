.class public Lcom/android/batteryreport/BattTempCooldownScreen;
.super Landroid/app/Activity;
.source "BattTempCooldownScreen.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mReceiverRegistered:Z

    .line 127
    new-instance v0, Lcom/android/batteryreport/BattTempCooldownScreen$2;

    invoke-direct {v0, p0}, Lcom/android/batteryreport/BattTempCooldownScreen$2;-><init>(Lcom/android/batteryreport/BattTempCooldownScreen;)V

    iput-object v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Lcom/android/batteryreport/BattTempCooldownScreen$3;

    invoke-direct {v0, p0}, Lcom/android/batteryreport/BattTempCooldownScreen$3;-><init>(Lcom/android/batteryreport/BattTempCooldownScreen;)V

    iput-object v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/batteryreport/BattTempCooldownScreen;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/batteryreport/BattTempCooldownScreen;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/batteryreport/BattTempCooldownScreen;->takeEmergencyCallAction(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/batteryreport/BattTempCooldownScreen;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/batteryreport/BattTempCooldownScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/batteryreport/BattTempCooldownScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/batteryreport/BattTempCooldownScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mReceiverRegistered:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/batteryreport/BattTempCooldownScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/batteryreport/BattTempCooldownScreen;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/batteryreport/BattTempCooldownScreen;->destroyActivity()V

    return-void
.end method

.method private destroyActivity()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 147
    return-void
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 83
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 84
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BattTempCooldownScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling ITelephony service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private takeEmergencyCallAction(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/batteryreport/BattTempCooldownScreen;->resumeCall()V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/batteryreport/BattTempCooldownScreen;->launchEmergencyDialer()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/high16 v4, 0x7f030000

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 51
    new-instance v1, Lcom/android/batteryreport/BattTempCooldownScreen$1;

    invoke-direct {v1, p0}, Lcom/android/batteryreport/BattTempCooldownScreen$1;-><init>(Lcom/android/batteryreport/BattTempCooldownScreen;)V

    .line 56
    .local v1, "emergencyClick":Landroid/view/View$OnClickListener;
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "emergencyAlone":Landroid/widget/Button;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_TEMP_NORMAL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v4, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2, v5, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 63
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mReceiverRegistered:Z

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d6

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 67
    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 69
    .local v3, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v3, :cond_0

    .line 70
    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 72
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mReceiverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mReceiverRegistered:Z

    .line 79
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 124
    iget-object v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    return-void
.end method
