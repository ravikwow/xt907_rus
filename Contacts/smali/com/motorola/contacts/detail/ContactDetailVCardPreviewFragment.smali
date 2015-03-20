.class public Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;
.super Lcom/android/contacts/detail/ContactDetailFragment;
.source "ContactDetailVCardPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContactStruct:Lcom/android/vcard/VCardEntry;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mNameContentValuesList:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mPhotoContentValuesList:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mOrganizationContentValuesList:Ljava/util/List;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mIsCreateFromSavedState:Z

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setDisplayName(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setCompanyName(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setPhoto(Landroid/widget/ImageView;)V

    return-void
.end method

.method private addEmailEntries()V
    .locals 17

    .prologue
    .line 552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v4

    .line 553
    .local v4, "emailList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$EmailData;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 599
    :cond_0
    return-void

    .line 556
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 557
    .local v2, "context":Landroid/content/Context;
    const-string v10, "vnd.android.cursor.item/email_v2"

    .line 559
    .local v10, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 560
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v12, v13, v14}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v9

    .line 561
    .local v9, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v9, :cond_0

    .line 563
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vcard/VCardEntry$EmailData;

    .line 565
    .local v3, "emailData":Lcom/android/vcard/VCardEntry$EmailData;
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 566
    .local v5, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 567
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 568
    const/4 v12, 0x0

    iput-object v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 569
    const-string v12, "vnd.android.cursor.item/email_v2"

    iput-object v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 570
    const v12, 0x7f0c0060

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 571
    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 572
    iget-object v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v6, 0x1

    .line 573
    .local v6, "hasData":Z
    :goto_1
    if-eqz v6, :cond_2

    .line 575
    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$EmailData;->getType()I

    move-result v12

    iput v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 577
    const-string v12, ""

    iput-object v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 578
    iget-object v12, v9, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/AccountType$EditType;

    .line 579
    .local v11, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v12, v11, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v13, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    if-ne v12, v13, :cond_3

    .line 580
    iget-object v12, v11, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v12, :cond_6

    .line 582
    iget v12, v11, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 593
    .end local v11    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    :goto_2
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.SENDTO"

    const-string v14, "mailto"

    iget-object v15, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 596
    const/4 v12, 0x0

    iput-boolean v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 572
    .end local v6    # "hasData":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 585
    .restart local v6    # "hasData":Z
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_6
    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$EmailData;->getLabel()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_2
.end method

.method private addEventEntries()V
    .locals 7

    .prologue
    .line 831
    iget-object v5, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "birthday":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 836
    .local v1, "context":Landroid/content/Context;
    const-string v4, "vnd.android.cursor.item/contact_event"

    .line 838
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 839
    .local v2, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v1, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 840
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 841
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 842
    const-string v5, "vnd.android.cursor.item/contact_event"

    iput-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 843
    const v5, 0x7f0c0131

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 844
    invoke-static {v1, v0}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 845
    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 846
    .local v3, "hasData":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 848
    const v5, 0x10402c6

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 851
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 845
    .end local v3    # "hasData":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private addIMEntries()V
    .locals 20

    .prologue
    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v12

    .line 659
    .local v12, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$ImData;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_1

    .line 718
    :cond_0
    return-void

    .line 662
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 663
    .local v5, "context":Landroid/content/Context;
    const-string v15, "vnd.android.cursor.item/im"

    .line 665
    .local v15, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 666
    .local v3, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "vnd.android.cursor.item/im"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v14

    .line 667
    .local v14, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v14, :cond_0

    .line 669
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/vcard/VCardEntry$ImData;

    .line 671
    .local v11, "imData":Lcom/android/vcard/VCardEntry$ImData;
    new-instance v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v6}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 672
    .local v6, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v5, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 673
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 674
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 675
    const-string v17, "vnd.android.cursor.item/im"

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 676
    const v17, 0x7f0c0061

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 677
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$ImData;->getAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 678
    iget-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    const/4 v7, 0x1

    .line 679
    .local v7, "hasData":Z
    :goto_1
    if-eqz v7, :cond_2

    .line 681
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 683
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 684
    iget-object v0, v14, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/model/AccountType$EditType;

    .line 685
    .local v16, "type":Lcom/android/contacts/model/AccountType$EditType;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move/from16 v17, v0

    iget v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 686
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 688
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 700
    .end local v16    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    :goto_2
    const/4 v8, 0x0

    .line 701
    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 703
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v8

    .line 705
    :cond_5
    if-eqz v8, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    iget-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 706
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "authority":Ljava/lang/String;
    new-instance v17, Landroid/net/Uri$Builder;

    invoke-direct/range {v17 .. v17}, Landroid/net/Uri$Builder;-><init>()V

    const-string v18, "imto"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    iget-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    .line 709
    .local v13, "imUri":Landroid/net/Uri;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.SENDTO"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 715
    .end local v4    # "authority":Ljava/lang/String;
    .end local v13    # "imUri":Landroid/net/Uri;
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 678
    .end local v7    # "hasData":Z
    .end local v8    # "host":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 691
    .restart local v7    # "hasData":Z
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v16    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_7
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$ImData;->getCustomProtocol()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_2

    .line 712
    .end local v16    # "type":Lcom/android/contacts/model/AccountType$EditType;
    .restart local v8    # "host":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_3
