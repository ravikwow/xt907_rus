.class Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->inflateWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V
    .locals 0

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5850
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 5854
    .local v0, "data":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasOnlineAlbumAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasLocalNumber()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasFixedDialNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5855
    :cond_0
    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v2, v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;Landroid/os/Handler;ILcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;)V

    .line 5872
    .local v1, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v2, "show_choose_address_dialog"

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    .line 5877
    .end local v1    # "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    :goto_0
    return-void

    .line 5874
    :cond_1
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v2, v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "edit_button_address"

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5875
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v2, v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v3, 0x23

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v4, v4, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method
