.class public Lcom/motorola/messaging/receiver/SimStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimStateChangedReceiver.java"


# static fields
.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/receiver/SimStateChangedReceiver;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "simExtra":Ljava/lang/String;
    sget-boolean v3, Lcom/motorola/messaging/receiver/SimStateChangedReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 23
    const-string v3, "SimStateChangedReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim Card extra state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    if-eqz v2, :cond_3

    .line 27
    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NOT_READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 28
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->readEmailGatewayFromSimCard()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    const-string v3, ""

    invoke-static {v3}, Lcom/motorola/messaging/settings/MessageSettings;->setSmsEmailGatewayNumber(Ljava/lang/String;)V

    .line 31
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->resetMccMnc()V

    .line 49
    :cond_3
    :goto_0
    return-void

    .line 32
    :cond_4
    const-string v3, "LOADED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->readEmailGatewayFromSimCard()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 34
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEmailGatewayFromSimCard()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "emailGatewayNumber":Ljava/lang/String;
    sget-boolean v3, Lcom/motorola/messaging/receiver/SimStateChangedReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_5

    .line 36
    const-string v3, "SimStateChangedReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting email gateway number from Simcard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_5
    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->setSmsEmailGatewayNumber(Ljava/lang/String;)V

    .line 41
    .end local v0    # "emailGatewayNumber":Ljava/lang/String;
    :cond_6
    new-instance v1, Lcom/motorola/messaging/receiver/SimStateChangedReceiver$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/receiver/SimStateChangedReceiver$1;-><init>(Lcom/motorola/messaging/receiver/SimStateChangedReceiver;)V

    .line 46
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v3

    const-string v4, "Reload_MccMnc"

    invoke-virtual {v3, v1, v4}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    goto :goto_0
.end method
