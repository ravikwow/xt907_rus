.class public Lcom/android/contacts/group/SuggestedMemberListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SuggestedMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;,
        Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROJECTION_FILTERED_MEMBERS:[Ljava/lang/String;

.field private static final PROJECTION_MEMBER_DATA:[Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataSet:Ljava/lang/String;

.field private final mExistingMemberContactIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_FILTERED_MEMBERS:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_MEMBER_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    .line 93
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_FILTERED_MEMBERS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_MEMBER_DATA:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addNewMember(J)V
    .locals 2
    .param p1, "contactId"    # J

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;-><init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mFilter:Landroid/widget/Filter;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 135
    move-object v5, p2

    .line 136
    .local v5, "result":Landroid/view/View;
    if-nez v5, :cond_0

    .line 137
    iget-object v8, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040073

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    .line 141
    .local v3, "member":Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    const v8, 0x7f070109

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 142
    .local v6, "text1":Landroid/widget/TextView;
    const v8, 0x7f07010a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 143
    .local v7, "text2":Landroid/widget/TextView;
    const v8, 0x7f070020

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 144
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->hasExtraInfo()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 146
    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_0
    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getPhotoByteArray()[B

    move-result-object v1

    .line 151
    .local v1, "byteArray":[B
    if-nez v1, :cond_2

    .line 152
    const v8, 0x7f02007d

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    return-object v5

    .line 148
    .end local v1    # "byteArray":[B
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 155
    .restart local v1    # "byteArray":[B
    :cond_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 156
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 157
    array-length v8, v1

    invoke-static {v1, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public removeMember(J)V
    .locals 2
    .param p1, "contactId"    # J

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 110
    return-void
.end method

.method public setDataSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public updateExistingMembersList(Ljava/util/List;)V
    .locals 5
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
    .line 113
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    iget-object v2, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 115
    .local v1, "member":Lcom/android/contacts/group/GroupEditorFragment$Member;
    iget-object v2, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v1    # "member":Lcom/android/contacts/group/GroupEditorFragment$Member;
    :cond_0
    return-void
.end method
