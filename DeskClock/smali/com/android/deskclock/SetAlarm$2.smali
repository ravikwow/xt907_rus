.class Lcom/android/deskclock/SetAlarm$2;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    const/4 v3, 0x0

    # invokes: Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J
    invoke-static {v2, v3}, Lcom/android/deskclock/SetAlarm;->access$100(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 142
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    # getter for: Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/deskclock/SetAlarm;->access$200(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v2, v0, v1}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 146
    return-void
.end method
