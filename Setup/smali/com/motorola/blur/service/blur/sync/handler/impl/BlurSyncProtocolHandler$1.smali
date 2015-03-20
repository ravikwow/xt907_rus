.class Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$1;
.super Ljava/lang/Object;
.source "BlurSyncProtocolHandler.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;-><init>(Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;


# direct methods
.method constructor <init>(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$1;->this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 62
    # getter for: Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rejecting sync task since one is already running."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method
