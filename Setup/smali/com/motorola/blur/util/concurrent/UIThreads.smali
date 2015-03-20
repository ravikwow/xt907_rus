.class public final Lcom/motorola/blur/util/concurrent/UIThreads;
.super Ljava/lang/Object;
.source "UIThreads.java"


# static fields
.field private static final NUMBER_OF_THREADS_IN_POOL:I = 0x2

.field public static final executors:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const/4 v0, 0x2

    new-instance v1, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;

    const-string v2, "UIThreads"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/concurrent/UIThreads;->executors:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method
