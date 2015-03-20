.class public Lcom/motorola/blur/util/concurrent/ServiceThreadPool;
.super Ljava/lang/Object;
.source "ServiceThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/util/concurrent/ServiceThreadPool$GrowingQueue;,
        Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Executor;,
        Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Queue;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceThreadPool"

.field private static final sExecutors:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 121
    new-instance v6, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$GrowingQueue;

    invoke-direct {v6}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$GrowingQueue;-><init>()V

    .line 122
    .local v6, "gq":Lcom/motorola/blur/util/concurrent/ServiceThreadPool$GrowingQueue;
    new-instance v0, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Executor;

    const/4 v1, 0x3

    const/16 v2, 0x28

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Executor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/motorola/blur/util/concurrent/ServiceThreadPool;->sExecutors:Ljava/util/concurrent/ExecutorService;

    .line 123
    sget-object v0, Lcom/motorola/blur/util/concurrent/ServiceThreadPool;->sExecutors:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6, v0}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$GrowingQueue;->setExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 124
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public static getBackgroudUIShortLivedExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 141
    new-instance v7, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;

    const/4 v1, 0x1

    invoke-direct {v7, p0, v1}, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;-><init>(Ljava/lang/String;I)V

    .line 143
    .local v7, "theadFactory":Lcom/motorola/blur/util/concurrent/BlurThreadFactory;
    new-instance v6, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$GrowingQueue;

    invoke-direct {v6}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$GrowingQueue;-><init>()V

    .line 144
    .local v6, "gq":Lcom/motorola/blur/util/concurrent/ServiceThreadPool$GrowingQueue;
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move v2, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 147
    .local v0, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v6, v0}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$GrowingQueue;->setExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 148
    return-object v0
.end method

.method public static final getExecutors()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/motorola/blur/util/concurrent/ServiceThreadPool;->sExecutors:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static newSingleThreadExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 7

    .prologue
    .line 66
    new-instance v6, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Queue;

    invoke-direct {v6}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Queue;-><init>()V

    .line 67
    .local v6, "queue":Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Queue;
    new-instance v0, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Executor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Executor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 69
    .local v0, "result":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v6, v0}, Lcom/motorola/blur/util/concurrent/ServiceThreadPool$Queue;->setExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 70
    return-object v0
.end method
