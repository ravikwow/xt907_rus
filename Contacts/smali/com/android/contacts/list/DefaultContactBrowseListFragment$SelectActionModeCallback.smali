.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectActionModeCallback"
.end annotation


# instance fields
.field private isMutiSelected:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mAddStarMenuView:Landroid/view/MenuItem;

.field private mCallMenuView:Landroid/view/MenuItem;

.field private mDeleteContactMenuView:Landroid/view/MenuItem;

.field private mEditContactMenuView:Landroid/view/MenuItem;

.field private mMessageMenuView:Landroid/view/MenuItem;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mRemoveStarMenuView:Landroid/view/MenuItem;

.field private mSelectedConvCount:Landroid/widget/TextView;

.field private mVContactMenuView:Landroid/view/MenuItem;

.field private saveSelectionVisible:Z

.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    return-void
.end method


# virtual methods
.method finish()V
    .locals 2

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 606
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectMode(Z)V

    .line 607
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 609
    .end local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 19
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 664
    .local v9, "listView":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 665
    .local v2, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 666
    .local v4, "checkStates":Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v14

    .line 667
    .local v14, "selectedNumbers":I
    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getVisibleOffset()I

    move-result v16

    .line 669
    .local v16, "visiblePositionOffset":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_0

    .line 671
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v17

    add-int v17, v17, v16

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v10

    .line 673
    .local v10, "lookupUri":Landroid/net/Uri;
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 746
    .end local v10    # "lookupUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    .line 747
    const/16 v17, 0x1

    :goto_1
    return v17

    .line 675
    .restart local v10    # "lookupUri":Landroid/net/Uri;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 678
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactBrowseListFragment;->callContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 681
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactBrowseListFragment;->smsContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 684
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactBrowseListFragment;->addToFavorites(Landroid/net/Uri;)V

    goto :goto_0

    .line 687
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactBrowseListFragment;->removeFromFavorites(Landroid/net/Uri;)V

    goto :goto_0

    .line 690
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactBrowseListFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 693
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactBrowseListFragment;->deleteContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 698
    .end local v10    # "lookupUri":Landroid/net/Uri;
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .local v11, "sB":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getMultiSelectedRecords()[J

    move-result-object v3

    .local v3, "arr$":[J
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v8, :cond_2

    aget-wide v6, v3, v5

    .line 700
    .local v6, "id":J
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 701
    :cond_1
    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 699
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 703
    .end local v6    # "id":J
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 704
    .local v12, "sCond":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    goto/16 :goto_0

    .line 708
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/motorola/contacts/util/SDNUtils;->checkSDNFeatureFlag(Landroid/content/Context;)Z

    move-result v13

    .line 710
    .local v13, "sdnFlag":Z
    new-instance v15, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v12}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;ZLjava/lang/String;)V

    .line 738
    .local v15, "taskDelete":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v18, v0

    if-eqz v13, :cond_3

    const v17, 0x7f0c0052

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showDialog(ILandroid/os/AsyncTask;)V
    invoke-static {v0, v1, v15}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;ILandroid/os/AsyncTask;)V

    .line 740
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 738
    :cond_3
    const v17, 0x7f0c0051

    goto :goto_3

    .line 673
    :sswitch_data_0
    .sparse-switch
        0x7f0700a9 -> :sswitch_2
        0x7f070191 -> :sswitch_6
        0x7f070193 -> :sswitch_0
        0x7f070194 -> :sswitch_5
        0x7f070195 -> :sswitch_1
        0x7f07019a -> :sswitch_3
        0x7f07019b -> :sswitch_4
    .end sparse-switch

    .line 704
    :pswitch_data_0
    .packed-switch 0x7f070191
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 637
    :goto_0
    return v1

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mGenieListener:Lcom/motorola/contacts/genie/GenieInterface;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/motorola/contacts/genie/GenieInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mGenieListener:Lcom/motorola/contacts/genie/GenieInterface;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/motorola/contacts/genie/GenieInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/contacts/genie/GenieInterface;->onMultiChoiceMode()V

    .line 618
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->isSelectionVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->saveSelectionVisible:Z

    .line 619
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 620
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100006

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 621
    const v1, 0x7f070193

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mVContactMenuView:Landroid/view/MenuItem;

    .line 622
    const v1, 0x7f070195

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mCallMenuView:Landroid/view/MenuItem;

    .line 623
    const v1, 0x7f0700a9

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mMessageMenuView:Landroid/view/MenuItem;

    .line 624
    const v1, 0x7f07019a

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mAddStarMenuView:Landroid/view/MenuItem;

    .line 625
    const v1, 0x7f07019b

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mRemoveStarMenuView:Landroid/view/MenuItem;

    .line 626
    const v1, 0x7f070194

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mEditContactMenuView:Landroid/view/MenuItem;

    .line 627
    const v1, 0x7f070191

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mDeleteContactMenuView:Landroid/view/MenuItem;

    .line 629
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 630
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040035

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 632
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mSelectedConvCount:Landroid/widget/TextView;

    .line 634
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 635
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0252

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 636
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 637
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v3, 0x0

    .line 654
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 655
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 656
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectMode(Z)V

    .line 657
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 658
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->clearChoices()V

    .line 659
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->dispatchSetActivated(Z)V

    .line 660
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 11
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 751
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 752
    .local v7, "listView":Landroid/widget/ListView;
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 753
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getVisibleOffset()I

    move-result v9

    add-int v8, p2, v9

    .line 754
    .local v8, "visiblePosition":I
    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v3

    .line 755
    .local v3, "checkedCount":I
    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->isMutiSelected:Z

    .line 757
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mSelectedConvCount:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    invoke-virtual {v0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v4

    .line 759
    .local v4, "cid":J
    if-eqz p5, :cond_3

    .line 760
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-ltz v9, :cond_0

    invoke-virtual {v0, v4, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->AddMultiSelectRecord(J)V

    .line 764
    :cond_0
    :goto_1
    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->isMutiSelected:Z

    if-eqz v9, :cond_4

    .line 767
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mVContactMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 768
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mCallMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 769
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mMessageMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 770
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mAddStarMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 771
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mRemoveStarMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 772
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mEditContactMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 773
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mDeleteContactMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 813
    :goto_2
    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 816
    :cond_1
    return-void

    .line 755
    .end local v4    # "cid":J
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 762
    .restart local v4    # "cid":J
    :cond_3
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-ltz v9, :cond_0

    invoke-virtual {v0, v4, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->RemoveMultiSelectRecord(J)Z

    goto :goto_1

    .line 775
    :cond_4
    if-nez p5, :cond_5

    .line 777
    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 778
    .local v2, "checkStates":Landroid/util/SparseBooleanArray;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getVisibleOffset()I

    move-result v10

    add-int v8, v9, v10

    .line 780
    .end local v2    # "checkStates":Landroid/util/SparseBooleanArray;
    :cond_5
    invoke-virtual {v0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v1

    .line 781
    .local v1, "bHavePhoneNumber":Z
    const/4 v6, 0x0

    .line 784
    .local v6, "isStared":Z
    invoke-virtual {v0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactIsRemoteDirectoryEntry(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 787
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mAddStarMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 788
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mRemoveStarMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 789
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mEditContactMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 790
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mDeleteContactMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 806
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mVContactMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 809
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mCallMenuView:Landroid/view/MenuItem;

    if-eqz v1, :cond_9

    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_4
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 810
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mMessageMenuView:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_5
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 792
    :cond_6
    invoke-virtual {v0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactIsUserProfile(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 794
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mAddStarMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 795
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mRemoveStarMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 801
    :goto_6
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mEditContactMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 802
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mDeleteContactMenuView:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 797
    :cond_7
    invoke-virtual {v0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getStarred(I)Z

    move-result v6

    .line 798
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mAddStarMenuView:Landroid/view/MenuItem;

    if-nez v6, :cond_8

    const/4 v9, 0x1

    :goto_7
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 799
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mRemoveStarMenuView:Landroid/view/MenuItem;

    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 798
    :cond_8
    const/4 v9, 0x0

    goto :goto_7

    .line 809
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 810
    :cond_a
    const/4 v9, 0x0

    goto :goto_5
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    .line 641
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 642
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040035

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 644
    .local v1, "v":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 646
    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->mSelectedConvCount:Landroid/widget/TextView;

    .line 648
    .end local v1    # "v":Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 649
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {v0, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectMode(Z)V

    .line 650
    return v5
.end method
