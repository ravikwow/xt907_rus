.class Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ConversationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationDeleteExecutor"
.end annotation


# instance fields
.field private mDeleteProtectedMessages:Z

.field private mThreadIds:[J

.field final synthetic this$0:Lcom/motorola/messaging/activity/ConversationListActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity;Lcom/motorola/messaging/activity/ConversationListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity;
    .param p2, "x1"    # Lcom/motorola/messaging/activity/ConversationListActivity$1;

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mDeleteProtectedMessages:Z

    return v0
.end method

.method static synthetic access$900(Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;)[J
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mThreadIds:[J

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 611
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mThreadIds:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mThreadIds:[J

    array-length v1, v1

    if-lez v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mThreadIds:[J

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 614
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 617
    :cond_0
    new-instance v0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;Landroid/os/Handler;I)V

    .line 635
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v1, "delete_conversations"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    .line 637
    .end local v0    # "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    :cond_1
    return-void
.end method

.method public isSingleThread()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 640
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mThreadIds:[J

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mThreadIds:[J

    array-length v1, v1

    if-ne v1, v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v0

    .line 641
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeleteProtectedMessage(Z)V
    .locals 0
    .param p1, "deleteLockedMessages"    # Z

    .prologue
    .line 647
    iput-boolean p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mDeleteProtectedMessages:Z

    .line 648
    return-void
.end method

.method public setThreadIds([J)V
    .locals 0
    .param p1, "threadIds"    # [J

    .prologue
    .line 605
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mThreadIds:[J

    .line 606
    return-void
.end method
