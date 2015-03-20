.class Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "ConversationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;Landroid/os/Handler;I)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 617
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mDeleteProtectedMessages:Z
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->access$800(Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mThreadIds:[J
    invoke-static {v2}, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->access$900(Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;)[J

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->deleteMultiple(Landroid/content/Context;Z[J)V

    .line 621
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.conversations.THREAD_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 624
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-static {v0}, Lcom/motorola/messaging/util/MessagingNotification;->updateAllNotifications(Landroid/content/Context;)V

    .line 625
    return-void
.end method

.method protected onPostExecute()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->mThreadIds:[J
    invoke-static {v0}, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->access$900(Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;)[J

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 632
    :cond_0
    return-void
.end method
