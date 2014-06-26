.class Lcom/android/deskclock/alarms/AlarmActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$1;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmActivity - Broadcast Receiver - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 123
    const-string v1, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity$1;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    # invokes: Lcom/android/deskclock/alarms/AlarmActivity;->snooze()V
    invoke-static {v1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$200(Lcom/android/deskclock/alarms/AlarmActivity;)V

    .line 132
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v1, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity$1;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    # invokes: Lcom/android/deskclock/alarms/AlarmActivity;->dismiss()V
    invoke-static {v1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$300(Lcom/android/deskclock/alarms/AlarmActivity;)V

    goto :goto_0

    .line 127
    :cond_1
    const-string v1, "com.android.deskclock.ALARM_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity$1;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 130
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown broadcast in AlarmActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
