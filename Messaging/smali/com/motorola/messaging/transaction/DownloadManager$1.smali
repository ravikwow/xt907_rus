.class Lcom/motorola/messaging/transaction/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
    .line 73
    iput-object p1, p0, Lcom/motorola/messaging/transaction/DownloadManager$1;->this$0:Lcom/motorola/messaging/transaction/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "pref_key_mms_auto_retrieval"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    :cond_0
    # getter for: Lcom/motorola/messaging/transaction/DownloadManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/DownloadManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "DownloadManager"

    const-string v1, "Preferences updated."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager$1;->this$0:Lcom/motorola/messaging/transaction/DownloadManager;

    invoke-static {p1}, Lcom/motorola/messaging/transaction/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;)Z

    move-result v1

    # setter for: Lcom/motorola/messaging/transaction/DownloadManager;->mAutoDownload:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/transaction/DownloadManager;->access$102(Lcom/motorola/messaging/transaction/DownloadManager;Z)Z

    .line 83
    # getter for: Lcom/motorola/messaging/transaction/DownloadManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/DownloadManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoDownload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/DownloadManager$1;->this$0:Lcom/motorola/messaging/transaction/DownloadManager;

    # getter for: Lcom/motorola/messaging/transaction/DownloadManager;->mAutoDownload:Z
    invoke-static {v2}, Lcom/motorola/messaging/transaction/DownloadManager;->access$100(Lcom/motorola/messaging/transaction/DownloadManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    monitor-exit p0

    .line 88
    :cond_3
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
