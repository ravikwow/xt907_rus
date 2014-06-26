.class public Lcom/android/deskclock/AlarmInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmInitReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmInitReceiver;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmInitReceiver;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmInitReceiver;->switchVolumeButtonDefault(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private switchVolumeButtonDefault(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 86
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "volume_button_setting"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v1, "vol_def_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "action":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmInitReceiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    .line 48
    .local v4, "result":Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 49
    .local v5, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 53
    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateGloablIntentId(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/android/deskclock/AlarmInitReceiver$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/AlarmInitReceiver$1;-><init>(Lcom/android/deskclock/AlarmInitReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {v0}, Lcom/android/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
