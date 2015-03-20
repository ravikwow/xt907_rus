.class Lcom/motorola/messaging/composer/WorkingMessage$8;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/composer/WorkingMessage;->asyncDeleteEmptyMessage(Lcom/motorola/messaging/conversation/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/composer/WorkingMessage;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/WorkingMessage;J)V
    .locals 0

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage$8;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iput-wide p2, p0, Lcom/motorola/messaging/composer/WorkingMessage$8;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2130
    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mSendingTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;
    invoke-static {}, Lcom/motorola/messaging/composer/WorkingMessage;->access$2200()Lcom/motorola/messaging/concurrent/TaskManager$Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2131
    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mSendingTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;
    invoke-static {}, Lcom/motorola/messaging/composer/WorkingMessage;->access$2200()Lcom/motorola/messaging/concurrent/TaskManager$Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/concurrent/TaskManager$Task;->blockUntilFinish()V

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$8;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1800(Lcom/motorola/messaging/composer/WorkingMessage;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$8;->val$threadId:J

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->deleteEmpty(Landroid/content/Context;J)V

    .line 2136
    return-void
.end method