.end method

.method private addNicknameEntries()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 724
    iget-object v8, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v6

    .line 725
    .local v6, "nickNameList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$NicknameData;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 751
    :cond_0
    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 729
    .local v0, "context":Landroid/content/Context;
    const-string v4, "vnd.android.cursor.item/nickname"

    .line 731
    .local v4, "mimeType":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry$NicknameData;

    .line 733
    .local v5, "nickName":Lcom/android/vcard/VCardEntry$NicknameData;
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 734
    .local v1, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 735
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 736
    iput-object v10, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 737
    const-string v8, "vnd.android.cursor.item/nickname"

    iput-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 738
    const v8, 0x7f0c012e

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 739
    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$NicknameData;->getNickname()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 740
    iget-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v2, 0x1

    .line 741
    .local v2, "hasData":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 743
    const-string v8, ""

    iput-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 746
    iput-object v10, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 748
    iput-boolean v7, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 749
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "hasData":Z
    :cond_3
    move v2, v7

    .line 740
    goto :goto_1
.end method

.method private addNoteEntries()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 757
    iget-object v8, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v6

    .line 758
    .local v6, "noteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$NoteData;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 785
    :cond_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 763
    .local v0, "context":Landroid/content/Context;
    const-string v4, "vnd.android.cursor.item/note"

    .line 765
    .local v4, "mimeType":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry$NoteData;

    .line 767
    .local v5, "note":Lcom/android/vcard/VCardEntry$NoteData;
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 768
    .local v1, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 769
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 770
    iput-object v10, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 771
    const-string v8, "vnd.android.cursor.item/note"

    iput-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 772
    const v8, 0x7f0c0057

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 773
    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$NoteData;->getNote()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 774
    iget-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v2, 0x1

    .line 775
    .local v2, "hasData":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 777
    const-string v8, ""

    iput-object v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 780
    iput-object v10, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 781
    const/16 v8, 0x64

    iput v8, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 782
    iput-boolean v7, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 783
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "hasData":Z
    :cond_3
    move v2, v7

    .line 774
    goto :goto_1
.end method

.method private addPhoneEntries()V
    .locals 18

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v14}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v11

    .line 474
    .local v11, "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-gtz v14, :cond_1

    .line 546
    :cond_0
    return-void

    .line 477
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 478
    .local v2, "context":Landroid/content/Context;
    const-string v8, "vnd.android.cursor.item/phone_v2"

    .line 480
    .local v8, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 481
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v7

    .line 482
    .local v7, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v7, :cond_0

    .line 484
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 486
    .local v9, "phoneData":Lcom/android/vcard/VCardEntry$PhoneData;
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 487
    .local v3, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 488
    const-wide/16 v14, 0x0

    iput-wide v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 489
    const/4 v14, 0x0

    iput-object v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 490
    const-string v14, "vnd.android.cursor.item/phone_v2"

    iput-object v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 491
    const v14, 0x7f0c005f

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 492
    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 493
    iget-object v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    const/4 v4, 0x1

    .line 494
    .local v4, "hasData":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 496
    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v14

    iput v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 498
    const-string v14, ""

    iput-object v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 499
    iget-object v14, v7, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/AccountType$EditType;

    .line 500
    .local v13, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v14, v13, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v15, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    if-ne v14, v15, :cond_3

    .line 501
    iget-object v14, v13, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v14, :cond_7

    .line 503
    iget v14, v13, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 514
    .end local v13    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v14, :cond_8

    new-instance v10, Landroid/content/Intent;

    const-string v14, "android.intent.action.CALL_PRIVILEGED"

    const-string v15, "tel"

    iget-object v0, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v10, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 516
    .local v10, "phoneIntent":Landroid/content/Intent;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v14, :cond_9

    new-instance v12, Landroid/content/Intent;

    const-string v14, "android.intent.action.SENDTO"

    const-string v15, "smsto"

    iget-object v0, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 520
    .local v12, "smsIntent":Landroid/content/Intent;
    :goto_4
    if-eqz v10, :cond_5

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v14, v10, v15}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 542
    :cond_5
    const/4 v14, 0x0

    iput-boolean v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 493
    .end local v4    # "hasData":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "phoneIntent":Landroid/content/Intent;
    .end local v12    # "smsIntent":Landroid/content/Intent;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 506
    .restart local v4    # "hasData":Z
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v13    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_7
    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_2

    .line 514
    .end local v13    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 516
    .restart local v10    # "phoneIntent":Landroid/content/Intent;
    :cond_9
    const/4 v12, 0x0

    goto :goto_4
