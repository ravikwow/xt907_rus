.class Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ConversationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedThreadIds:[J

.field private mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ConversationListActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity;Lcom/motorola/messaging/activity/ConversationListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity;
    .param p2, "x1"    # Lcom/motorola/messaging/activity/ConversationListActivity$1;

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;)Lcom/motorola/messaging/view/DropdownButton;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    return-object v0
.end method

.method private updateSelectionButton()V
    .locals 7

    .prologue
    .line 767
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$1000(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    .line 768
    .local v0, "selectedMessages":I
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$1000(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectedThreadIds:[J

    .line 769
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    const v3, 0x7f0b0033

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/view/DropdownButton;->setTitle(Ljava/lang/String;)V

    .line 770
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 737
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 759
    :goto_0
    return v6

    .line 739
    :pswitch_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectedThreadIds:[J

    array-length v3, v3

    if-ltz v3, :cond_0

    .line 742
    iget-object v3, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectedThreadIds:[J

    array-length v3, v3

    if-ne v3, v6, :cond_1

    .line 744
    iget-object v3, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectedThreadIds:[J

    aget-wide v1, v3, v5

    .line 745
    .local v1, "threadId":J
    iget-object v3, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$100(Lcom/motorola/messaging/activity/ConversationListActivity;)Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    move-result-object v3

    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectedThreadIds:[J

    invoke-static {v3, v1, v2, v4, v5}, Lcom/motorola/messaging/conversation/Conversation;->startQueryHasProtectedMessages(Landroid/content/AsyncQueryHandler;JILjava/lang/Object;)V

    .line 756
    .end local v1    # "threadId":J
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 748
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 749
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "thread_ids"

    iget-object v4, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectedThreadIds:[J

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 752
    const-string v3, "show_protected"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 753
    iget-object v3, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-virtual {v3, v5, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 676
    const v1, 0x7f0b0004

    invoke-interface {p2, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020082

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 679
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 683
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/view/DropdownButton;

    iput-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    .line 684
    new-instance v0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$1;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;)V

    .line 707
    .local v0, "listener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2, v0}, Lcom/motorola/messaging/view/DropdownButton;->setupMenu(ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 710
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    new-instance v2, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$2;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$2;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    .end local v0    # "listener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 724
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->updateSelectionButton()V

    .line 725
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 734
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->updateSelectionButton()V

    .line 764
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 729
    const/4 v0, 0x1

    return v0
.end method
