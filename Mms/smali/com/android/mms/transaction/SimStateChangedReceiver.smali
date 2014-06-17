.class public Lcom/android/mms/transaction/SimStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimStateChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "simExtra":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 25
    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NOT_READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 26
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->readEmailGatewayFromSimCard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    const-string v3, ""

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSmsEmailGatewayNumber(Ljava/lang/String;)V

    .line 29
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->resetMccMnc()V

    .line 47
    :cond_2
    :goto_0
    return-void

    .line 30
    :cond_3
    const-string v3, "LOADED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    invoke-static {}, Lcom/android/mms/MmsConfig;->readEmailGatewayFromSimCard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 32
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGatewayFromSimCard()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "emailGatewayNumber":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/MmsConfig;->setSmsEmailGatewayNumber(Ljava/lang/String;)V

    .line 39
    .end local v0    # "emailGatewayNumber":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/android/mms/transaction/SimStateChangedReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/SimStateChangedReceiver$1;-><init>(Lcom/android/mms/transaction/SimStateChangedReceiver;)V

    .line 44
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v3

    const-string v4, "Reload_MccMnc"

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/android/mms/concurrent/TaskManager$Task;

    goto :goto_0
.end method
