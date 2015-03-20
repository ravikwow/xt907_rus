.class public Lcom/motorola/messaging/transaction/TransactionState;
.super Ljava/lang/Object;
.source "TransactionState.java"


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mState:Lcom/motorola/messaging/transaction/Transaction$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionState;->mState:Lcom/motorola/messaging/transaction/Transaction$State;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionState;->mContentUri:Landroid/net/Uri;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionState;->mContentUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/motorola/messaging/transaction/Transaction$State;
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionState;->mState:Lcom/motorola/messaging/transaction/Transaction$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setContentUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/messaging/transaction/TransactionState;->mContentUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setState(Lcom/motorola/messaging/transaction/Transaction$State;)V
    .locals 1
    .param p1, "state"    # Lcom/motorola/messaging/transaction/Transaction$State;

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/messaging/transaction/TransactionState;->mState:Lcom/motorola/messaging/transaction/Transaction$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionState;->mState:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
