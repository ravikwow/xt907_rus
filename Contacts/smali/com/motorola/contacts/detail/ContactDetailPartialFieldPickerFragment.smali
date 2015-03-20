.class public Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;
.super Lcom/android/contacts/detail/ContactDetailFragment;
.source "ContactDetailPartialFieldPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mIsCreateFromSavedState:Z

.field private mNameContentValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mOKButton:Landroid/widget/Button;

.field private mOrganizationContentValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoContentValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

.field private mUserCheckedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vCardContentString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mUserCheckedIds:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mNameContentValuesList:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mPhotoContentValuesList:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mOrganizationContentValuesList:Ljava/util/List;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mIsCreateFromSavedState:Z

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->vCardContentString:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->shareContact()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildContact2Vcard()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 770
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 773
    const-string v0, "\r\n"

    .line 774
    const-string v0, " : "

    .line 776
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 777
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 779
    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 783
    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mNameContentValuesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 789
    const-string v0, "vnd.android.cursor.item/name"

    iget-object v1, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mNameContentValuesList:Ljava/util/List;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mPhotoContentValuesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 793
    const-string v0, "vnd.android.cursor.item/photo"

    iget-object v1, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mPhotoContentValuesList:Ljava/util/List;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_3
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mOrganizationContentValuesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 797
    const-string v0, "vnd.android.cursor.item/organization"

    iget-object v1, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mOrganizationContentValuesList:Ljava/util/List;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a

    .line 801
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getCount()I

    move-result v7

    .line 802
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v8

    move v3, v4

    .line 803
    :goto_0
    if-ge v3, v7, :cond_a

    .line 804
    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 803
    :cond_5
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 805
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v1

    .line 806
    instance-of v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 807
    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->contentValues:Landroid/content/ContentValues;

    .line 808
    const-string v0, "mimetype"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 809
    if-eqz v10, :cond_8

    .line 810
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 812
    if-nez v0, :cond_7

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 814
    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_7
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v1

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, v1

    .line 822
    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 823
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v1, v2, v9}, Lcom/motorola/contacts/util/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    :goto_2
    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 825
    :cond_9
    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 832
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->vCardContentString:Ljava/lang/String;

    .line 834
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 835
    new-instance v0, Lcom/android/vcard/VCardComposer;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 837
    invoke-virtual {v0, v5}, Lcom/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 839
    :goto_3
    return-object v0

    :cond_b
    move-object v0, v2

    goto :goto_3
.end method

