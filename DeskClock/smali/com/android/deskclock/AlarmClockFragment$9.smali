.class Lcom/android/deskclock/AlarmClockFragment$9;
.super Landroid/os/AsyncTask;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/deskclock/provider/AlarmInstance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;

.field final synthetic val$alarm:Lcom/android/deskclock/provider/Alarm;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$popToast:Z


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;Z)V
    .locals 0

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$9;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iput-boolean p4, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$popToast:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 4
    .param p1, "parameters"    # [Ljava/lang/Void;

    .prologue
    .line 1786
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1789
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v2, v2, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v1, v2, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteAllInstances(Landroid/content/Context;J)V

    .line 1792
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-static {v0, v1}, Lcom/android/deskclock/provider/Alarm;->updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z

    .line 1793
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-boolean v1, v1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz v1, :cond_0

    .line 1794
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->setupAlarmInstance(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;
    invoke-static {v1, v2}, Lcom/android/deskclock/AlarmClockFragment;->access$4600(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v1

    .line 1797
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1783
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClockFragment$9;->doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$popToast:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$9;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 1805
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1783
    check-cast p1, Lcom/android/deskclock/provider/AlarmInstance;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClockFragment$9;->onPostExecute(Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void
.end method
