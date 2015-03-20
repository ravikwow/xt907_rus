.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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
    .line 6406
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6409
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6426
    :cond_0
    return v3

    .line 6412
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->access$7302(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;I)I

    .line 6413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6414
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 6413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6420
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6421
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 6420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6409
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900b5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