.end method

.method private addPostalEntries()V
    .locals 14

    .prologue
    .line 605
    iget-object v11, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v9

    .line 606
    .local v9, "postalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 652
    :cond_0
    return-void

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 610
    .local v1, "context":Landroid/content/Context;
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    .line 612
    .local v7, "mimeType":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 613
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 614
    .local v6, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v6, :cond_0

    .line 616
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/vcard/VCardEntry$PostalData;

    .line 618
    .local v8, "postalData":Lcom/android/vcard/VCardEntry$PostalData;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 619
    .local v2, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v1, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 620
    const-wide/16 v11, 0x0

    iput-wide v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 621
    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 622
    const-string v11, "vnd.android.cursor.item/postal-address_v2"

    iput-object v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 623
    const v11, 0x7f0c0064

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 624
    const v11, -0x3fffffff

    invoke-virtual {v8, v11}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 625
    iget-object v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v3, 0x1

    .line 626
    .local v3, "hasData":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 628
    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$PostalData;->getType()I

    move-result v11

    iput v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 630
    const-string v11, ""

    iput-object v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 631
    iget-object v11, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/AccountType$EditType;

    .line 632
    .local v10, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v11, v10, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v12, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    if-ne v11, v12, :cond_3

    .line 633
    iget-object v11, v10, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v11, :cond_6

    .line 635
    iget v11, v10, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 646
    .end local v10    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    :goto_2
    const/4 v11, 0x4

    iput v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 647
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    iget-object v13, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 649
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 650
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    .end local v3    # "hasData":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 638
    .restart local v3    # "hasData":Z
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v10    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_6
    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$PostalData;->getLabel()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_2
.end method

.method private addWebsiteEntries()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 791
    iget-object v10, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v8

    .line 792
    .local v8, "websiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$WebsiteData;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 825
    :cond_0
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 797
    .local v0, "context":Landroid/content/Context;
    const-string v5, "vnd.android.cursor.item/website"

    .line 799
    .local v5, "mimeType":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardEntry$WebsiteData;

    .line 801
    .local v7, "website":Lcom/android/vcard/VCardEntry$WebsiteData;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 802
    .local v2, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 803
    const-wide/16 v10, 0x0

    iput-wide v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 804
    const/4 v10, 0x0

    iput-object v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 805
    const-string v10, "vnd.android.cursor.item/website"

    iput-object v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 806
    const v10, 0x7f0c0130

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 807
    invoke-virtual {v7}, Lcom/android/vcard/VCardEntry$WebsiteData;->getWebsite()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 808
    iget-object v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v3, 0x1

    .line 809
    .local v3, "hasData":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 811
    const-string v10, ""

    iput-object v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 814
    const/16 v10, 0xa

    iput v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 816
    :try_start_0
    new-instance v6, Landroid/net/WebAddress;

    iget-object v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-direct {v6, v10}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 817
    .local v6, "webAddress":Landroid/net/WebAddress;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v6}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v10, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    .end local v6    # "webAddress":Landroid/net/WebAddress;
    :goto_2
    iput-boolean v9, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 823
    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3    # "hasData":Z
    :cond_3
    move v3, v9

    .line 808
    goto :goto_1

    .line 819
    .restart local v3    # "hasData":Z
    :catch_0
    move-exception v1

    .line 820
    .local v1, "e":Landroid/net/ParseException;
    const-string v10, "ContactDetailVCardPreviewFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t parse website: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private final buildEntries()V
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    .line 293
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    .line 294
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    .line 297
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 302
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 306
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 309
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v1, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    if-nez v1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->addPhoneEntries()V

    .line 314
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->addEmailEntries()V

    .line 315
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->addPostalEntries()V

    .line 316
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->addIMEntries()V

    .line 317
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->addNicknameEntries()V

    .line 318
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->addNoteEntries()V

    .line 319
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->addWebsiteEntries()V

    .line 320
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->addEventEntries()V

    goto :goto_0
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
    .line 356
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 359
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 360
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 361
    .local v2, "kind":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v2    # "kind":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 367
    if-eqz v1, :cond_1

    .line 368
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 375
    return-void
