.class Lcom/android/deskclock/alarms/AlarmService$1;
.super Landroid/telephony/PhoneStateListener;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmService;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmService;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "ignored"    # Ljava/lang/String;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    # getter for: Lcom/android/deskclock/alarms/AlarmService;->mInitialCallState:I
    invoke-static {v0}, Lcom/android/deskclock/alarms/AlarmService;->access$000(Lcom/android/deskclock/alarms/AlarmService;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    const-string v2, "AlarmService"

    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    # getter for: Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;
    invoke-static {v3}, Lcom/android/deskclock/alarms/AlarmService;->access$100(Lcom/android/deskclock/alarms/AlarmService;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    :cond_0
    return-void
.end method
