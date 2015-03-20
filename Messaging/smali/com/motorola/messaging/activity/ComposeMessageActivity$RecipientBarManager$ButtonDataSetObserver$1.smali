.class Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;)V
    .locals 0

    .prologue
    .line 5751
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5753
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->isLoadingDrafts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5754
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5766
    :goto_0
    return-void

    .line 5757
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->mShowGroupTypeWarning:Z
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->access$5800(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mInitByGroupMessage:Z
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->access$5900(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getShowMessageGroupTypeWarning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5758
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 5759
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mInitByGroupMessage:Z
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->access$5900(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5760
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->mInitByGroupMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->access$5902(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;Z)Z

    .line 5764
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$ButtonDataSetObserver;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMultipleRecipients()Z

    move-result v1

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->showWarningBar(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3800(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    goto :goto_0
.end method