.end method

.method private setCompanyName(Landroid/widget/TextView;)V
    .locals 10
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 420
    if-nez p1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v6, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v4

    .line 425
    .local v4, "organizationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$OrganizationData;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 427
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 428
    .local v3, "orgData":Lcom/android/vcard/VCardEntry$OrganizationData;
    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$OrganizationData;->getOrganizationName()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "company":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$OrganizationData;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 436
    .local v2, "displayNameIsOrganization":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 437
    if-eqz v2, :cond_2

    .line 452
    .local v0, "combined":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0

    .end local v0    # "combined":Ljava/lang/String;
    :cond_2
    move-object v0, v5

    .line 437
    goto :goto_1

    .line 439
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 440
    if-eqz v2, :cond_4

    .restart local v0    # "combined":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v0    # "combined":Ljava/lang/String;
    :cond_4
    move-object v0, v1

    goto :goto_2

    .line 442
    :cond_5
    if-eqz v2, :cond_6

    .line 443
    move-object v0, v5

    .restart local v0    # "combined":Ljava/lang/String;
    goto :goto_1

    .line 445
    .end local v0    # "combined":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01d0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "combined":Ljava/lang/String;
    goto :goto_1
.end method

.method private setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textToDisplay"    # Ljava/lang/CharSequence;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :goto_0
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setDisplayName(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setPhoto(Landroid/widget/ImageView;)V
    .locals 9
    .param p1, "photoView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v8, 0x1

    .line 380
    iget-object v5, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v4

    .line 381
    .local v4, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    const/4 v0, 0x0

    .line 382
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 383
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 384
    .local v3, "photoData":Lcom/android/vcard/VCardEntry$PhotoData;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v5

    if-nez v5, :cond_1

    .line 385
    :cond_0
    const-string v5, "ContactDetailVCardPreviewFragment"

    const-string v6, "photo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 389
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 390
    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v6, v7, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 396
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "photoData":Lcom/android/vcard/VCardEntry$PhotoData;
    :cond_2
    if-nez v0, :cond_3

    .line 398
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f090000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-static {v5, v8, v6}, Lcom/android/contacts/util/ContactBadgeUtil;->loadDefaultAvatarPhoto(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    return-void
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 334
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 335
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 336
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 337
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 338
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 343
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 344
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 347
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 348
    return-void
.end method


# virtual methods
.method protected bindData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_2
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    .line 241
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 246
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setPhoto(Landroid/widget/ImageView;)V

    .line 255
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->buildEntries()V

    .line 258
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 259
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 260
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 261
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 262
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 264
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 265
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_8

    :goto_3
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    .line 268
    invoke-direct {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setupFlattenedList()V

    .line 270
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v0, :cond_4

    .line 271
    new-instance v0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;

    invoke-direct {v0, p0, v4}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;-><init>(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .line 272
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    .line 277
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 278
    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 283
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v0, v2

    .line 264
    goto :goto_2

    :cond_8
    move v1, v2

    .line 265
    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 858
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    const v0, 0x7f040086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    .line 172
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 174
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    .line 176
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 177
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 179
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mOKButton:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mOKButton:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$1;

    invoke-direct {v1, p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$1;-><init>(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mCancelButton:Landroid/widget/Button;

    .line 196
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$2;

    invoke-direct {v1, p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$2;-><init>(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->bindData()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public previewVCard(Lcom/android/vcard/VCardEntry;)V
    .locals 2
    .param p1, "contactStruct"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const-string v0, "ContactDetailVCardPreviewFragment"

    const-string v1, "contactStruct is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->mContactStruct:Lcom/android/vcard/VCardEntry;

    .line 220
    invoke-virtual {p0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->bindData()V

    goto :goto_0
.end method
