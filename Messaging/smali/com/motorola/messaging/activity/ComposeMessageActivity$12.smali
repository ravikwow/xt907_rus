.class Lcom/motorola/messaging/activity/ComposeMessageActivity$12;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$12;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v5, 0x0

    .line 1302
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    const-string v2, "ComposeMsgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread Changed - BroadcastReceiver - START, intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    :cond_0
    :try_start_0
    const-string v2, "thread_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1308
    .local v0, "threadId":J
    cmp-long v2, v0, v5

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$12;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$12;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 1313
    const v2, 0x7f0b0183

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    :cond_1
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1318
    const-string v2, "ComposeMsgActivity"

    const-string v3, "Thread Changed - BroadcastReceiver - END"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_2
    return-void

    .line 1317
    .end local v0    # "threadId":J
    :catchall_0
    move-exception v2

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1318
    const-string v3, "ComposeMsgActivity"

    const-string v4, "Thread Changed - BroadcastReceiver - END"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    throw v2
.end method