.method private final buildEntries()V
    .locals 50

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 341
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 342
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v19

    .line 349
    .local v19, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v3, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v27, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/Entity;

    .line 355
    .local v24, "entity":Landroid/content/Entity;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v23

    .line 356
    .local v23, "entValues":Landroid/content/ContentValues;
    const-string v3, "account_type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 357
    .local v18, "accountType":Ljava/lang/String;
    const-string v3, "data_set"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 358
    .local v20, "dataSet":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    .line 360
    .local v40, "rawContactId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v48

    .line 368
    .local v48, "type":Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/Entity$NamedContentValues;

    .line 369
    .local v46, "subValue":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v46

    iget-object v8, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 370
    .local v8, "entryValues":Landroid/content/ContentValues;
    const-string v3, "raw_contact_id"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    const-string v3, "_id"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 373
    .local v6, "dataId":J
    const-string v3, "mimetype"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 376
    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 377
    const-string v3, "data1"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    .line 378
    .local v26, "groupId":Ljava/lang/Long;
    if-eqz v26, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v9, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V

    goto :goto_1

    .line 384
    .end local v26    # "groupId":Ljava/lang/Long;
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v5

    .line 386
    .local v5, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v5, :cond_4

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v9}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v10}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v10

    invoke-static/range {v3 .. v11}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v25

    .line 392
    .local v25, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v28, 0x1

    .line 393
    .local v28, "hasData":Z
    :goto_2
    const-string v3, "is_super_primary"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    .line 394
    .local v47, "superPrimary":Ljava/lang/Integer;
    if-eqz v47, :cond_8

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_8

    const/16 v36, 0x1

    .line 397
    .local v36, "isSuperPrimary":Z
    :goto_3
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mPhotoContentValuesList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_6
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mNameContentValuesList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 392
    .end local v28    # "hasData":Z
    .end local v36    # "isSuperPrimary":Z
    .end local v47    # "superPrimary":Ljava/lang/Integer;
    :cond_7
    const/16 v28, 0x0

    goto :goto_2

    .line 394
    .restart local v28    # "hasData":Z
    .restart local v47    # "superPrimary":Ljava/lang/Integer;
    :cond_8
    const/16 v36, 0x0

    goto :goto_3

    .line 404
    .restart local v36    # "isSuperPrimary":Z
    :cond_9
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v28, :cond_e

    .line 406
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 407
    const-string v3, "normalized_number"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 411
    .local v39, "phoneNumberE164":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-static {v3, v9, v0, v10}, Lcom/motorola/contacts/util/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 414
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v3, :cond_c

    new-instance v38, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v9, "tel"

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v9, v10, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, v38

    invoke-direct {v0, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 416
    .local v38, "phoneIntent":Landroid/content/Intent;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v3, :cond_d

    new-instance v44, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v9, "smsto"

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v9, v10, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, v44

    invoke-direct {v0, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 420
    .local v44, "smsIntent":Landroid/content/Intent;
    :goto_5
    if-eqz v38, :cond_a

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    move-object/from16 v0, v38

    invoke-static {v3, v0, v9}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 443
    :cond_a
    if-eqz v36, :cond_b

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 445
    :cond_b
    move/from16 v0, v36

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 414
    .end local v38    # "phoneIntent":Landroid/content/Intent;
    .end local v44    # "smsIntent":Landroid/content/Intent;
    :cond_c
    const/16 v38, 0x0

    goto :goto_4

    .line 416
    .restart local v38    # "phoneIntent":Landroid/content/Intent;
    :cond_d
    const/16 v44, 0x0

    goto :goto_5

    .line 447
    .end local v38    # "phoneIntent":Landroid/content/Intent;
    .end local v39    # "phoneNumberE164":Ljava/lang/String;
    :cond_e
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v28, :cond_f

    .line 449
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    const-string v10, "mailto"

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 451
    move/from16 v0, v36

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Landroid/util/LongSparseArray;

    move-result-object v3

    move-object/from16 v0, v25

    iget-wide v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-virtual {v3, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/util/DataStatus;

    .line 456
    .local v45, "status":Lcom/android/contacts/util/DataStatus;
    if-eqz v45, :cond_4

    .line 457
    const-string v34, "vnd.android.cursor.item/im"

    .line 458
    .local v34, "imMime":Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v11

    .line 460
    .local v11, "imKind":Lcom/android/contacts/model/DataKind;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v10, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v16

    move-wide v12, v6

    move-object v14, v8

    invoke-static/range {v9 .. v17}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v33

    .line 463
    .local v33, "imEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-static {v3, v0, v8}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 464
    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setPresence(I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 467
    .end local v11    # "imKind":Lcom/android/contacts/model/DataKind;
    .end local v33    # "imEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v34    # "imMime":Ljava/lang/String;
    .end local v45    # "status":Lcom/android/contacts/util/DataStatus;
    :cond_f
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v28, :cond_10

    .line 469
    const/4 v3, 0x4

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 470
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "geo:0,0?q="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 473
    :cond_10
    const-string v3, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v28, :cond_12

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-static {v3, v0, v8}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Landroid/util/LongSparseArray;

    move-result-object v3

    move-object/from16 v0, v25

    iget-wide v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-virtual {v3, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/util/DataStatus;

    .line 479
    .restart local v45    # "status":Lcom/android/contacts/util/DataStatus;
    if-eqz v45, :cond_11

    .line 480
    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setPresence(I)V

    .line 482
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 483
    .end local v45    # "status":Lcom/android/contacts/util/DataStatus;
    :cond_12
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mOrganizationContentValuesList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 488
    :cond_13
    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v28, :cond_16

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getNameRawContactId()J

    move-result-wide v9

    cmp-long v3, v9, v40

    if-nez v3, :cond_14

    const/16 v35, 0x1

    .line 493
    .local v35, "isNameRawContact":Z
    :goto_6
    if-eqz v35, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v3

    const/16 v9, 0x23

    if-ne v3, v9, :cond_15

    const/16 v21, 0x1

    .line 497
    .local v21, "duplicatesTitle":Z
    :goto_7
    if-nez v21, :cond_4

    .line 498
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 490
    .end local v21    # "duplicatesTitle":Z
    .end local v35    # "isNameRawContact":Z
    :cond_14
    const/16 v35, 0x0

    goto :goto_6

    .line 493
    .restart local v35    # "isNameRawContact":Z
    :cond_15
    const/16 v21, 0x0

    goto :goto_7

    .line 501
    .end local v35    # "isNameRawContact":Z
    :cond_16
    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v28, :cond_17

    .line 503
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 504
    const/16 v3, 0x64

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 506
    :cond_17
    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v28, :cond_18

    .line 508
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 509
    const/16 v3, 0xa

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 511
    :try_start_0
    new-instance v49, Landroid/net/WebAddress;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 512
    .local v49, "webAddress":Landroid/net/WebAddress;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual/range {v49 .. v49}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v49    # "webAddress":Landroid/net/WebAddress;
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 514
    :catch_0
    move-exception v22

    .line 515
    .local v22, "e":Landroid/net/ParseException;
    const-string v3, "CDPFPickerFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t parse website: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 518
    .end local v22    # "e":Landroid/net/ParseException;
    :cond_18
    const-string v3, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v28, :cond_1a

    .line 520
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 521
    const/4 v3, 0x1

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 522
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    if-eqz v3, :cond_19

    .line 523
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "sip"

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    sget-object v10, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v3, v9, v10}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 532
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 529
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_9

    .line 539
    :cond_1a
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v28, :cond_1b

    .line 540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 541
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 543
    :cond_1b
    const-string v3, "vnd.android.cursor.item/relation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz v28, :cond_1c

    .line 544
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEARCH"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 545
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v9, "query"

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v9, "vnd.android.cursor.dir/contact"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 550
    :cond_1c
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 551
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Landroid/util/LongSparseArray;

    move-result-object v3

    move-object/from16 v0, v25

    iget-wide v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-virtual {v3, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/util/DataStatus;

    .line 555
    .restart local v45    # "status":Lcom/android/contacts/util/DataStatus;
    iget-boolean v3, v5, Lcom/android/contacts/model/DataKind;->actionBodySocial:Z

    if-eqz v3, :cond_1f

    if-eqz v45, :cond_1f

    const/16 v29, 0x1

    .line 556
    .local v29, "hasSocial":Z
    :goto_a
    if-eqz v29, :cond_1d

    .line 557
    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setPresence(I)V

    .line 560
    :cond_1d
    if-nez v29, :cond_1e

    if-eqz v28, :cond_4

    .line 563
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v48

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v48

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    .line 565
    .local v37, "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 555
    .end local v29    # "hasSocial":Z
    .end local v37    # "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    :cond_1f
    const/16 v29, 0x0

    goto :goto_a

    .line 568
    .restart local v29    # "hasSocial":Z
    :cond_20
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .restart local v37    # "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v48

    move-object/from16 v1, v37

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 577
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v6    # "dataId":J
    .end local v8    # "entryValues":Landroid/content/ContentValues;
    .end local v18    # "accountType":Ljava/lang/String;
    .end local v20    # "dataSet":Ljava/lang/String;
    .end local v23    # "entValues":Landroid/content/ContentValues;
    .end local v24    # "entity":Landroid/content/Entity;
    .end local v25    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v28    # "hasData":Z
    .end local v29    # "hasSocial":Z
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v36    # "isSuperPrimary":Z
    .end local v37    # "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    .end local v40    # "rawContactId":J
    .end local v45    # "status":Lcom/android/contacts/util/DataStatus;
    .end local v46    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v47    # "superPrimary":Ljava/lang/Integer;
    .end local v48    # "type":Lcom/android/contacts/model/AccountType;
    :cond_21
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 578
    new-instance v25, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 579
    .restart local v25    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 580
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v42, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v43

    .line 582
    .local v43, "size":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_b
    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_23

    .line 583
    if-eqz v30, :cond_22

    .line 584
    const-string v3, ", "

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_22
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    .line 588
    :cond_23
    const-string v3, "mimetype"

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0133

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 590
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 631
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 632
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 633
    .local v2, "kind":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v2    # "kind":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 639
    if-eqz v1, :cond_1

    .line 640
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 647
    return-void
.end method

.method private getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 846
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 847
    const-string v1, "uri_to_authorize"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 848
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "authorize"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_0

    .line 854
    const-string v1, "authorized_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 857
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 606
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 607
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 608
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 609
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 610
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 614
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 615
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 616
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 618
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 619
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 620
    return-void
.end method

.method private shareContact()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 719
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_0

    move v0, v2

    .line 766
    :goto_0
    return v0

    .line 721
    :cond_0
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->buildContact2Vcard()Ljava/lang/String;

    move-result-object v4

    .line 722
    if-eqz v4, :cond_1

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    .line 726
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 727
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "as_partial_field_vcard"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 732
    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 738
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 739
    const-string v5, "partial_field_vcard"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 742
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "INTENTEXTRA_BOOLEAN_PARTIAL_FIELD_PICKER_RETURN_BACK"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 743
    if-eqz v0, :cond_4

    .line 744
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 746
    const-string v0, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->vCardContentString:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 749
    const-string v0, "text/x-vcard"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    move v0, v3

    .line 751
    goto :goto_0

    .line 734
    :cond_3
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "as_partial_field_vcard"

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 735
    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 754
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 755
    const-string v4, "text/x-vcard"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 758
    const-string v1, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->vCardContentString:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v3

    .line 766
    goto/16 :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0c012b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method protected bindData()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 239
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 326
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 247
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v4, :cond_2

    .line 248
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    .line 256
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 261
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v4, :cond_8

    .line 262
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    move v3, v5

    .line 263
    .local v3, "mHasPhoto":Z
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    if-eqz v3, :cond_7

    .line 265
    iget-object v4, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7, v8, v9, v6}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;

    .line 278
    .end local v3    # "mHasPhoto":Z
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->buildEntries()V

    .line 281
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 282
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 283
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 284
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 285
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 287
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_9

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 288
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_a

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    .line 291
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->setupFlattenedList()V

    .line 293
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v4, :cond_4

    .line 294
    new-instance v4, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;

    invoke-direct {v4, p0, v10}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;-><init>(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$1;)V

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .line 295
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mIsCreateFromSavedState:Z

    if-nez v4, :cond_c

    .line 299
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_d

    .line 300
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getCount()I

    move-result v0

    .line 301
    .local v0, "adapterSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_d

    .line 302
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v1

    .line 303
    .local v1, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    instance-of v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-nez v4, :cond_b

    .line 301
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v0    # "adapterSize":I
    .end local v1    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .end local v2    # "i":I
    :cond_5
    move v4, v6

    .line 253
    goto/16 :goto_1

    :cond_6
    move v3, v6

    .line 262
    goto :goto_2

    .line 269
    .restart local v3    # "mHasPhoto":Z
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f090000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-static {v5, v7}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZ)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 273
    .end local v3    # "mHasPhoto":Z
    :cond_8
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    move v4, v6

    .line 287
    goto :goto_4

    :cond_a
    move v4, v6

    .line 288
    goto :goto_5

    .line 304
    .restart local v0    # "adapterSize":I
    .restart local v1    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .restart local v2    # "i":I
    :cond_b
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_7

    .line 309
    .end local v0    # "adapterSize":I
    .end local v1    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .end local v2    # "i":I
    :cond_c
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v4, :cond_d

    .line 310
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v4, v7}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    iput-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 313
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_d

    .line 314
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    iget-object v4, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mUserCheckedIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 315
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mUserCheckedIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 321
    .end local v2    # "i":I
    :cond_d
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 323
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 325
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    const-string v0, "UserCheckedIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mUserCheckedIds:Ljava/util/ArrayList;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mIsCreateFromSavedState:Z

    .line 167
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    const v0, 0x7f040083

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    .line 195
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 197
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    .line 199
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 200
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 202
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 208
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    .line 212
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mOKButton:Landroid/widget/Button;

    .line 213
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mOKButton:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$1;-><init>(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mCancelButton:Landroid/widget/Button;

    .line 221
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$2;

    invoke-direct {v1, p0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$2;-><init>(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->bindData()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    iget-object v3, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mUserCheckedIds:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mUserCheckedIds:Ljava/util/ArrayList;

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mUserCheckedIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 180
    .local v1, "checkStates":Landroid/util/SparseBooleanArray;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getCount()I

    move-result v0

    .line 181
    .local v0, "adapterSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 182
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mUserCheckedIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "adapterSize":I
    .end local v1    # "checkStates":Landroid/util/SparseBooleanArray;
    .end local v2    # "i":I
    :cond_2
    const-string v3, "UserCheckedIds"

    iget-object v4, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mUserCheckedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 189
    return-void
.end method
