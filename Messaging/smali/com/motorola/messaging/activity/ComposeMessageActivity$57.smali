.class Lcom/motorola/messaging/activity/ComposeMessageActivity$57;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->processSendingWarnings(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDialogId:I

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$requiresMms:Z


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/os/Handler;IZ)V
    .locals 1
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 4517
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-boolean p4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->val$requiresMms:Z

    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    .line 4518
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->mDialogId:I

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 2

    .prologue
    .line 4524
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->val$requiresMms:Z

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->getSendingWarningDialog(Z)I
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->mDialogId:I

    .line 4525
    return-void
.end method

.method protected onPostExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4529
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->getRecipientCount()I

    move-result v0

    .line 4530
    .local v0, "numRecipients":I
    iget-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->val$requiresMms:Z

    if-nez v1, :cond_0

    if-le v0, v2, :cond_0

    .line 4533
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3302(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z

    .line 4536
    :cond_0
    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->mDialogId:I

    if-eqz v1, :cond_2

    .line 4537
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4538
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->mDialogId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 4546
    :cond_1
    :goto_0
    return-void

    .line 4540
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4544
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$57;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
