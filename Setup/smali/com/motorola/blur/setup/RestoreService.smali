.class public Lcom/motorola/blur/setup/RestoreService;
.super Landroid/app/Service;
.source "RestoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/RestoreService$RestoreObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Ready2GoBackupSettingsService"


# instance fields
.field private binder:Landroid/os/Binder;

.field private mBmgr:Landroid/app/backup/IBackupManager;

.field mRestoreObserver:Lcom/motorola/blur/setup/RestoreService$RestoreObserver;

.field private mRestoreSession:Landroid/app/backup/IRestoreSession;

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/RestoreService;Landroid/app/backup/RestoreSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/RestoreService;
    .param p1, "x1"    # Landroid/app/backup/RestoreSet;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/RestoreService;->doRestore(Landroid/app/backup/RestoreSet;)V

    return-void
.end method

.method private doRestore(Landroid/app/backup/RestoreSet;)V
    .locals 6
    .param p1, "s"    # Landroid/app/backup/RestoreSet;

    .prologue
    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreSession:Landroid/app/backup/IRestoreSession;

    iget-wide v3, p1, Landroid/app/backup/RestoreSet;->token:J

    iget-object v5, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreObserver:Lcom/motorola/blur/setup/RestoreService$RestoreObserver;

    invoke-interface {v2, v3, v4, v5}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I

    move-result v1

    .line 108
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 109
    const-string v2, "Ready2GoBackupSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1    # "res":I
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Ready2GoBackupSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception Recieved from Restore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRestore()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 86
    iput-object v2, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreSession:Landroid/app/backup/IRestoreSession;

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/setup/RestoreService;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreSession:Landroid/app/backup/IRestoreSession;

    .line 89
    iget-object v2, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreSession:Landroid/app/backup/IRestoreSession;

    if-nez v2, :cond_1

    .line 90
    const-string v2, "Ready2GoBackupSettingsService"

    const-string v3, "No Restore Sessions available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/motorola/blur/setup/RestoreService;->finishService()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreSession:Landroid/app/backup/IRestoreSession;

    iget-object v3, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreObserver:Lcom/motorola/blur/setup/RestoreService$RestoreObserver;

    invoke-interface {v2, v3}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    move-result v0

    .line 94
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 95
    const-string v2, "Ready2GoBackupSettingsService"

    const-string v3, "Unable to connect to server for restore sets"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/motorola/blur/setup/RestoreService;->finishService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "err":I
    :catch_0
    move-exception v1

    .line 100
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "Ready2GoBackupSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception Recieved from Restore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/motorola/blur/setup/RestoreService;->finishService()V

    goto :goto_0
.end method


# virtual methods
.method public finishService()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreSession:Landroid/app/backup/IRestoreSession;

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreSession:Landroid/app/backup/IRestoreSession;

    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    const-string v1, "Ready2GoBackupSettingsService"

    const-string v2, "Finished Restore - Exiting RestoreService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 126
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "Ready2GoBackupSettingsService"

    const-string v2, "Exception Recieved from endRestoreSession"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const-string v0, "Ready2GoBackupSettingsService"

    const-string v1, "Binding to RestoreService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/motorola/blur/setup/RestoreService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/setup/RestoreService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/motorola/blur/setup/RestoreService;->initRestore()V

    .line 79
    iget-object v0, p0, Lcom/motorola/blur/setup/RestoreService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/RestoreService;->binder:Landroid/os/Binder;

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/RestoreService;->binder:Landroid/os/Binder;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/blur/setup/RestoreService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/RestoreService;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 66
    new-instance v0, Lcom/motorola/blur/setup/RestoreService$RestoreObserver;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/RestoreService$RestoreObserver;-><init>(Lcom/motorola/blur/setup/RestoreService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/RestoreService;->mRestoreObserver:Lcom/motorola/blur/setup/RestoreService$RestoreObserver;

    .line 67
    iget-object v0, p0, Lcom/motorola/blur/setup/RestoreService;->mBmgr:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "Ready2GoBackupSettingsService"

    const-string v1, "BackupManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/motorola/blur/setup/RestoreService;->finishService()V

    .line 71
    :cond_0
    return-void
.end method
