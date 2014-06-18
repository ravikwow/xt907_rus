.class Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;
.super Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToMyContactsQuickFix"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1

    .prologue
    .line 2044
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p2, "x1"    # Lcom/android/contacts/detail/ContactDetailFragment$1;

    .prologue
    .line 2044
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 17

    .prologue
    .line 2093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J
    invoke-static {v1, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J

    move-result-wide v10

    .line 2096
    .local v10, "defaultGroupId":J
    const-wide/16 v3, -0x1

    cmp-long v1, v10, v3

    if-nez v1, :cond_0

    .line 2116
    :goto_0
    return-void

    .line 2099
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v2

    .line 2100
    .local v2, "contactDeltaList":Lcom/android/contacts/model/RawContactDeltaList;
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/model/RawContactDelta;

    .line 2102
    .local v15, "rawContactEntityDelta":Lcom/android/contacts/model/RawContactDelta;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    .line 2103
    .local v9, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v15, v9}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v16

    .line 2104
    .local v16, "type":Lcom/android/contacts/model/account/AccountType;
    const-string v1, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v13

    .line 2106
    .local v13, "groupMembershipKind":Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {v15, v13}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v12

    .line 2108
    .local v12, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v12, v10, v11}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->setGroupRowId(J)V

    .line 2112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "android.intent.action.VIEW"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v14

    .line 2115
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v1, 0x7f0b0194

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplicable()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2048
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return v2

    .line 2051
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2054
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 2060
    if-eqz v0, :cond_0

    .line 2063
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J
    invoke-static {v3, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J

    move-result-wide v3

    .line 2064
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContact;

    .line 2067
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v5

    .line 2069
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2073
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v0

    const-class v5, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    invoke-static {v0, v5}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    .line 2075
    check-cast v0, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    .line 2076
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;->getGroupRowId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2077
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-nez v0, :cond_2

    move v0, v1

    .line 2083
    :goto_1
    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method
