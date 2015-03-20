.class Lcom/android/contacts/activities/ContactSelectionActivity$3;
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
    .line 948
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 952
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const v5, 0x7f070098

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 953
    .local v2, "select_or_unselect_all":Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 954
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v4, v4, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v4, v4, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 962
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 965
    .local v1, "offsetOfRealData":I
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # invokes: Lcom/android/contacts/activities/ContactSelectionActivity;->getTotalContactsCounts()I
    invoke-static {v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1100(Lcom/android/contacts/activities/ContactSelectionActivity;)I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 966
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 969
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v4, v4, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-eqz v4, :cond_5

    .line 970
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 971
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v4, v0}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 976
    .local v3, "uri":Landroid/net/Uri;
    :goto_2
    if-eqz v3, :cond_3

    .line 977
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v4, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    iget-object v4, v4, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    add-int v5, v0, v1

    invoke-virtual {v4, v5, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 966
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 973
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v4, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 982
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v4, v4, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    if-eqz v4, :cond_3

    .line 983
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 984
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {v4, v0}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 989
    .restart local v3    # "uri":Landroid/net/Uri;
    :goto_4
    if-eqz v3, :cond_3

    .line 990
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v4, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    iget-object v4, v4, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    add-int v5, v0, v1

    invoke-virtual {v4, v5, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_3

    .line 986
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_6
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v4, v0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_4

    .line 996
    .end local v0    # "i":I
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView;->clearChoices()V

    .line 997
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView;->requestLayout()V

    .line 998
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 1000
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v4, v4, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-eqz v4, :cond_a

    .line 1001
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1002
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v4, v0}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 1007
    .restart local v3    # "uri":Landroid/net/Uri;
    :goto_6
    if-eqz v3, :cond_8

    .line 1008
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v4, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    iget-object v4, v4, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_8
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1004
    :cond_9
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v4, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_6

    .line 1010
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_a
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v4, v4, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    if-eqz v4, :cond_8

    .line 1011
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1012
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {v4, v0}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 1017
    .restart local v3    # "uri":Landroid/net/Uri;
    :goto_8
    if-eqz v3, :cond_8

    .line 1018
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v4, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    iget-object v4, v4, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1014
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_b
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v4, v0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_8

    .line 1024
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_c
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$3;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # invokes: Lcom/android/contacts/activities/ContactSelectionActivity;->configureSelectUnSelectButton()Z
    invoke-static {v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$900(Lcom/android/contacts/activities/ContactSelectionActivity;)Z

    goto/16 :goto_0
.end method
