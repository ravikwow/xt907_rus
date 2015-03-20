.class Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;
.super Ljava/lang/Object;
.source "SyncEngineProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyServiceConnection"
.end annotation


# instance fields
.field private mRunnable:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V
    .locals 0
    .param p1, "r"    # Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;->mRunnable:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;

    .line 47
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 50
    const-string v0, "SyncEngineProxy"

    const-string v1, "Bound to sync engine service."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;->mRunnable:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;

    invoke-static {p2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->setEngine(Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;)V

    .line 52
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;->mRunnable:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->setConnection(Landroid/content/ServiceConnection;)V

    .line 53
    invoke-static {}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool;->getExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;->mRunnable:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 54
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 57
    const-string v0, "SyncEngineProxy"

    const-string v1, "Unbound from sync engine service."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method
