.class Lcom/android/batteryreport/BattTempCooldownScreen$2;
.super Landroid/content/BroadcastReceiver;
.source "BattTempCooldownScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/batteryreport/BattTempCooldownScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/batteryreport/BattTempCooldownScreen;


# direct methods
.method constructor <init>(Lcom/android/batteryreport/BattTempCooldownScreen;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/batteryreport/BattTempCooldownScreen$2;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_TEMP_NORMAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/batteryreport/BattTempCooldownScreen$2;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    iget-object v3, p0, Lcom/android/batteryreport/BattTempCooldownScreen$2;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    # getter for: Lcom/android/batteryreport/BattTempCooldownScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/batteryreport/BattTempCooldownScreen;->access$100(Lcom/android/batteryreport/BattTempCooldownScreen;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iget-object v2, p0, Lcom/android/batteryreport/BattTempCooldownScreen$2;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    # setter for: Lcom/android/batteryreport/BattTempCooldownScreen;->mReceiverRegistered:Z
    invoke-static {v2, v4}, Lcom/android/batteryreport/BattTempCooldownScreen;->access$202(Lcom/android/batteryreport/BattTempCooldownScreen;Z)Z

    .line 135
    iget-object v2, p0, Lcom/android/batteryreport/BattTempCooldownScreen$2;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 137
    .local v1, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/batteryreport/BattTempCooldownScreen$2;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    # invokes: Lcom/android/batteryreport/BattTempCooldownScreen;->destroyActivity()V
    invoke-static {v2}, Lcom/android/batteryreport/BattTempCooldownScreen;->access$300(Lcom/android/batteryreport/BattTempCooldownScreen;)V

    .line 142
    .end local v1    # "statusBar":Landroid/app/StatusBarManager;
    :cond_1
    return-void
.end method
