.class public Lcom/motorola/messaging/receiver/StorageMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageMonitorReceiver.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lcom/motorola/messaging/receiver/StorageMonitorReceiver;->DEBUG:Z

    .line 26
    sget-boolean v1, Lcom/motorola/messaging/receiver/StorageMonitorReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/receiver/StorageMonitorReceiver;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    sget-boolean v1, Lcom/motorola/messaging/receiver/StorageMonitorReceiver;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "StorageMonitorReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - START, app version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent received="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/content/IntentWrapper;->ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/motorola/messaging/provider/StorageMonitor;->setStorageFull(Z)V

    .line 46
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/receiver/StorageMonitorReceiver;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 47
    const-string v1, "StorageMonitorReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is storage full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/motorola/messaging/provider/StorageMonitor;->isStorageFull()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    sget-boolean v1, Lcom/motorola/messaging/receiver/StorageMonitorReceiver;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 51
    const-string v1, "StorageMonitorReceiver"

    const-string v2, "onReceive() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    return-void

    .line 39
    :cond_4
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/content/IntentWrapper;->ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 40
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/messaging/provider/StorageMonitor;->setStorageFull(Z)V

    goto :goto_0

    .line 41
    :cond_5
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-static {}, Lcom/motorola/messaging/provider/StorageMonitor;->isAvailStorageBelowThreshold()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/messaging/provider/StorageMonitor;->setStorageFull(Z)V

    goto :goto_0
.end method
