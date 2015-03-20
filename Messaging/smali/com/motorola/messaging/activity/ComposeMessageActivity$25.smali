.class Lcom/motorola/messaging/activity/ComposeMessageActivity$25;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 2498
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2501
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    .line 2502
    .local v0, "oldMessage":Lcom/motorola/messaging/composer/WorkingMessage;
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->discard()V

    .line 2503
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->resetMessage()V
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3400(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2504
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->isConversationEmpty()Z
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2507
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->clearThreadId()V

    .line 2509
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->copyWorkingRecipients(Lcom/motorola/messaging/composer/WorkingMessage;)V

    .line 2512
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->getRecipientCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 2513
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$25;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 2515
    :cond_1
    return-void
.end method
