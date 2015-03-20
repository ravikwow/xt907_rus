.class Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->onButtonClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mButtonListAdapter:Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

.field final synthetic this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;

.field final synthetic val$data:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;Landroid/os/Handler;ILcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 5855
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;

    iput-object p4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->val$data:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 3

    .prologue
    .line 5860
    new-instance v0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->val$data:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;-><init>(Landroid/content/Context;Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->mButtonListAdapter:Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    .line 5861
    return-void
.end method

.method protected onPostExecute()V
    .locals 3

    .prologue
    .line 5865
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5866
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "choose_button_adapter"

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->mButtonListAdapter:Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5867
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "choose_button_title"

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->val$data:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    invoke-virtual {v2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5868
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;

    iget-object v2, v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v2, v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 5870
    :cond_0
    return-void
.end method
