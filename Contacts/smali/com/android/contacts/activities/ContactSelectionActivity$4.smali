.class Lcom/android/contacts/activities/ContactSelectionActivity$4;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v1, v1, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v1, v1, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1178
    :cond_1
    :goto_0
    return-void

    .line 1038
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v17

    .line 1039
    .local v17, "userCheckedIds":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # invokes: Lcom/android/contacts/activities/ContactSelectionActivity;->getTotalContactsCounts()I
    invoke-static {v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1100(Lcom/android/contacts/activities/ContactSelectionActivity;)I

    move-result v8

    .line 1040
    .local v8, "totalTargetNumbers":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1041
    .local v9, "sessionid":J
    const-wide/32 v1, 0x2932e00

    sub-long v4, v9, v1

    .line 1042
    .local v4, "expired_session_id":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1044
    .local v3, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v14

    .line 1051
    .local v14, "offsetOfRealData":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v15, "selected_contact_uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .local v7, "selected_contact_values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v8, :cond_9

    .line 1054
    if-eqz v17, :cond_5

    add-int v1, v12, v14

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1056
    const/16 v16, 0x0

    .line 1058
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v1, v1, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-eqz v1, :cond_7

    .line 1059
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1060
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v1, v12}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v16

    .line 1072
    :cond_3
    :goto_2
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1075
    .local v11, "curValues":Landroid/content/ContentValues;
    const-string v1, "requester"

    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v1, "session_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1077
    if-eqz v16, :cond_4

    const-string v1, "data"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_4
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    .end local v11    # "curValues":Landroid/content/ContentValues;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1062
    .restart local v16    # "uri":Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1, v12}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v16

    goto :goto_2

    .line 1064
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v1, v1, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    if-eqz v1, :cond_3

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1066
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {v1, v12}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v16

    goto :goto_2

    .line 1068
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v1, v12}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v16

    goto :goto_2

    .line 1082
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1084
    .local v6, "userSelectedNumbers":I
    const-string v1, "ContactSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "User Selection: ("

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, ")"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/16 v1, 0x3e8

    if-gt v6, v1, :cond_b

    .line 1087
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1088
    .local v13, "intent":Landroid/content/Intent;
    if-ne v6, v8, :cond_a

    .line 1089
    const-string v1, "com.android.contacts.SelectionResultAllSelected"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1093
    :goto_3
    const-string v1, "com.android.contacts.SelectionResultIncluded"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1094
    const-string v1, "com.android.contacts.SelectedContacts"

    invoke-virtual {v13, v1, v15}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1095
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v1, v13}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1091
    :cond_a
    const-string v1, "com.android.contacts.SelectionResultAllSelected"

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 1099
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_c

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 1102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1202(Lcom/android/contacts/activities/ContactSelectionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1107
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    move-object/from16 v18, v0

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity$4;Landroid/content/ContentResolver;JILjava/util/ArrayList;IJ)V

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 1176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v2, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
