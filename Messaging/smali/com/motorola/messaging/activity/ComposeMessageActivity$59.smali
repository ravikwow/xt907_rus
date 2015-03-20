.class Lcom/motorola/messaging/activity/ComposeMessageActivity$59;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDeleteProtectedMessages:Z

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 5099
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 5104
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$5100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;

    move-result-object v0

    const/16 v1, 0x264c

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;->mDeleteProtectedMessages:Z

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/messaging/conversation/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZJ)V

    .line 5111
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->discard()V

    .line 5113
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->clearThreadId()V

    .line 5114
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 5115
    return-void
.end method

.method public isSingleThread()Z
    .locals 1

    .prologue
    .line 5118
    const/4 v0, 0x1

    return v0
.end method

.method public setDeleteProtectedMessage(Z)V
    .locals 0
    .param p1, "deleteProtectedMessages"    # Z

    .prologue
    .line 5122
    iput-boolean p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$59;->mDeleteProtectedMessages:Z

    .line 5123
    return-void
.end method
