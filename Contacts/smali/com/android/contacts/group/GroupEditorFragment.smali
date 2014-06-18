.class public Lcom/android/contacts/group/GroupEditorFragment;
.super Landroid/app/Fragment;
.source "GroupEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;,
        Lcom/android/contacts/group/GroupEditorFragment$Member;,
        Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/group/GroupEditorFragment$Status;,
        Lcom/android/contacts/group/GroupEditorFragment$Listener;
    }
.end annotation


# static fields
.field protected static final PROJECTION_CONTACT:[Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNameIsReadOnly:Z

.field private mGroupNameView:Landroid/widget/TextView;

.field private mGroupUri:Landroid/net/Uri;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mLastGroupEditorId:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListMembersToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mListMembersToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mListToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

.field private mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

.field private mOriginalGroupName:Ljava/lang/String;

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mRootView:Landroid/view/ViewGroup;

.field private mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    .line 768
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$2;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 792
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$3;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 831
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$4;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 207
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/SuggestedMemberListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/group/GroupEditorFragment$Member;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->removeMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/ContactPhotoManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupEditorFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupEditorFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupEditorFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->addExistingMembers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/group/GroupEditorFragment$Member;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->addMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    return-void
.end method

.method private addExistingMembers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 724
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 725
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 726
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 727
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->notifyDataSetChanged()V

    .line 731
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->updateExistingMembersList(Ljava/util/List;)V

    .line 734
    :cond_0
    return-void
.end method

.method private addMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 3
    .param p1, "member"    # Lcom/android/contacts/group/GroupEditorFragment$Member;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->notifyDataSetChanged()V

    .line 743
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->addNewMember(J)V

    .line 744
    return-void
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 475
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    const-string v0, "GroupEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group not found with URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Closing activity now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 483
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 484
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 485
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 486
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    .line 487
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    .line 490
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 486
    goto :goto_1
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, "listMembers":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 713
    .local v2, "size":I
    new-array v1, v2, [J

    .line 714
    .local v1, "membersArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 715
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getRawContactId()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    :cond_0
    return-object v1
.end method

.method private getAccountType()Lcom/android/contacts/model/account/AccountType;
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method private getUpdatedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "groupNameFromTextView":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    const/4 v0, 0x0

    .line 708
    .end local v0    # "groupNameFromTextView":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private hasMembershipChange()Z
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNameChange()Z
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidGroupName()Z
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 370
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v0

    goto :goto_0
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 290
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 291
    const-string v0, "groupUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 292
    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 294
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 295
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 296
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 297
    const-string v0, "dataSet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 299
    const-string v0, "groupNameIsReadOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    .line 300
    const-string v0, "originalGroupName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 302
    const-string v0, "membersToAdd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    .line 303
    const-string v0, "membersToRemove"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    .line 304
    const-string v0, "membersToDisplay"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    .line 305
    return-void
.end method

.method private removeMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 3
    .param p1, "member"    # Lcom/android/contacts/group/GroupEditorFragment$Member;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 758
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->notifyDataSetChanged()V

    .line 762
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->removeMember(J)V

    .line 763
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private revert()Z
    .locals 1

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    .line 533
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 531
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/group/GroupEditorFragment;)V

    goto :goto_0
.end method

.method private selectAccountAndCreateGroup()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const-string v1, "GroupEditorFragment"

    const-string v2, "No accounts were found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v1}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onAccountsNotFound()V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 329
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 330
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 331
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 332
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 336
    :cond_2
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 337
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b010e

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    const/4 v4, 0x0

    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setupEditorForAccount()V
    .locals 15

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    .line 378
    .local v2, "accountType":Lcom/android/contacts/model/account/AccountType;
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->isGroupMembershipEditable()Z

    move-result v5

    .line 379
    .local v5, "editable":Z
    const/4 v7, 0x0

    .line 380
    .local v7, "isNewEditor":Z
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v10, v5}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->setIsGroupMembershipEditable(Z)V

    .line 386
    if-eqz v5, :cond_6

    const v8, 0x7f040060

    .line 388
    .local v8, "newGroupEditorId":I
    :goto_0
    iget v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    if-eq v8, v10, :cond_7

    .line 389
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const-string v11, "currentEditorForAccount"

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    .line 390
    .local v9, "oldEditorView":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 391
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 393
    :cond_0
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 394
    .local v6, "editorView":Landroid/view/View;
    const-string v10, "currentEditorForAccount"

    invoke-virtual {v6, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 395
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .line 396
    iput v8, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    .line 397
    const/4 v7, 0x1

    .line 405
    .end local v9    # "oldEditorView":Landroid/view/View;
    :cond_1
    const v10, 0x7f0600de

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    .line 406
    const v10, 0x7f0600f0

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/AutoCompleteTextView;

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 409
    const v10, 0x102000a

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListView:Landroid/widget/ListView;

    .line 410
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 413
    const v10, 0x7f0600dd

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 414
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 415
    .local v3, "accountTypeDisplayLabel":Ljava/lang/CharSequence;
    const v10, 0x7f0600da

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 416
    .local v0, "accountIcon":Landroid/widget/ImageView;
    const v10, 0x7f0600d8

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 417
    .local v4, "accountTypeTextView":Landroid/widget/TextView;
    const v10, 0x7f0600d9

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 418
    .local v1, "accountNameTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 419
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v11, 0x7f0b016d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    .end local v0    # "accountIcon":Landroid/widget/ImageView;
    .end local v1    # "accountNameTextView":Landroid/widget/TextView;
    .end local v3    # "accountTypeDisplayLabel":Ljava/lang/CharSequence;
    .end local v4    # "accountTypeTextView":Landroid/widget/TextView;
    :cond_3
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v10, :cond_4

    .line 430
    new-instance v10, Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v12, 0x109000a

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/group/SuggestedMemberListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .line 432
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 433
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setAccountType(Ljava/lang/String;)V

    .line 434
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setAccountName(Ljava/lang/String;)V

    .line 435
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setDataSet(Ljava/lang/String;)V

    .line 436
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 437
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v11, Lcom/android/contacts/group/GroupEditorFragment$1;

    invoke-direct {v11, p0}, Lcom/android/contacts/group/GroupEditorFragment$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 456
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->updateExistingMembersList(Ljava/util/List;)V

    .line 460
    :cond_4
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    iget-boolean v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    if-nez v10, :cond_8

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 461
    if-eqz v7, :cond_5

    .line 462
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 464
    :cond_5
    sget-object v10, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 465
    return-void

    .line 386
    .end local v6    # "editorView":Landroid/view/View;
    .end local v8    # "newGroupEditorId":I
    :cond_6
    const v8, 0x7f04004e

    goto/16 :goto_0

    .line 399
    .restart local v8    # "newGroupEditorId":I
    :cond_7
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const-string v11, "currentEditorForAccount"

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 400
    .restart local v6    # "editorView":Landroid/view/View;
    if-nez v6, :cond_1

    .line 401
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Group editor view not found"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 460
    :cond_8
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private startGroupMetaDataLoader()V
    .locals 4

    .prologue
    .line 264
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 265
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 267
    return-void
.end method


# virtual methods
.method public doRevertAction()V
    .locals 1

    .prologue
    .line 538
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 539
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onReverted()V

    .line 540
    :cond_0
    return-void
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "groupUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 469
    iput-object p2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 470
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 471
    iput-object p3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 472
    return-void

    .line 470
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public loadMemberToAddToGroup(JLjava/lang/String;)V
    .locals 4
    .param p1, "rawContactId"    # J
    .param p3, "contactId"    # Ljava/lang/String;

    .prologue
    .line 494
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "rawContactId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 496
    const-string v1, "memberLookupUri"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 498
    return-void
.end method

.method public onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 344
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 345
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 346
    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 347
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    .line 348
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 356
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 229
    if-eqz p1, :cond_2

    .line 231
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 232
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v2, v3, :cond_0

    .line 261
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v2, v3, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 239
    :cond_2
    const-string v2, "android.intent.action.EDIT"

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 241
    :cond_3
    const-string v2, "android.intent.action.INSERT"

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 242
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_4

    move-object v0, v3

    .line 244
    .local v0, "account":Landroid/accounts/Account;
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_5

    move-object v1, v3

    .line 247
    .local v1, "dataSet":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_6

    .line 249
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 250
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 252
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 242
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "dataSet":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    move-object v0, v2

    goto :goto_1

    .line 244
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "com.android.contacts.extra.DATA_SET"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 255
    .restart local v1    # "dataSet":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->selectAccountAndCreateGroup()V

    goto :goto_0

    .line 258
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "dataSet":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Action String "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Only support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 220
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    .line 221
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 222
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;-><init>(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    .line 223
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 515
    const v0, 0x7f100008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 516
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->setHasOptionsMenu(Z)V

    .line 212
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 213
    const v0, 0x7f04005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    .line 214
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDoneClicked()V
    .locals 1

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->isGroupMembershipEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->save()Z

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 520
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 524
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 522
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->revert()Z

    move-result v0

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x7f060166
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveCompleted(ZLandroid/net/Uri;)V
    .locals 17
    .param p1, "hadChanges"    # Z
    .param p2, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 625
    if-eqz p2, :cond_0

    const/4 v13, 0x1

    .line 626
    .local v13, "success":Z
    :goto_0
    const-string v14, "GroupEditorFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onSaveCompleted("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-eqz p1, :cond_5

    .line 628
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    if-eqz v13, :cond_1

    const v14, 0x7f0b0062

    :goto_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v14, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 631
    if-eqz v13, :cond_5

    .line 632
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 633
    .local v4, "groupId":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 634
    .local v3, "addedSize":I
    if-lez v3, :cond_3

    .line 635
    new-array v2, v3, [J

    .line 636
    .local v2, "addedContactIds":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_2

    .line 637
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-virtual {v14}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v14

    aput-wide v14, v2, v6

    .line 636
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 625
    .end local v2    # "addedContactIds":[J
    .end local v3    # "addedSize":I
    .end local v4    # "groupId":J
    .end local v6    # "i":I
    .end local v13    # "success":Z
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 628
    .restart local v13    # "success":Z
    :cond_1
    const v14, 0x7f0b0063

    goto :goto_1

    .line 639
    .restart local v2    # "addedContactIds":[J
    .restart local v3    # "addedSize":I
    .restart local v4    # "groupId":J
    .restart local v6    # "i":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "CONTACT_GRP_ASN"

    invoke-static {v14, v15, v4, v5, v2}, Lcom/motorola/contacts/util/MEContacts;->onGroupMembership(Landroid/content/Context;Ljava/lang/String;J[J)V

    .line 643
    .end local v2    # "addedContactIds":[J
    .end local v6    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 644
    .local v9, "removedSize":I
    if-lez v9, :cond_5

    .line 645
    new-array v1, v9, [J

    .line 646
    .local v1, "RemovedContactIds":[J
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v9, :cond_4

    .line 647
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-virtual {v14}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v14

    aput-wide v14, v1, v6

    .line 646
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 649
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "CONTACT_GRP_DEA"

    invoke-static {v14, v15, v4, v5, v1}, Lcom/motorola/contacts/util/MEContacts;->onGroupMembership(Landroid/content/Context;Ljava/lang/String;J[J)V

    .line 657
    .end local v1    # "RemovedContactIds":[J
    .end local v3    # "addedSize":I
    .end local v4    # "groupId":J
    .end local v6    # "i":I
    .end local v9    # "removedSize":I
    :cond_5
    if-eqz v13, :cond_8

    if-eqz p2, :cond_8

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 660
    .local v10, "requestAuthority":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 661
    .local v12, "resultIntent":Landroid/content/Intent;
    const-string v14, "contacts"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 663
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 664
    .restart local v4    # "groupId":J
    const-string v14, "content://contacts/groups"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 665
    .local v7, "legacyContentUri":Landroid/net/Uri;
    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 667
    .local v8, "legacyUri":Landroid/net/Uri;
    invoke-virtual {v12, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 673
    .end local v4    # "groupId":J
    .end local v7    # "legacyContentUri":Landroid/net/Uri;
    .end local v8    # "legacyUri":Landroid/net/Uri;
    :goto_4
    const/4 v11, -0x1

    .line 679
    .end local v10    # "requestAuthority":Ljava/lang/String;
    .local v11, "resultCode":I
    :goto_5
    sget-object v14, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 680
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v14, :cond_6

    .line 681
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v14, v11, v12}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onSaveFinished(ILandroid/content/Intent;)V

    .line 683
    :cond_6
    return-void

    .line 670
    .end local v11    # "resultCode":I
    .restart local v10    # "requestAuthority":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4

    .line 675
    .end local v10    # "requestAuthority":Ljava/lang/String;
    .end local v12    # "resultIntent":Landroid/content/Intent;
    :cond_8
    const/4 v11, 0x0

    .line 676
    .restart local v11    # "resultCode":I
    const/4 v12, 0x0

    .restart local v12    # "resultIntent":Landroid/content/Intent;
    goto :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "groupUri"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 274
    const-string v0, "groupId"

    iget-wide v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 276
    const-string v0, "status"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 277
    const-string v0, "accountName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "accountType"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "dataSet"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "groupNameIsReadOnly"

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    const-string v0, "originalGroupName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "membersToAdd"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 285
    const-string v0, "membersToRemove"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 286
    const-string v0, "membersToDisplay"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 287
    return-void
.end method

.method public save()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 575
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v4, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-eq v2, v4, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v1

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 583
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v2

    if-nez v2, :cond_2

    .line 584
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZLandroid/net/Uri;)V

    move v1, v13

    .line 585
    goto :goto_0

    .line 588
    :cond_2
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment$Status;->SAVING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 590
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 592
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 595
    const/4 v12, 0x0

    .line 596
    .local v12, "saveIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v3

    .line 601
    .local v3, "membersToAddArray":[J
    new-instance v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v5}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "saveCompleted"

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 620
    :goto_1
    invoke-virtual {v0, v12}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v1, v13

    .line 621
    goto :goto_0

    .line 606
    .end local v3    # "membersToAddArray":[J
    :cond_3
    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 608
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v3

    .line 611
    .restart local v3    # "membersToAddArray":[J
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v9

    .line 614
    .local v9, "membersToRemoveArray":[J
    iget-wide v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "saveCompleted"

    move-object v4, v0

    move-object v8, v3

    invoke-static/range {v4 .. v11}, Lcom/android/contacts/ContactSaveService;->createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 617
    goto :goto_1

    .line 618
    .end local v3    # "membersToAddArray":[J
    .end local v9    # "membersToRemoveArray":[J
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid intent action type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 309
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 312
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/group/GroupEditorFragment$Listener;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    .line 502
    return-void
.end method
