.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mIsMultiSelection:Z

.field private mLockedMessagesCounter:I

.field private mMmsList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

.field private mSmsList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetMsgPosition:I

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6380
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6384
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSmsList:Ljava/util/HashSet;

    .line 6385
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMmsList:Ljava/util/HashSet;

    .line 6387
    iput-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mIsMultiSelection:Z

    .line 6389
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mTargetMsgPosition:I

    .line 6391
    iput v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p2, "x1"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$1;

    .prologue
    .line 6380
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    return-void
.end method

.method static synthetic access$7302(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;
    .param p1, "x1"    # I

    .prologue
    .line 6380
    iput p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    return p1
.end method

.method static synthetic access$7400(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;)Lcom/motorola/messaging/view/DropdownButton;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    .prologue
    .line 6380
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    return-object v0
.end method

.method private getCheckedItemPosition()I
    .locals 4

    .prologue
    .line 6918
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 6919
    .local v0, "checkedItems":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    .line 6923
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 6924
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 6927
    :goto_0
    return v2

    .line 6926
    :cond_0
    const-string v2, "ComposeMsgActivity"

    const-string v3, "getCheckedItemPosition() with no items checked!"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 6927
    const/high16 v2, -0x80000000

    goto :goto_0
.end method

.method private getLongArrayFromSet(Ljava/util/HashSet;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 6886
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v1, v3, [J

    .line 6888
    .local v1, "resultArray":[J
    const/4 v0, 0x0

    .line 6889
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6890
    .local v2, "setIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6891
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 6892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6894
    :cond_0
    return-object v1
.end method

.method private getMessageItemAtPosition(I)Lcom/motorola/messaging/composer/MessageItem;
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 6937
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 6938
    .local v0, "itemCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 6939
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mHighlight:Ljava/util/regex/Pattern;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$8200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/motorola/messaging/composer/MessageItem;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    .line 6942
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasLockedMessage()Z
    .locals 1

    .prologue
    .line 6902
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasUnlockedMessage()Z
    .locals 2

    .prologue
    .line 6910
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTargetMessage(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6879
    iput p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mTargetMsgPosition:I

    .line 6880
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6662
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6663
    const-string v2, "ComposeMsgActivity"

    const-string v3, "onActionItemClicked() - ModeCallback - START"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6669
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mIsMultiSelection:Z

    if-eqz v2, :cond_4

    .line 6670
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v1, v0

    .line 6821
    :goto_0
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6822
    const-string v0, "ComposeMsgActivity"

    const-string v2, "onActionItemClicked() - ModeCallback - END"

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6825
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 6827
    return v1

    .line 6672
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 6673
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "multiple_delete_sms_ids"

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSmsList:Ljava/util/HashSet;

    invoke-direct {p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getLongArrayFromSet(Ljava/util/HashSet;)[J

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 6674
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "multiple_delete_mms_ids"

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMmsList:Ljava/util/HashSet;

    invoke-direct {p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getLongArrayFromSet(Ljava/util/HashSet;)[J

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 6675
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->hasLockedMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6676
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6821
    :catchall_0
    move-exception v0

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6822
    const-string v1, "ComposeMsgActivity"

    const-string v2, "onActionItemClicked() - ModeCallback - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v0

    .line 6678
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v2, 0x19

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 6684
    :pswitch_2
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSmsList:Ljava/util/HashSet;

    invoke-direct {p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getLongArrayFromSet(Ljava/util/HashSet;)[J

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMmsList:Ljava/util/HashSet;

    invoke-direct {p0, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getLongArrayFromSet(Ljava/util/HashSet;)[J

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;[J[JZ)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 6690
    :pswitch_3
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSmsList:Ljava/util/HashSet;

    invoke-direct {p0, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getLongArrayFromSet(Ljava/util/HashSet;)[J

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMmsList:Ljava/util/HashSet;

    invoke-direct {p0, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getLongArrayFromSet(Ljava/util/HashSet;)[J

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;[J[JZ)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 6698
    :cond_4
    iget v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mTargetMsgPosition:I

    invoke-direct {p0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getMessageItemAtPosition(I)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v2

    .line 6700
    if-eqz v2, :cond_b

    .line 6701
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6702
    const-string v3, "ComposeMsgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionItemClicked() - menuItemId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6705
    :cond_5
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_1
    :pswitch_4
    move v1, v0

    .line 6812
    goto/16 :goto_0

    .line 6707
    :pswitch_5
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getRawBody()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;)V

    move v0, v1

    .line 6708
    goto :goto_1

    .line 6711
    :pswitch_6
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6712
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableBottomPanel()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 6713
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "out"

    invoke-static {v0, v2}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 6714
    goto :goto_1

    .line 6717
    :cond_6
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getType()I

    move-result v4

    if-ne v4, v1, :cond_7

    move v0, v1

    :cond_7
    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->processSendingWarnings(Z)V
    invoke-static {v3, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7100(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 6718
    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getId()J

    move-result-wide v3

    .line 6720
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$3;

    invoke-direct {v0, p0, v3, v4, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$3;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;JLcom/motorola/messaging/composer/MessageItem;)V

    .line 6726
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    const-string v3, "resend_message"

    invoke-virtual {v2, v0, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    move v0, v1

    .line 6728
    goto :goto_1

    .line 6730
    :pswitch_7
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6731
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableBottomPanel()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 6732
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "out"

    invoke-static {v0, v2}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    .line 6734
    :cond_8
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getTypeString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleForwardContextMenuClicked(Ljava/lang/String;Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v3, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7800(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;Lcom/motorola/messaging/composer/MessageItem;)V

    move v0, v1

    .line 6736
    goto :goto_1

    .line 6738
    :pswitch_8
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isRestrictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6739
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->totallyDisableBottomPanel()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 6740
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "out"

    invoke-static {v0, v2}, Lcom/motorola/messaging/util/MessageUtils;->showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    .line 6742
    :cond_9
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getId()J

    move-result-wide v4

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->handleReplyToSenderContextMenuClicked(Ljava/lang/String;JLcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v3, v4, v5, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7900(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;JLcom/motorola/messaging/composer/MessageItem;)V

    move v0, v1

    .line 6744
    goto/16 :goto_1

    .line 6747
    :pswitch_9
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;

    invoke-direct {v0, p0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 6775
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    const-string v3, "copy_message_to_simcard"

    invoke-virtual {v2, v0, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    move v0, v1

    .line 6776
    goto/16 :goto_1

    .line 6780
    :pswitch_a
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mTargetMsgPosition:I

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 6781
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getSize()I

    move-result v2

    invoke-static {v3, v0, v2}, Lcom/motorola/messaging/composer/MessageDetails;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 6783
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message_details"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6784
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    move v0, v1

    .line 6785
    goto/16 :goto_1

    .line 6788
    :pswitch_b
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "delete_message_id"

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6789
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "delete_message_type"

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6790
    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6791
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    move v0, v1

    goto/16 :goto_1

    .line 6793
    :cond_a
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    move v0, v1

    .line 6795
    goto/16 :goto_1

    .line 6798
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const-class v4, Lcom/motorola/messaging/activity/DeliveryReportActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6799
    const-string v3, "message_id"

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6800
    const-string v3, "message_type"

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6802
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 6803
    goto/16 :goto_1

    .line 6806
    :pswitch_d
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v3, 0x1

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->protectMessage(Lcom/motorola/messaging/composer/MessageItem;Z)V
    invoke-static {v0, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$8100(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/composer/MessageItem;Z)V

    move v0, v1

    .line 6807
    goto/16 :goto_1

    .line 6809
    :pswitch_e
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v3, 0x0

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->protectMessage(Lcom/motorola/messaging/composer/MessageItem;Z)V
    invoke-static {v0, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$8100(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/composer/MessageItem;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 6810
    goto/16 :goto_1

    :cond_b
    move v1, v0

    .line 6815
    goto/16 :goto_0

    .line 6670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 6705
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_4
        :pswitch_7
        :pswitch_d
        :pswitch_4
        :pswitch_e
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6397
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6400(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/motorola/messaging/util/MessageUtils;->slideBottomPanel(Landroid/view/View;Z)V

    .line 6398
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v9, v3}, Lcom/motorola/messaging/util/KeyboardUtils;->hideSoftInputFromWindow(Landroid/view/Window;ILandroid/content/Context;)V

    .line 6401
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 6402
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030017

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 6405
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f09004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/view/DropdownButton;

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    .line 6406
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;)V

    .line 6430
    .local v0, "listener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    const v3, 0x7f0e0003

    invoke-virtual {v2, v3, v0}, Lcom/motorola/messaging/view/DropdownButton;->setupMenu(ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 6432
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    .line 6434
    .local v1, "selectedMessages":I
    if-eqz v1, :cond_0

    .line 6435
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v4, 0x7f0b0033

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/view/DropdownButton;->setTitle(Ljava/lang/String;)V

    .line 6439
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    new-instance v3, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$2;

    invoke-direct {v3, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$2;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6453
    .end local v0    # "listener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .end local v1    # "selectedMessages":I
    :cond_1
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 6454
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 6456
    const v2, 0x7f0b0004

    invoke-interface {p2, v7, v7, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020082

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6460
    const v2, 0x7f0b0018

    invoke-interface {p2, v7, v9, v9, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020012

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6464
    const/16 v2, 0x8

    const/16 v3, 0x8

    const v4, 0x7f0b0019

    invoke-interface {p2, v7, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6465
    const/4 v2, 0x7

    const/4 v3, 0x7

    const v4, 0x7f0b001f

    invoke-interface {p2, v7, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6466
    const/16 v2, 0xb

    const/16 v3, 0xb

    const v4, 0x7f0b0184

    invoke-interface {p2, v7, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6467
    const/16 v2, 0xc

    const/16 v3, 0xc

    const v4, 0x7f0b0023

    invoke-interface {p2, v7, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6468
    const/16 v2, 0x9

    const/16 v3, 0x9

    const v4, 0x7f0b00c3

    invoke-interface {p2, v7, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6469
    const/16 v2, 0xa

    const/16 v3, 0xa

    const v4, 0x7f0b000e

    invoke-interface {p2, v7, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6471
    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x7f0b000f

    invoke-interface {p2, v7, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020018

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6474
    const v2, 0x7f0b0010

    invoke-interface {p2, v7, v10, v10, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020014

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6478
    const v2, 0x7f0b0004

    invoke-interface {p2, v8, v8, v8, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020082

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6482
    const v2, 0x7f0b0010

    invoke-interface {p2, v8, v11, v11, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020014

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6486
    const/4 v2, 0x6

    const/4 v3, 0x6

    const v4, 0x7f0b000f

    invoke-interface {p2, v8, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020018

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6491
    invoke-interface {p2, v7, v8}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 6492
    invoke-interface {p2, v8, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 6494
    return v8
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    .line 6499
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6400(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->slideBottomPanel(Landroid/view/View;Z)V

    .line 6500
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSmsList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6501
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMmsList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6502
    iput-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mIsMultiSelection:Z

    .line 6503
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mTargetMsgPosition:I

    .line 6504
    iput v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    .line 6505
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 15
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 6609
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 6611
    .local v1, "cursorCheckedItem":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 6658
    :goto_0
    return-void

    .line 6615
    :cond_0
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6616
    .local v5, "msgType":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 6617
    .local v3, "msgId":J
    const/4 v9, 0x4

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    .line 6621
    .local v2, "isProtected":Z
    :goto_1
    const-string v9, "sms"

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 6622
    iget-object v8, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSmsList:Ljava/util/HashSet;

    .line 6627
    .local v8, "targetList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_2
    if-eqz p5, :cond_4

    .line 6628
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6629
    if-eqz v2, :cond_1

    .line 6630
    iget v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    .line 6639
    :cond_1
    :goto_3
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v6

    .line 6640
    .local v6, "selectedMessages":I
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    iget-object v10, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v11, 0x7f0b0033

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/motorola/messaging/view/DropdownButton;->setTitle(Ljava/lang/String;)V

    .line 6642
    const/4 v9, 0x1

    if-le v6, v9, :cond_5

    .line 6643
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mIsMultiSelection:Z

    .line 6657
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 6617
    .end local v2    # "isProtected":Z
    .end local v6    # "selectedMessages":I
    .end local v8    # "targetList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 6624
    .restart local v2    # "isProtected":Z
    :cond_3
    iget-object v8, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMmsList:Ljava/util/HashSet;

    .restart local v8    # "targetList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto :goto_2

    .line 6633
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6634
    if-eqz v2, :cond_1

    .line 6635
    iget v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    goto :goto_3

    .line 6648
    .restart local v6    # "selectedMessages":I
    :cond_5
    iget-boolean v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mIsMultiSelection:Z

    if-eqz v9, :cond_6

    .line 6649
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getCheckedItemPosition()I

    move-result v7

    .line 6651
    .local v7, "singleItemPosition":I
    invoke-direct {p0, v7}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->setTargetMessage(I)V

    .line 6655
    .end local v7    # "singleItemPosition":I
    :goto_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mIsMultiSelection:Z

    goto :goto_4

    .line 6653
    :cond_6
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->setTargetMessage(I)V

    goto :goto_5
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 11
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 6511
    invoke-interface {p2, v7, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 6512
    invoke-interface {p2, v8, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 6514
    iget-boolean v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mIsMultiSelection:Z

    if-eqz v9, :cond_1

    .line 6516
    iget-object v7, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v7, p2, v8, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6518
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->hasLockedMessage()Z

    move-result v0

    .line 6519
    .local v0, "hasLockedMessage":Z
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->hasUnlockedMessage()Z

    move-result v1

    .line 6521
    .local v1, "hasUnlockedMessages":Z
    iget-object v7, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v9, 0x4

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v7, p2, v9, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6522
    iget-object v7, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v9, 0x6

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v7, p2, v9, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .end local v0    # "hasLockedMessage":Z
    .end local v1    # "hasUnlockedMessages":Z
    :goto_0
    move v7, v8

    .line 6601
    :cond_0
    return v7

    .line 6526
    :cond_1
    iget v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mTargetMsgPosition:I

    invoke-direct {p0, v9}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getMessageItemAtPosition(I)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v4

    .line 6528
    .local v4, "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    if-eqz v4, :cond_0

    .line 6533
    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 6535
    const/4 v2, 0x1

    .line 6537
    .local v2, "isForwardable":Z
    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->isFailed()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 6538
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v10, 0x8

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v10, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6541
    :cond_2
    const/4 v3, 0x0

    .line 6543
    .local v3, "mmsText":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->getType()I

    move-result v9

    if-ne v9, v8, :cond_4

    .line 6544
    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v5

    .line 6545
    .local v5, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    if-eqz v5, :cond_d

    .line 6546
    invoke-virtual {v5}, Lcom/motorola/messaging/model/SmilModel;->hasSimpleSlideshow()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 6547
    invoke-virtual {v5, v7}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v6

    .line 6548
    .local v6, "textModel":Lcom/motorola/messaging/model/TextModel;
    if-eqz v6, :cond_3

    .line 6549
    invoke-virtual {v6}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    .line 6552
    .end local v6    # "textModel":Lcom/motorola/messaging/model/TextModel;
    :cond_3
    invoke-virtual {v5}, Lcom/motorola/messaging/model/SmilModel;->isForwardable()Z

    move-result v2

    .line 6558
    .end local v5    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->getType()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 6560
    :cond_5
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v10, 0x7

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v10, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6563
    :cond_6
    if-eqz v2, :cond_7

    .line 6564
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v10, 0x2

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v10, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6567
    :cond_7
    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->getType()I

    move-result v9

    if-ne v9, v8, :cond_8

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->hasMultipleRecipients()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 6572
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v10, 0xb

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v10, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6575
    :cond_8
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCopyMessageToSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 6576
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isCDMA()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->getType()I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->isIncoming()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->isSent()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 6578
    :cond_9
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v10, 0xc

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v10, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6582
    :cond_a
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsDeliveryReportEnable()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->isSent()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->getDeliveryStatus()Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    move-result-object v9

    sget-object v10, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    if-eq v9, v10, :cond_b

    .line 6585
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v10, 0x9

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v10, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6588
    :cond_b
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsMsgDetailsEnable()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 6589
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v10, 0xa

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v10, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6593
    .end local v2    # "isForwardable":Z
    .end local v3    # "mmsText":Ljava/lang/String;
    :cond_c
    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->isProtected()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 6594
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v10, 0x5

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v10, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    .line 6599
    :goto_2
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v7, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    .line 6554
    .restart local v2    # "isForwardable":Z
    .restart local v3    # "mmsText":Ljava/lang/String;
    .restart local v5    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 6596
    .end local v2    # "isForwardable":Z
    .end local v3    # "mmsText":Ljava/lang/String;
    .end local v5    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :cond_e
    iget-object v9, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v10, 0x3

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V
    invoke-static {v9, p2, v10, v8}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$7500(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/view/Menu;IZ)V

    goto :goto_2
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 6850
    if-nez p1, :cond_0

    .line 6872
    :goto_0
    return-void

    .line 6854
    :cond_0
    const-string v3, "sms_list"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 6855
    .local v2, "smsList":[J
    const-string v3, "mms_list"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 6857
    .local v1, "mmsList":[J
    if-eqz v2, :cond_1

    .line 6858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 6859
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSmsList:Ljava/util/HashSet;

    aget-wide v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6858
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6863
    .end local v0    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 6864
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 6865
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMmsList:Ljava/util/HashSet;

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6864
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6869
    .end local v0    # "i":I
    :cond_2
    const-string v3, "is_multi_selection"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mIsMultiSelection:Z

    .line 6870
    const-string v3, "target_msg_position"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mTargetMsgPosition:I

    .line 6871
    const-string v3, "locked_messages_counter"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    goto :goto_0
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 6837
    const-string v0, "is_multi_selection"

    iget-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mIsMultiSelection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6838
    const-string v0, "target_msg_position"

    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mTargetMsgPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6839
    const-string v0, "locked_messages_counter"

    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mLockedMessagesCounter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6840
    const-string v0, "sms_list"

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mSmsList:Ljava/util/HashSet;

    invoke-direct {p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getLongArrayFromSet(Ljava/util/HashSet;)[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 6841
    const-string v0, "mms_list"

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->mMmsList:Ljava/util/HashSet;

    invoke-direct {p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->getLongArrayFromSet(Ljava/util/HashSet;)[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 6842
    return-void
.end method
