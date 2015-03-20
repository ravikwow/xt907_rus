.class public Lcom/motorola/simmanager/PhoneContactListActivity;
.super Lcom/motorola/simmanager/SimManagerListActivity;
.source "PhoneContactListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final ADN_INIT_TOKEN:I

.field private final GROUPS_TOKEN:I

.field private final GROUP_CONTACTS_TOKEN:I

.field private final PHONE_CONTACTS_TOKEN:I

.field private adnInit:Z

.field private mAllContactsGroupName:Ljava/lang/String;

.field private mClonedCursorAll:Landroid/database/Cursor;

.field private mCurrentGroupName:Ljava/lang/String;

.field private mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field private mFilterText:Ljava/lang/String;

.field private mGroupNames:[Ljava/lang/String;

.field private mGroupsAdapter:Lcom/motorola/simmanager/GroupsSpinnerAdapter;

.field private mNavigationCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/simmanager/PhoneContactListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/simmanager/SimManagerListActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->adnInit:Z

    .line 31
    const/16 v0, 0x22d

    iput v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->PHONE_CONTACTS_TOKEN:I

    .line 32
    const/16 v0, 0x22e

    iput v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->GROUPS_TOKEN:I

    .line 33
    const/16 v0, 0x22f

    iput v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->GROUP_CONTACTS_TOKEN:I

    .line 34
    const/16 v0, 0x230

    iput v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->ADN_INIT_TOKEN:I

    .line 52
    new-instance v0, Lcom/motorola/simmanager/PhoneContactListActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/simmanager/PhoneContactListActivity$1;-><init>(Lcom/motorola/simmanager/PhoneContactListActivity;)V

    iput-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 68
    new-instance v0, Lcom/motorola/simmanager/PhoneContactListActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/simmanager/PhoneContactListActivity$2;-><init>(Lcom/motorola/simmanager/PhoneContactListActivity;)V

    iput-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mNavigationCallback:Landroid/app/ActionBar$OnNavigationListener;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/simmanager/PhoneContactListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/simmanager/PhoneContactListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/motorola/simmanager/PhoneContactListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/PhoneContactListActivity;->getGroupNames(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/simmanager/PhoneContactListActivity;)Lcom/motorola/simmanager/GroupsSpinnerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupsAdapter:Lcom/motorola/simmanager/GroupsSpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/simmanager/PhoneContactListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->adnInit:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/motorola/simmanager/PhoneContactListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->adnInit:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/motorola/simmanager/PhoneContactListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/simmanager/PhoneContactListActivity;->startAdnInit()V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/simmanager/PhoneContactListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/simmanager/PhoneContactListActivity;->startMembersQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/simmanager/PhoneContactListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/simmanager/PhoneContactListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/simmanager/PhoneContactListActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/PhoneContactListActivity;->getGroupPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/simmanager/PhoneContactListActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/motorola/simmanager/PhoneContactListActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupNames:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/motorola/simmanager/PhoneContactListActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$600(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/PhoneContactListActivity;->clonePhoneContactsCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/simmanager/PhoneContactListActivity;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/simmanager/PhoneContactListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/simmanager/PhoneContactListActivity;->startGroupsContactsQuery()V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/simmanager/PhoneContactListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/PhoneContactListActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/simmanager/PhoneContactListActivity;->initListConfig()V

    return-void
.end method

.method private clonePhoneContactsCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 305
    if-nez p1, :cond_1

    .line 306
    const/4 v0, 0x0

    .line 327
    :cond_0
    :goto_0
    return-object v0

    .line 309
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/motorola/simmanager/PhoneContactListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 311
    .local v0, "c":Landroid/database/MatrixCursor;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    sget-object v5, Lcom/motorola/simmanager/PhoneContactListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 313
    .local v1, "idIndex":I
    sget-object v5, Lcom/motorola/simmanager/PhoneContactListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 314
    .local v3, "nameIndex":I
    sget-object v5, Lcom/motorola/simmanager/PhoneContactListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 317
    .local v4, "photoIdIndex":I
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 319
    const-string v5, "display_name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    :cond_3
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 324
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0
.end method

.method private getGroupNames(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 5
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "groupNames":[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 237
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 238
    iget-object v3, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mAllContactsGroupName:Ljava/lang/String;

    aput-object v3, v0, v4

    .line 255
    :goto_0
    return-object v0

    .line 240
    :cond_1
    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "grpNameInd":I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 245
    iget-object v3, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mAllContactsGroupName:Ljava/lang/String;

    aput-object v3, v0, v4

    .line 247
    const/4 v2, 0x1

    .line 248
    .local v2, "index":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 251
    add-int/lit8 v2, v2, 0x1

    .line 252
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method private getGroupPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 208
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initListConfig()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getList()Landroid/widget/ListView;

    move-result-object v0

    .line 443
    .local v0, "list":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mAllContactsGroupName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 445
    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearTextFilter()V

    .line 446
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 447
    return-void

    :cond_0
    move v1, v2

    .line 443
    goto :goto_0
.end method

.method private startAdnInit()V
    .locals 8

    .prologue
    const/16 v1, 0x230

    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 277
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    sget-object v3, Lcom/motorola/simmanager/SIMCommunication;->URI_ADN:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private startAllContactsQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x22d

    .line 259
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 260
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/motorola/simmanager/Utils;->getUnRestrictedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/motorola/simmanager/PhoneContactListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(in_visible_group=1)"

    const-string v7, "sort_key"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private startGroupsContactsQuery()V
    .locals 10

    .prologue
    const/16 v1, 0x22f

    .line 282
    const-string v8, " _id IN ( SELECT contact_id FROM raw_contacts WHERE deleted<> 1 AND _id IN ( SELECT raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE (mimetype=\'vnd.android.cursor.item/group_membership\' OR mimetype=\'vnd.android.cursor.item/local_group_membership\') AND data1 IN ( SELECT groups._id FROM groups WHERE title=? AND deleted<>1 ) ) )"

    .line 298
    .local v8, "SELECT_CONTACT_IDS_IN_AGG_GROUP":Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 299
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/motorola/simmanager/Utils;->getUnRestrictedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/motorola/simmanager/PhoneContactListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(in_visible_group=1) AND ( _id IN ( SELECT contact_id FROM raw_contacts WHERE deleted<> 1 AND _id IN ( SELECT raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE (mimetype=\'vnd.android.cursor.item/group_membership\' OR mimetype=\'vnd.android.cursor.item/local_group_membership\') AND data1 IN ( SELECT groups._id FROM groups WHERE title=? AND deleted<>1 ) ) ))"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    aput-object v9, v6, v7

    const-string v7, "display_name ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private startGroupsQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x22e

    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 266
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleted <> 1 AND title IS NOT NULL AND title <> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private startMembersQuery()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/motorola/simmanager/PhoneContactListActivity;->getGroupPosition(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "groupPos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mAllContactsGroupName:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/motorola/simmanager/PhoneContactListActivity;->startAllContactsQuery()V

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/motorola/simmanager/PhoneContactListActivity;->initListConfig()V

    .line 231
    return-void

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-direct {p0}, Lcom/motorola/simmanager/PhoneContactListActivity;->startGroupsContactsQuery()V

    goto :goto_0
.end method


# virtual methods
.method public OnExcuteAciton(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getCheckedIds()[I

    move-result-object v0

    .line 501
    .local v0, "ids":[I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.android.simmanager.ACTION_IMPORT_EXPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "mode"

    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getMode()Lcom/motorola/simmanager/Utils$ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v2, "values"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 506
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 507
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 508
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method public OnSearchViewTextChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mAllContactsGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/motorola/simmanager/SimManagerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f07004b

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mAllContactsGroupName:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mAllContactsGroupName:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    .line 93
    new-instance v1, Lcom/motorola/simmanager/ContactsListAdapter;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getMode()Lcom/motorola/simmanager/Utils$ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/motorola/simmanager/ContactsListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 94
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getList()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 97
    new-instance v1, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;-><init>(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    .line 99
    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupNames:[Ljava/lang/String;

    .line 100
    new-instance v1, Lcom/motorola/simmanager/GroupsSpinnerAdapter;

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupNames:[Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/motorola/simmanager/GroupsSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupsAdapter:Lcom/motorola/simmanager/GroupsSpinnerAdapter;

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 103
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 104
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 105
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupsAdapter:Lcom/motorola/simmanager/GroupsSpinnerAdapter;

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mNavigationCallback:Landroid/app/ActionBar$OnNavigationListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-super {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Lcom/motorola/simmanager/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/motorola/simmanager/ContactsListAdapter;->release()V

    .line 128
    iput-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 131
    :cond_0
    iput-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    const/16 v1, 0x22d

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 134
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    const/16 v1, 0x22e

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 135
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    const/16 v1, 0x22f

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 136
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    const/16 v1, 0x230

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 137
    iput-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;

    .line 139
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    iput-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;

    .line 143
    :cond_1
    return-void
.end method

.method public onProcessChecking(Ljava/lang/String;)V
    .locals 8
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 459
    const-string v4, "onProcessChecking start"

    invoke-static {v4}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissQueryProgressDialog()V

    .line 464
    iget-object v4, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 465
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 467
    .local v1, "isShowSearchItem":Z
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getSelectMenuItem()Landroid/view/MenuItem;

    move-result-object v3

    .line 468
    .local v3, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getList()Landroid/widget/ListView;

    move-result-object v2

    .line 469
    .local v2, "list":Landroid/widget/ListView;
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 470
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mAllContactsGroupName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    invoke-virtual {p0, v0, v7}, Lcom/motorola/simmanager/SimManagerListActivity;->setListViewChecks(Landroid/database/Cursor;Z)V

    .line 472
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 474
    const/4 v1, 0x1

    .line 482
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->refreshSelectMenuItem()V

    .line 483
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->refreshCommandMenuItem()V

    .line 484
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getSearchMenuItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 487
    return-void

    .line 477
    :cond_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    invoke-virtual {p0, v0, v6}, Lcom/motorola/simmanager/SimManagerListActivity;->setListViewChecks(Landroid/database/Cursor;Z)V

    .line 479
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 111
    const v0, 0x7f070048

    invoke-static {v0}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/simmanager/SimManagerListActivity;->showQueryProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    .line 112
    invoke-direct {p0}, Lcom/motorola/simmanager/PhoneContactListActivity;->startGroupsQuery()V

    .line 113
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 118
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 120
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 514
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity;->mAllContactsGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/motorola/simmanager/SimManagerListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
