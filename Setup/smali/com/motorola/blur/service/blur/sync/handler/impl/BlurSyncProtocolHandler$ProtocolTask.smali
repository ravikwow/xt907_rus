.class public Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;
.super Ljava/lang/Object;
.source "BlurSyncProtocolHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProtocolTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsForced:Z

.field final synthetic this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;Z)V
    .locals 0
    .param p2, "isForced"    # Z

    .prologue
    .line 202
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-boolean p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->mIsForced:Z

    .line 204
    return-void
.end method


# virtual methods
.method public call()Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    .locals 6

    .prologue
    .line 207
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    # getter for: Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;
    invoke-static {v1}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->access$100(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->mIsForced:Z

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    # getter for: Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mIsBatchingProhibited:Z
    invoke-static {v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->access$200(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;-><init>(Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;ZZ)V

    .line 209
    .local v0, "mediator":Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolMediator;, "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolMediator<Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;>;"
    # getter for: Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Beginning sync of %s.  Forced: %s. Batching prohibited: %s. Timeout of %d seconds for completion."

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    # getter for: Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;
    invoke-static {v5}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->access$100(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    move-result-object v5

    invoke-interface {v5}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->description()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->mIsForced:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    # getter for: Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mIsBatchingProhibited:Z
    invoke-static {v5}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->access$200(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    # getter for: Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mSyncTaskTimeoutInSecs:I
    invoke-static {v5}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->access$300(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-interface {v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolMediator;->runProtocol()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;->call()Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v0

    return-object v0
.end method
