.class public Lcom/motorola/blur/service/blur/BlockingWSWrapper;
.super Ljava/lang/Object;
.source "BlockingWSWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/BlockingWSWrapper$1;,
        Lcom/motorola/blur/service/blur/BlockingWSWrapper$MyIntentReceiver;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private final mCtx:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mResp:Lcom/motorola/blur/service/blur/WSResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mLock:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mCtx:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/service/blur/BlockingWSWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/BlockingWSWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/blur/BlockingWSWrapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/BlockingWSWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/blur/service/blur/BlockingWSWrapper;Lcom/motorola/blur/service/blur/WSResponse;)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/BlockingWSWrapper;
    .param p1, "x1"    # Lcom/motorola/blur/service/blur/WSResponse;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mResp:Lcom/motorola/blur/service/blur/WSResponse;

    return-object p1
.end method


# virtual methods
.method public doRequest(Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;Ljava/lang/String;J)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 4
    .param p1, "req"    # Lcom/motorola/blur/service/blur/WSRequest;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "responseKey"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 52
    iput-object p2, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mAction:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/motorola/blur/service/blur/BlockingWSWrapper$MyIntentReceiver;

    invoke-direct {v0, p0, v3}, Lcom/motorola/blur/service/blur/BlockingWSWrapper$MyIntentReceiver;-><init>(Lcom/motorola/blur/service/blur/BlockingWSWrapper;Lcom/motorola/blur/service/blur/BlockingWSWrapper$1;)V

    .line 54
    .local v0, "recv":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mCtx:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/motorola/blur/service/blur/BSUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 55
    iput-object v3, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mResp:Lcom/motorola/blur/service/blur/WSResponse;

    .line 56
    iget-object v1, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mCtx:Landroid/content/Context;

    invoke-static {v1, p1, p3}, Lcom/motorola/blur/service/blur/BSUtils;->buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 57
    iget-object v2, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mResp:Lcom/motorola/blur/service/blur/WSResponse;

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mLock:Ljava/lang/Object;

    invoke-virtual {v1, p4, p5}, Ljava/lang/Object;->wait(J)V

    .line 61
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v1, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    iget-object v1, p0, Lcom/motorola/blur/service/blur/BlockingWSWrapper;->mResp:Lcom/motorola/blur/service/blur/WSResponse;

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
