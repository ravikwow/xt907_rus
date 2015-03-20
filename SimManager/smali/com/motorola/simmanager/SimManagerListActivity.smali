.class public abstract Lcom/motorola/simmanager/SimManagerListActivity;
.super Landroid/app/ListActivity;
.source "SimManagerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;
    }
.end annotation


# static fields
.field static ACTIONBAR_COMMAND_ID:I

.field static ACTIONBAR_SELECT_ID:I


# instance fields
.field private mActionMode:Lcom/motorola/simmanager/Utils$ActionMode;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mConfirmAlertDialog:Landroid/app/AlertDialog;

.field private mDialogCreator:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

.field private final mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mNoRecordsAlertDialog:Landroid/app/AlertDialog;

.field private mQueryProgressDialog:Landroid/app/ProgressDialog;

.field private mSearchTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/motorola/simmanager/SimManagerListActivity;->ACTIONBAR_SELECT_ID:I

    .line 38
    const/4 v0, 0x2

    sput v0, Lcom/motorola/simmanager/SimManagerListActivity;->ACTIONBAR_COMMAND_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    invoke-direct {v0, p0, p0}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;-><init>(Lcom/motorola/simmanager/SimManagerListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mDialogCreator:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    .line 47
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 49
    new-instance v0, Lcom/motorola/simmanager/SimManagerListActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/simmanager/SimManagerListActivity$1;-><init>(Lcom/motorola/simmanager/SimManagerListActivity;)V

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mHandler:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mMenu:Landroid/view/Menu;

    .line 30
    return-void
.end method

.method private OnCommandMenuItemClick(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 536
    const/4 v2, 0x0

    .line 537
    .local v2, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 538
    .local v1, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 540
    .local v0, "iconId":I
    iget-object v3, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mActionMode:Lcom/motorola/simmanager/Utils$ActionMode;

    sget-object v4, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_IMPORT:Lcom/motorola/simmanager/Utils$ActionMode;

    if-ne v3, v4, :cond_0

    .line 541
    const v3, 0x7f07000f

    invoke-static {v3}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 542
    const v3, 0x7f070010

    invoke-static {v3}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    const v0, 0x108009b

    .line 553
    :goto_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/motorola/simmanager/SimManagerListActivity;->showConfirmAlertDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog;

    .line 554
    return-void

    .line 544
    :cond_0
    iget-object v3, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mActionMode:Lcom/motorola/simmanager/Utils$ActionMode;

    sget-object v4, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_DELETE:Lcom/motorola/simmanager/Utils$ActionMode;

    if-ne v3, v4, :cond_1

    .line 545
    const v3, 0x7f07002e

    invoke-static {v3}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    const v3, 0x7f07002f

    invoke-static {v3}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    const v0, 0x1080027

    goto :goto_0

    .line 549
    :cond_1
    const v3, 0x7f07001e

    invoke-static {v3}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 550
    const v3, 0x7f07001f

    invoke-static {v3}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 551
    const v0, 0x108009b

    goto :goto_0
.end method

.method private OnSelectMenuItemClick(Landroid/view/MenuItem;)V
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getList()Landroid/widget/ListView;

    move-result-object v4

    .line 558
    .local v4, "list":Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v6

    invoke-direct {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getListViewCheckedItemCount()I

    move-result v7

    if-ne v6, v7, :cond_0

    move v0, v3

    .line 559
    .local v0, "allListItemChecked":Z
    :goto_0
    if-nez v0, :cond_1

    .line 561
    .local v3, "itemStateAfterClick":Z
    :goto_1
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 562
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 563
    invoke-virtual {v4, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 564
    iget-object v5, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "allListItemChecked":Z
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "itemStateAfterClick":Z
    :cond_0
    move v0, v5

    .line 558
    goto :goto_0

    .restart local v0    # "allListItemChecked":Z
    :cond_1
    move v3, v5

    .line 559
    goto :goto_1

    .line 566
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "itemStateAfterClick":Z
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->refreshSelectMenuItem()V

    .line 567
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->refreshCommandMenuItem()V

    .line 568
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/simmanager/SimManagerListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/SimManagerListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getCheckedCount()I
    .locals 5

    .prologue
    .line 318
    iget-object v3, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v3, :cond_1

    .line 319
    const/4 v0, 0x0

    .line 329
    :cond_0
    return v0

    .line 322
    :cond_1
    const/4 v0, 0x0

    .line 323
    .local v0, "amount":I
    iget-object v3, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 324
    .local v2, "maxCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 325
    iget-object v3, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 324
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCursorIds(Landroid/database/Cursor;)[I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 281
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 298
    :goto_0
    return-object v1

    .line 285
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v1, v3, [I

    .line 286
    .local v1, "ids":[I
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "idColumnIndex":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 289
    const-string v3, "getCursorIds: no id column."

    invoke-static {v3}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    move-object v1, v2

    .line 290
    goto :goto_0

    .line 293
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 295
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v1, v2

    .line 296
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method private getListViewCheckedItemCount()I
    .locals 5

    .prologue
    .line 302
    iget-object v4, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 303
    const/4 v1, 0x0

    .line 314
    :cond_0
    return v1

    .line 306
    :cond_1
    const/4 v1, 0x0

    .line 307
    .local v1, "count":I
    iget-object v4, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 308
    .local v0, "checksData":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 309
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 310
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    add-int/lit8 v1, v1, 0x1

    .line 309
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initSearchUi()V
    .locals 2

    .prologue
    .line 333
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    .line 334
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 336
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 338
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/simmanager/SimManagerListActivity$2;

    invoke-direct {v1, p0}, Lcom/motorola/simmanager/SimManagerListActivity$2;-><init>(Lcom/motorola/simmanager/SimManagerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 353
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/simmanager/SimManagerListActivity$3;

    invoke-direct {v1, p0}, Lcom/motorola/simmanager/SimManagerListActivity$3;-><init>(Lcom/motorola/simmanager/SimManagerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 369
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/simmanager/SimManagerListActivity$4;

    invoke-direct {v1, p0}, Lcom/motorola/simmanager/SimManagerListActivity$4;-><init>(Lcom/motorola/simmanager/SimManagerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 380
    return-void
.end method


# virtual methods
.method public abstract OnExcuteAciton(Landroid/content/DialogInterface;)V
.end method

.method public abstract OnSearchViewTextChange(Ljava/lang/String;)V
.end method

.method public dismissConfirmAlertDialog()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mConfirmAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mConfirmAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mConfirmAlertDialog:Landroid/app/AlertDialog;

    .line 211
    :cond_0
    return-void
.end method

.method public dismissNoRecordsAlertDialog()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mNoRecordsAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mNoRecordsAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mNoRecordsAlertDialog:Landroid/app/AlertDialog;

    .line 197
    :cond_0
    return-void
.end method

.method public dismissQueryProgressDialog()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mQueryProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mQueryProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mQueryProgressDialog:Landroid/app/ProgressDialog;

    .line 182
    :cond_0
    return-void
.end method

.method public exitSearch()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 383
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 384
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 390
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 393
    :cond_1
    return-void
.end method

.method public getCheckedIds()[I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 255
    iget-object v5, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_0

    .line 256
    const/4 v3, 0x0

    .line 271
    :goto_0
    return-object v3

    .line 259
    :cond_0
    const/4 v3, 0x0

    .line 260
    .local v3, "keys":[I
    iget-object v5, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 261
    .local v4, "temp":[I
    const/4 v0, 0x0

    .line 263
    .local v0, "arrayIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 265
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "arrayIndex":I
    .local v1, "arrayIndex":I
    iget-object v5, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .line 263
    .end local v1    # "arrayIndex":I
    .restart local v0    # "arrayIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :cond_2
    new-array v3, v0, [I

    .line 270
    array-length v5, v3

    invoke-static {v4, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getCommandMenuItem()Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090012

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getList()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMode()Lcom/motorola/simmanager/Utils$ActionMode;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mActionMode:Lcom/motorola/simmanager/Utils$ActionMode;

    return-object v0
.end method

.method public getSearchMenuItem()Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090011

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSelectMenuItem()Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090010

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/simmanager/Utils$ActionMode;->getActionMode(Ljava/lang/String;)Lcom/motorola/simmanager/Utils$ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mActionMode:Lcom/motorola/simmanager/Utils$ActionMode;

    .line 73
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mActionMode:Lcom/motorola/simmanager/Utils$ActionMode;

    sget-object v2, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_INVALID:Lcom/motorola/simmanager/Utils$ActionMode;

    if-ne v1, v2, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    :goto_0
    return-void

    .line 78
    :cond_0
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->initSearchUi()V

    .line 82
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    .line 83
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 84
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f07003f

    invoke-static {v2}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 91
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/simmanager/SMUtils;->setFeature35420On(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 511
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 98
    iput-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    .line 99
    iput-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mMenu:Landroid/view/Menu;

    .line 100
    iput-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mDialogCreator:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    .line 101
    iput-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissQueryProgressDialog()V

    .line 104
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissNoRecordsAlertDialog()V

    .line 105
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissConfirmAlertDialog()V

    .line 107
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 109
    iput-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 111
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 115
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 117
    instance-of v2, p2, Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 118
    check-cast v0, Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;

    .line 119
    .local v0, "checkedView":Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;
    invoke-virtual {v0}, Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;->isChecked()Z

    move-result v1

    .line 120
    .local v1, "preState":Z
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getList()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 121
    iget-object v2, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;->getContactId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 124
    .end local v0    # "checkedView":Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;
    .end local v1    # "preState":Z
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->refreshSelectMenuItem()V

    .line 125
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->refreshCommandMenuItem()V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 532
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 518
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 519
    const/4 v0, 0x1

    goto :goto_1

    .line 521
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/SimManagerListActivity;->OnSelectMenuItemClick(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 524
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/SimManagerListActivity;->OnCommandMenuItemClick(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 527
    :sswitch_3
    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/motorola/simmanager/SimManagerListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 516
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090010 -> :sswitch_1
        0x7f090011 -> :sswitch_3
        0x7f090012 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 492
    iput-object p1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mMenu:Landroid/view/Menu;

    .line 493
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getCommandMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    .line 494
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 495
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mActionMode:Lcom/motorola/simmanager/Utils$ActionMode;

    sget-object v2, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_IMPORT:Lcom/motorola/simmanager/Utils$ActionMode;

    if-ne v1, v2, :cond_0

    .line 496
    const v1, 0x7f07003d

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 503
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getSelectMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 504
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getSearchMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mActionMode:Lcom/motorola/simmanager/Utils$ActionMode;

    sget-object v2, Lcom/motorola/simmanager/Utils$ActionMode;->MODE_DELETE:Lcom/motorola/simmanager/Utils$ActionMode;

    if-ne v1, v2, :cond_1

    .line 498
    const v1, 0x7f07003e

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 500
    :cond_1
    const v1, 0x7f07003c

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public abstract onProcessChecking(Ljava/lang/String;)V
.end method

.method public refreshCommandMenuItem()V
    .locals 3

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getCommandMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 580
    .local v1, "item":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getCheckedCount()I

    move-result v0

    .line 581
    .local v0, "allCheckedCount":I
    if-lez v0, :cond_0

    .line 582
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public refreshSelectMenuItem()V
    .locals 4

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getSelectMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    .line 572
    .local v0, "item":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getList()Landroid/widget/ListView;

    move-result-object v1

    .line 573
    .local v1, "list":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    invoke-direct {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getListViewCheckedItemCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    const v2, 0x7f07003b

    invoke-static {v2}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v2

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 576
    return-void

    .line 573
    :cond_0
    const v2, 0x7f07003a

    invoke-static {v2}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v2

    goto :goto_0
.end method

.method public setListViewChecks(Landroid/database/Cursor;Z)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "refreshSaved"    # Z

    .prologue
    const/4 v6, 0x1

    .line 222
    const/4 v3, 0x0

    .line 224
    .local v3, "temp":Landroid/util/SparseBooleanArray;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-eqz p2, :cond_2

    .line 229
    new-instance v3, Landroid/util/SparseBooleanArray;

    .end local v3    # "temp":Landroid/util/SparseBooleanArray;
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 232
    .restart local v3    # "temp":Landroid/util/SparseBooleanArray;
    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/SimManagerListActivity;->getCursorIds(Landroid/database/Cursor;)[I

    move-result-object v2

    .line 233
    .local v2, "ids":[I
    iget-object v4, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 234
    iget-object v4, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->clearChoices()V

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 238
    aget v1, v2, v0

    .line 239
    .local v1, "id":I
    iget-object v4, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    .line 241
    invoke-virtual {v3, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 243
    :cond_3
    iget-object v4, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v0, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setListViewCheck: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 237
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    .end local v0    # "i":I
    .end local v1    # "id":I
    :cond_5
    if-eqz p2, :cond_0

    .line 250
    iput-object v3, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    goto :goto_0
.end method

.method public showConfirmAlertDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msgText"    # Ljava/lang/String;
    .param p3, "IconId"    # I

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissConfirmAlertDialog()V

    .line 201
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mDialogCreator:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->createConfirmationDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mConfirmAlertDialog:Landroid/app/AlertDialog;

    .line 202
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mConfirmAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 203
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mConfirmAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public showNoRecordsAlertDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msgText"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissNoRecordsAlertDialog()V

    .line 187
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mDialogCreator:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->createNoRecordsAlertDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mNoRecordsAlertDialog:Landroid/app/AlertDialog;

    .line 188
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mNoRecordsAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 189
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mNoRecordsAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public showQueryProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1
    .param p1, "msgText"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissQueryProgressDialog()V

    .line 172
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mDialogCreator:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    invoke-virtual {v0, p1}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->createQueryProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mQueryProgressDialog:Landroid/app/ProgressDialog;

    .line 173
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mQueryProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 174
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mQueryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/motorola/simmanager/SimManagerListActivity;->getSearchMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const v1, 0x7f07004d

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 138
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 140
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity;->mSearchTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 143
    :cond_1
    return-void
.end method
