.class Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$1;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 687
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 703
    :cond_0
    return v3

    .line 690
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$1000(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$1000(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$1000(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$1000(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 687
    :pswitch_data_0
    .packed-switch 0x7f0900b5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
