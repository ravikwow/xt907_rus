.class Lcom/motorola/messaging/transaction/DownloadManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/transaction/DownloadManager;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/transaction/DownloadManager;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/motorola/messaging/transaction/DownloadManager$2;->this$0:Lcom/motorola/messaging/transaction/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/TelephonyIntents;->ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    # getter for: Lcom/motorola/messaging/transaction/DownloadManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/DownloadManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "DownloadManager"

    const-string v2, "Service state changed"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRoaming()Z

    move-result v0

    .line 102
    .local v0, "isRoaming":Z
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/transaction/DownloadManager$2;->this$0:Lcom/motorola/messaging/transaction/DownloadManager;

    iget-object v2, p0, Lcom/motorola/messaging/transaction/DownloadManager$2;->this$0:Lcom/motorola/messaging/transaction/DownloadManager;

    # getter for: Lcom/motorola/messaging/transaction/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/motorola/messaging/transaction/DownloadManager;->access$200(Lcom/motorola/messaging/transaction/DownloadManager;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/motorola/messaging/transaction/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v2

    # setter for: Lcom/motorola/messaging/transaction/DownloadManager;->mAutoDownload:Z
    invoke-static {v1, v2}, Lcom/motorola/messaging/transaction/DownloadManager;->access$102(Lcom/motorola/messaging/transaction/DownloadManager;Z)Z

    .line 104
    monitor-exit p0

    .line 106
    .end local v0    # "isRoaming":Z
    :cond_1
    return-void

    .line 104
    .restart local v0    # "isRoaming":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
