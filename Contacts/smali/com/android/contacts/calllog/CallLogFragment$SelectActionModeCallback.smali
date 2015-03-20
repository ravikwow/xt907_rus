.class Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectActionModeCallback"
.end annotation


# instance fields
.field private isMutiSelected:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mAddMenuView:Landroid/view/MenuItem;

.field private mCallMenuView:Landroid/view/MenuItem;

.field private mEditBeforeCallMenuView:Landroid/view/MenuItem;

.field private mMessageMenuView:Landroid/view/MenuItem;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedConvCount:Landroid/widget/TextView;

.field private mTaskMenuView:Landroid/view/MenuItem;

.field private mVContactMenuView:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;Lcom/android/contacts/calllog/CallLogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;
    .param p2, "x1"    # Lcom/android/contacts/calllog/CallLogFragment$1;

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 687
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 31
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 728
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogFragment;->access$500()Z

    move-result v26

    if-eqz v26, :cond_0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onActionItemClicked entered, isMutiSelected = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 729
    :cond_0
    const/16 v18, 0x0

    .line 730
    .local v18, "number":Ljava/lang/String;
    const/4 v8, 0x0

    .line 731
    .local v8, "formatNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 732
    .local v6, "cursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 733
    .local v16, "lookupUri":Landroid/net/Uri;
    const/16 v17, 0x0

    .line 734
    .local v17, "name":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .local v21, "sbNumber":Ljava/lang/StringBuilder;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    .local v25, "tmpId":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v15

    .line 737
    .local v15, "listView":Landroid/widget/ListView;
    invoke-virtual {v15}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v22

    .line 738
    .local v22, "selectedNumbers":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/common/widget/GroupingListAdapter;->getCount()I

    move-result v4

    .line 739
    .local v4, "adapterSize":I
    invoke-virtual {v15}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 740
    .local v5, "checkStates":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    move/from16 v26, v0

    if-nez v26, :cond_4

    .line 743
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v4, :cond_c

    .line 744
    invoke-virtual {v5, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    check-cast v6, Landroid/database/Cursor;

    .line 746
    .restart local v6    # "cursor":Landroid/database/Cursor;
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 747
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 748
    const/16 v26, 0xf

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 749
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 750
    const/4 v9, 0x1

    .line 751
    .local v9, "groupSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/common/widget/GroupingListAdapter;->isGroupHeader(I)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/common/widget/GroupingListAdapter;->getGroupSize(I)I

    move-result v9

    .line 754
    :cond_1
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    if-ge v14, v9, :cond_c

    .line 755
    if-eqz v14, :cond_2

    .line 756
    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 759
    :cond_2
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 760
    .local v11, "id":J
    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 754
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 743
    .end local v9    # "groupSize":I
    .end local v11    # "id":J
    .end local v14    # "j":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 768
    .end local v10    # "i":I
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    if-ge v10, v4, :cond_c

    .line 769
    invoke-virtual {v5, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v26

    if-nez v26, :cond_6

    .line 768
    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 770
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    check-cast v6, Landroid/database/Cursor;

    .line 771
    .restart local v6    # "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 772
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogAdapter;->getPhoneNumberHelper()Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 774
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_7
    const/4 v9, 0x1

    .line 777
    .restart local v9    # "groupSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/common/widget/GroupingListAdapter;->isGroupHeader(I)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/common/widget/GroupingListAdapter;->getGroupSize(I)I

    move-result v9

    .line 780
    :cond_8
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_4
    if-ge v14, v9, :cond_a

    .line 781
    if-eqz v14, :cond_9

    .line 782
    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 785
    :cond_9
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 786
    .restart local v11    # "id":J
    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 780
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 789
    .end local v11    # "id":J
    :cond_a
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogAdapter;->getPhoneNumberHelper()Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 791
    const-string v26, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    :cond_b
    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_3

    .line 799
    .end local v9    # "groupSize":I
    .end local v14    # "j":I
    :cond_c
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogFragment;->access$500()Z

    move-result v26

    if-eqz v26, :cond_d

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onCreateActionMode: number"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 800
    :cond_d
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogFragment;->access$500()Z

    move-result v26

    if-eqz v26, :cond_e

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onCreateActionMode: id"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 801
    :cond_e
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    .line 897
    .end local v8    # "formatNumber":Ljava/lang/String;
    :cond_f
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    .line 898
    const/16 v26, 0x1

    return v26

    .line 803
    .restart local v8    # "formatNumber":Ljava/lang/String;
    :sswitch_0
    move-object/from16 v20, v25

    .line 804
    .local v20, "sbId":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v27, v0

    const v28, 0x7f0c009f

    invoke-virtual/range {v27 .. v28}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v28, ""

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-static/range {v26 .. v30}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v19

    .line 807
    .local v19, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->show()V

    .line 809
    new-instance v23, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback$1;-><init>(Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;Ljava/lang/StringBuilder;Landroid/app/ProgressDialog;)V

    .line 823
    .local v23, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    .line 827
    .end local v19    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v20    # "sbId":Ljava/lang/StringBuilder;
    .end local v23    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    move/from16 v26, v0

    if-nez v26, :cond_10

    .line 828
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.SENDTO"

    const-string v27, "sms"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 829
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 831
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_10
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.SENDTO"

    const-string v27, "sms"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 832
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 837
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    move/from16 v26, v0

    if-nez v26, :cond_f

    .line 838
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.CALL_PRIVILEGED"

    const-string v27, "tel"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 839
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    sget-object v27, Lcom/motorola/contacts/util/MEDialer$DialFrom;->RECENT:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v13, v1}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 845
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    move/from16 v26, v0

    if-nez v26, :cond_f

    .line 846
    new-instance v13, Landroid/content/Intent;

    const-string v26, "com.motorola.contacts.ACTION_ADD_CONTACT_DIALOG"

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v26, "phone"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 853
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    move/from16 v26, v0

    if-nez v26, :cond_f

    .line 854
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 855
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 860
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    move/from16 v26, v0

    if-nez v26, :cond_f

    .line 861
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.DIAL"

    const-string v27, "tel"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 862
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 871
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    move/from16 v26, v0

    if-nez v26, :cond_f

    .line 873
    const/16 v24, 0x0

    .line 874
    .local v24, "taskifyTitle":Ljava/lang/String;
    if-eqz v16, :cond_11

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    # setter for: Lcom/android/contacts/calllog/CallLogFragment;->mTaskifyContextMenuTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$602(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 876
    move-object/from16 v24, v17

    .line 881
    .end local v8    # "formatNumber":Ljava/lang/String;
    :goto_6
    new-instance v13, Landroid/content/Intent;

    const-string v26, "com.motorola.blur.tasks.ACTION_NEW_TASKIFY"

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 882
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v26, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v27, v0

    const v28, 0x7f0c025d

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v24, v29, v30

    invoke-virtual/range {v27 .. v29}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    const-string v26, "uri"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "tel:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 887
    :catch_0
    move-exception v7

    .line 888
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    # invokes: Lcom/android/contacts/calllog/CallLogFragment;->showTaskFailedDialog()V
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/calllog/CallLogFragment;->access$700(Lcom/android/contacts/calllog/CallLogFragment;)V

    .line 889
    const-string v26, "CallLogFragment"

    const-string v27, "ActivityNotFoundException can\'t start Taskify activity/app"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 878
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v8    # "formatNumber":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    move-object/from16 v26, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_12

    move-object/from16 v8, v18

    .end local v8    # "formatNumber":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v26

    # setter for: Lcom/android/contacts/calllog/CallLogFragment;->mTaskifyContextMenuTitle:Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/android/contacts/calllog/CallLogFragment;->access$602(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 879
    move-object/from16 v24, v18

    goto/16 :goto_6

    .line 801
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0700a9 -> :sswitch_1
        0x7f070191 -> :sswitch_0
        0x7f070192 -> :sswitch_3
        0x7f070193 -> :sswitch_4
        0x7f070194 -> :sswitch_5
        0x7f070195 -> :sswitch_2
        0x7f070198 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 690
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 691
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 692
    const v1, 0x7f070195

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mCallMenuView:Landroid/view/MenuItem;

    .line 693
    const v1, 0x7f070192

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mAddMenuView:Landroid/view/MenuItem;

    .line 694
    const v1, 0x7f070194

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mEditBeforeCallMenuView:Landroid/view/MenuItem;

    .line 697
    const v1, 0x7f070198

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mTaskMenuView:Landroid/view/MenuItem;

    .line 698
    const v1, 0x7f070193

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mVContactMenuView:Landroid/view/MenuItem;

    .line 699
    const v1, 0x7f0700a9

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMessageMenuView:Landroid/view/MenuItem;

    .line 700
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/calllog/CallLogAdapter;->setActionModeStatus(Z)V

    .line 702
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 705
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mSelectedConvCount:Landroid/widget/TextView;

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 709
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0252

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 712
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 713
    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 902
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogFragment;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onDestroyActionMode enter"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->setActionModeStatus(Z)V

    .line 904
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 905
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 14
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 909
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v11}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 910
    .local v9, "listView":Landroid/widget/ListView;
    const/4 v10, 0x0

    .line 911
    .local v10, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 912
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 913
    .local v5, "contactInfoPresent":Z
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogFragment;->access$500()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemCheckedStateChanged: position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " checked= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 914
    :cond_0
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogFragment;->access$500()Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemCheckedStateChanged: listView "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 916
    :cond_1
    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v11, 0x0

    :goto_0
    iput-boolean v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    .line 917
    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v4

    .line 919
    .local v4, "checkedCount":I
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mSelectedConvCount:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    iget-boolean v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->isMutiSelected:Z

    if-eqz v11, :cond_4

    .line 923
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mCallMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 924
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mAddMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 925
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mEditBeforeCallMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 926
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mTaskMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 929
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mVContactMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 930
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMessageMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1009
    :cond_2
    :goto_1
    return-void

    .line 916
    .end local v4    # "checkedCount":I
    :cond_3
    const/4 v11, 0x1

    goto :goto_0

    .line 933
    .restart local v4    # "checkedCount":I
    :cond_4
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static {v11}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/common/widget/GroupingListAdapter;->getCount()I

    move-result v2

    .line 934
    .local v2, "adapterSize":I
    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 935
    .local v3, "checkStates":Landroid/util/SparseBooleanArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v2, :cond_5

    .line 936
    invoke-virtual {v3, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 937
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static {v11}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    check-cast v6, Landroid/database/Cursor;

    .line 941
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    if-eqz v6, :cond_b

    .line 942
    const/4 v11, 0x1

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 943
    const/16 v11, 0xb

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_a

    const/4 v5, 0x1

    .line 950
    :goto_3
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static {v11}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/calllog/CallLogAdapter;->getPhoneNumberHelper()Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 951
    .local v8, "isVoicemail":Z
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogFragment;->access$500()Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemCheckedStateChanged: isVoicemail = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "number = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 953
    :cond_6
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static {v11}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/calllog/CallLogAdapter;->getPhoneNumberHelper()Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 955
    if-eqz v6, :cond_7

    .line 956
    const/4 v11, 0x4

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_c

    .line 957
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mCallMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 964
    :cond_7
    :goto_4
    if-eqz v5, :cond_d

    .line 965
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mVContactMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 966
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mAddMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 977
    :goto_5
    iget-object v12, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mEditBeforeCallMenuView:Landroid/view/MenuItem;

    if-nez v8, :cond_f

    const/4 v11, 0x1

    :goto_6
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 979
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMessageMenuView:Landroid/view/MenuItem;

    iget-object v12, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static {v12}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/calllog/CallLogAdapter;->getPhoneNumberHelper()Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 981
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogFragment;->access$500()Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isTaskifyAvailable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->isTaskifyAvailable:Z
    invoke-static {v12}, Lcom/android/contacts/calllog/CallLogFragment;->access$800(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 982
    :cond_8
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->isTaskifyAvailable:Z
    invoke-static {v11}, Lcom/android/contacts/calllog/CallLogFragment;->access$800(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 983
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mTaskMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 988
    :goto_7
    if-eqz v6, :cond_2

    .line 989
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/16 v12, 0x9

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v13, 0xa

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 935
    .end local v8    # "isVoicemail":Z
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 943
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 945
    :cond_b
    const-string v11, "CallLogFragment"

    const-string v12, "onItemCheckedStateChanged: cursor is null!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 959
    .restart local v8    # "isVoicemail":Z
    :cond_c
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mCallMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 968
    :cond_d
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mVContactMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 969
    if-nez v8, :cond_e

    .line 970
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mAddMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 972
    :cond_e
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mAddMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 977
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 985
    :cond_10
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mTaskMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 999
    :cond_11
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mCallMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1000
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mAddMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1001
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mEditBeforeCallMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1002
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mTaskMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1005
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mVContactMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1006
    iget-object v11, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMessageMenuView:Landroid/view/MenuItem;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 720
    .local v0, "v":Landroid/view/ViewGroup;
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 722
    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->mSelectedConvCount:Landroid/widget/TextView;

    .line 724
    .end local v0    # "v":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
