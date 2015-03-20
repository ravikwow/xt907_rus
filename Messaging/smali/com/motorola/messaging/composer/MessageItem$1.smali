.class Lcom/motorola/messaging/composer/MessageItem$1;
.super Ljava/lang/Object;
.source "MessageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/composer/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/composer/MessageItem;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/motorola/messaging/composer/MessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/MessageItem;->doFinishLoading()V

    .line 168
    iget-object v1, p0, Lcom/motorola/messaging/composer/MessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/motorola/messaging/composer/MessageItem;->mIsLoading:Z

    .line 170
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/MessageItem;->updateListener()V

    .line 172
    return-void

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
