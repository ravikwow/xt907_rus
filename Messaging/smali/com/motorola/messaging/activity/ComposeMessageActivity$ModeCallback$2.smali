.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;)V
    .locals 0

    .prologue
    .line 6439
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0900b5

    .line 6442
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6443
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->access$7400(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;)Lcom/motorola/messaging/view/DropdownButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/view/DropdownButton;->getPopupMenu()Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6448
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->access$7400(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;)Lcom/motorola/messaging/view/DropdownButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/view/DropdownButton;->getPopupMenu()Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 6449
    return-void

    .line 6445
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->access$7400(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;)Lcom/motorola/messaging/view/DropdownButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/view/DropdownButton;->getPopupMenu()Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
