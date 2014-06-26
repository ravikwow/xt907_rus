.class Lcom/android/deskclock/AlarmInitReceiver$1;
.super Ljava/lang/Object;
.source "AlarmInitReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmInitReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmInitReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmInitReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->this$0:Lcom/android/deskclock/AlarmInitReceiver;

    iput-object p2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p5, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    iget-object v2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$action:Ljava/lang/String;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "AlarmInitReceiver - Reset timers and clear stopwatch data"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerObj;->resetTimersInSharedPrefs(Landroid/content/SharedPreferences;)V

    .line 63
    invoke-static {v0}, Lcom/android/deskclock/Utils;->clearSwSharedPref(Landroid/content/SharedPreferences;)V

    .line 66
    const-string v2, "volume_button_setting"

    const-string v3, "null"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "volume_button":Ljava/lang/String;
    const-string v2, "vol_def_done"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "AlarmInitReceiver - resetting volume button default"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->this$0:Lcom/android/deskclock/AlarmInitReceiver;

    # invokes: Lcom/android/deskclock/AlarmInitReceiver;->switchVolumeButtonDefault(Landroid/content/SharedPreferences;)V
    invoke-static {v2, v0}, Lcom/android/deskclock/AlarmInitReceiver;->access$000(Lcom/android/deskclock/AlarmInitReceiver;Landroid/content/SharedPreferences;)V

    .line 76
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "volume_button":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->fixAlarmInstances(Landroid/content/Context;)V

    .line 78
    iget-object v2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 79
    const-string v2, "AlarmInitReceiver finished"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 81
    return-void
.end method
