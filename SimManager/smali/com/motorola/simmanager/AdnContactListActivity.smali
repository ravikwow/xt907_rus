.class public Lcom/motorola/simmanager/AdnContactListActivity;
.super Lcom/motorola/simmanager/SimManagerListActivity;
.source "AdnContactListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;,
        Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;
    }
.end annotation


# static fields
.field static final URI_ADN_CONTENT:Landroid/net/Uri;


# instance fields
.field private mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mFilterText:Ljava/lang/String;

.field private mQueryHandler:Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/motorola/simmanager/SIMCommunication;->URI_ADN:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/simmanager/AdnContactListActivity;->URI_ADN_CONTENT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/motorola/simmanager/SimManagerListActivity;-><init>()V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/simmanager/AdnContactListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/AdnContactListActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mFilterText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/simmanager/AdnContactListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/AdnContactListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mFilterText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/simmanager/AdnContactListActivity;Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/AdnContactListActivity;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/motorola/simmanager/AdnContactListActivity;->filterAdnContacts(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/simmanager/AdnContactListActivity;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/AdnContactListActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/simmanager/AdnContactListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/AdnContactListActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/AdnContactListActivity;->sortSIMContactsByName(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private filterAdnContacts(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "filterText"    # Ljava/lang/String;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "temp":Landroid/database/Cursor;
    invoke-direct {p0, p1, p2}, Lcom/motorola/simmanager/AdnContactListActivity;->filterSIMContactsByName(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 157
    move-object p1, v0

    .line 159
    .end local v0    # "temp":Landroid/database/Cursor;
    :cond_0
    return-object p1
.end method

.method private filterSIMContactsByName(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "filterText"    # Ljava/lang/String;

    .prologue
    .line 163
    if-eqz p2, :cond_0

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/AdnContactListActivity;->sortSIMContactsByName(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v4

    .line 187
    :goto_0
    return-object v4

    .line 167
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 169
    .local v1, "filteredCursor":Landroid/database/MatrixCursor;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    const-string v5, "name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 172
    .local v3, "nameIndex":I
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 176
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 180
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 182
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    invoke-direct {p0, v1}, Lcom/motorola/simmanager/AdnContactListActivity;->sortSIMContactsByName(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v4

    .line 184
    .local v4, "result":Landroid/database/Cursor;
    invoke-virtual {v1}, Landroid/database/AbstractCursor;->close()V

    goto :goto_0

    .end local v4    # "result":Landroid/database/Cursor;
    :cond_5
    move-object v4, v1

    .line 187
    goto :goto_0
.end method

.method private setAccountExtra(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/simmanager/PBUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/motorola/simmanager/PBUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const-string v2, "account_name"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v2, "account_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_0
    return-void
.end method

.method private sortSIMContactsByName(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 192
    const-string v8, "name"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 193
    .local v5, "nameIndex":I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "columnFields":[Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 195
    .local v6, "rowCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v2, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v1

    if-ge v4, v8, :cond_1

    .line 202
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, p0, v8, v3}, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;-><init>(Lcom/motorola/simmanager/AdnContactListActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 205
    .local v0, "adnContact":Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 207
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 210
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 211
    .local v7, "sortedCursor":Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_2

    .line 212
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adnContact":Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;
    check-cast v0, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;

    .line 213
    .restart local v0    # "adnContact":Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;
    iget-object v8, v0, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    :cond_2
    return-object v7
.end method

.method private startAllQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x22b

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 121
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;

    sget-object v3, Lcom/motorola/simmanager/AdnContactListActivity;->URI_ADN_CONTENT:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method public OnExcuteAciton(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getCheckedIds()[I

    move-result-object v0

    .line 222
    .local v0, "ids":[I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.android.simmanager.ACTION_IMPORT_EXPORT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getMode()Lcom/motorola/simmanager/Utils$ActionMode;

    move-result-object v2

    .line 225
    .local v2, "mode":Lcom/motorola/simmanager/Utils$ActionMode;
    const-string v3, "mode"

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v3, "values"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 228
    sget-object v3, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_IMPORT:Lcom/motorola/simmanager/Utils$ActionMode;

    if-ne v2, v3, :cond_0

    .line 229
    invoke-direct {p0, v1}, Lcom/motorola/simmanager/AdnContactListActivity;->setAccountExtra(Landroid/content/Intent;)V

    .line 232
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 234
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method public OnSearchViewTextChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/motorola/simmanager/SimManagerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lcom/motorola/simmanager/ContactsListAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getMode()Lcom/motorola/simmanager/Utils$ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/motorola/simmanager/ContactsListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 37
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getList()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    new-instance v1, Lcom/motorola/simmanager/AdnContactListActivity$1;

    invoke-direct {v1, p0}, Lcom/motorola/simmanager/AdnContactListActivity$1;-><init>(Lcom/motorola/simmanager/AdnContactListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 48
    new-instance v0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;-><init>(Lcom/motorola/simmanager/AdnContactListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-super {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->onDestroy()V

    .line 73
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Lcom/motorola/simmanager/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/motorola/simmanager/ContactsListAdapter;->release()V

    .line 75
    iput-object v2, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 78
    :cond_0
    iput-object v2, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mFilterText:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 81
    iput-object v2, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mQueryHandler:Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;

    .line 82
    return-void
.end method

.method public onProcessChecking(Ljava/lang/String;)V
    .locals 7
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 244
    const-string v4, "onProcessChecking start"

    invoke-static {v4}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissQueryProgressDialog()V

    .line 249
    iget-object v4, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 250
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 252
    .local v1, "isShowSearchItem":Z
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getSelectMenuItem()Landroid/view/MenuItem;

    move-result-object v3

    .line 253
    .local v3, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getList()Landroid/widget/ListView;

    move-result-object v2

    .line 254
    .local v2, "list":Landroid/widget/ListView;
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 255
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 256
    invoke-virtual {p0, v0, v6}, Lcom/motorola/simmanager/SimManagerListActivity;->setListViewChecks(Landroid/database/Cursor;Z)V

    .line 257
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 259
    const/4 v1, 0x1

    .line 267
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->refreshSelectMenuItem()V

    .line 268
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->refreshCommandMenuItem()V

    .line 269
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getSearchMenuItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 271
    return-void

    .line 262
    :cond_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-virtual {p0, v0, v5}, Lcom/motorola/simmanager/SimManagerListActivity;->setListViewChecks(Landroid/database/Cursor;Z)V

    .line 264
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 54
    const v0, 0x7f070047

    invoke-static {v0}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/simmanager/SimManagerListActivity;->showQueryProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    .line 55
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/motorola/simmanager/AdnContactListActivity;->startAllQuery()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 65
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 67
    :cond_0
    return-void
.end method
