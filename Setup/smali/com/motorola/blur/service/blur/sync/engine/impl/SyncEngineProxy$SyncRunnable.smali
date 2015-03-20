.class abstract Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;
.super Ljava/lang/Object;
.source "SyncEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SyncRunnable"
.end annotation


# instance fields
.field protected mConnection:Landroid/content/ServiceConnection;

.field protected mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

.field final synthetic this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V

    return-void
.end method


# virtual methods
.method public abstract run()V
.end method

.method setConnection(Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "sc"    # Landroid/content/ServiceConnection;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    .line 69
    return-void
.end method

.method setEngine(Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;)V
    .locals 0
    .param p1, "e"    # Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    .line 73
    return-void
.end method
