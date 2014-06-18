.class public Lcom/android/contacts/activities/ContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberMultiplePickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$ContactMultiplePickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mCreateNewContactButton:Landroid/view/View;

.field private mForGroupPick:Z

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field mPopulatingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field private mWaitingDialog:Landroid/app/ProgressDialog;

.field ok_ClickListener:Landroid/view/View$OnClickListener;

.field select_or_unselect_all_ClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mForGroupPick:Z

    .line 944
    new-instance v0, Lcom/android/contacts/activities/ContactSelectionActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactSelectionActivity$3;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->select_or_unselect_all_ClickListener:Landroid/view/View$OnClickListener;

    .line 1026
    new-instance v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactSelectionActivity$4;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->ok_ClickListener:Landroid/view/View$OnClickListener;

    .line 130
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ContactSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mForGroupPick:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/ContactSelectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getTotalContactsCounts()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/activities/ContactSelectionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ContactSelectionActivity;Landroid/net/Uri;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureSelectUnSelectButton(Landroid/net/Uri;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ContactSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureSelectUnSelectButton()Z

    move-result v0

    return v0
.end method

.method private configureActivityTitle()V
    .locals 3

    .prologue
    const v2, 0x7f0b0015

    .line 416
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 422
    .local v0, "actionCode":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 429
    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 424
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 434
    :sswitch_2
    const v1, 0x7f0b0016

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 440
    :sswitch_3
    const v1, 0x7f0b0209

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 446
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 451
    :sswitch_5
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 456
    :sswitch_6
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 461
    :sswitch_7
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 466
    :sswitch_8
    const v1, 0x7f0b0013

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 471
    :sswitch_9
    const v1, 0x7f0b0014

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 476
    :sswitch_a
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 422
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_0
        0x41 -> :sswitch_2
        0x46 -> :sswitch_4
        0x50 -> :sswitch_1
        0x5a -> :sswitch_6
        0x5f -> :sswitch_3
        0x64 -> :sswitch_a
        0x69 -> :sswitch_7
        0x6e -> :sswitch_5
        0x78 -> :sswitch_8
        0x82 -> :sswitch_9
    .end sparse-switch
.end method

.method private configureSelectUnSelectButton(Landroid/net/Uri;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureSelectUnSelectButton()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    iget-object v0, v0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    iget-object v0, v0, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private configureSelectUnSelectButton()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 332
    const v4, 0x7f06008b

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 333
    .local v0, "targetButton":Landroid/widget/Button;
    const v4, 0x7f06008c

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 335
    .local v1, "targetOKButton":Landroid/widget/Button;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v4, v4, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v4, v4, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    move v2, v3

    .line 391
    :goto_0
    return v2

    .line 339
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getTotalContactsCounts()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 340
    const v4, 0x7f0b0207

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 346
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getTotalContactsCounts()I

    move-result v4

    if-nez v4, :cond_4

    .line 347
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 354
    :goto_2
    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mForGroupPick:Z

    if-eqz v4, :cond_5

    .line 355
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    :goto_3
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 363
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 364
    const v3, 0x7f0b020a

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 365
    new-instance v3, Lcom/android/contacts/activities/ContactSelectionActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity$2;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 342
    :cond_3
    const v4, 0x7f0b0206

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 349
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 357
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 375
    :cond_6
    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 376
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->ok_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getTotalContactsCounts()I

    move-result v4

    if-nez v4, :cond_7

    .line 379
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 381
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    if-nez v4, :cond_8

    .line 382
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 384
    :cond_8
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getTotalContactsCounts()I
    .locals 3

    .prologue
    .line 933
    const/4 v1, 0x0

    .line 934
    .local v1, "totalNumber":I
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 935
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 936
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 937
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 935
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method private prepareSearchViewAndActionBar()V
    .locals 10

    .prologue
    const v9, 0x7f0b01a7

    const/16 v5, 0x8

    const/4 v8, 0x0

    const v7, 0x7f060089

    const/4 v6, 0x1

    .line 239
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 243
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 245
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 246
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 253
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 254
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 255
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 256
    .local v2, "searchViewOnLayout":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 257
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040033

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 262
    .local v1, "searchViewContainer":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 267
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v8}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 269
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v8}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 272
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 273
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 274
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 276
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 278
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 279
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 280
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 299
    .end local v1    # "searchViewContainer":Landroid/view/View;
    .end local v2    # "searchViewOnLayout":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0

    .line 282
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 283
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 289
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 290
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/activities/ContactSelectionActivity$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/ContactSelectionActivity$1;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private shouldShowCreateNewContactButton()Z
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 892
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 894
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 895
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 896
    const-string v1, "ContactSelectionActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    return-void
.end method

.method private startCreateNewContactActivity()V
    .locals 3

    .prologue
    .line 886
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 887
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "finishActivityOnSaveCompleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 888
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    .line 889
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 486
    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 566
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :sswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 489
    .local v0, "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setEditMode(Z)V

    .line 490
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 491
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 569
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 570
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 572
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06008a

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 575
    return-void

    .line 496
    :sswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 499
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 505
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_2
    new-instance v0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    invoke-direct {v0}, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;-><init>()V

    .line 507
    .local v0, "fragment":Lcom/motorola/contacts/list/ContactMultiplePickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 513
    .end local v0    # "fragment":Lcom/motorola/contacts/list/ContactMultiplePickerFragment;
    :sswitch_3
    new-instance v0, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    invoke-direct {v0}, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;-><init>()V

    .line 515
    .local v0, "fragment":Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 520
    .end local v0    # "fragment":Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;
    :sswitch_4
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 521
    .local v0, "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 526
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_5
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 527
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setShortcutRequested(Z)V

    .line 528
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 533
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_6
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 534
    .local v0, "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 539
    .end local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_7
    new-instance v1, Lcom/android/contacts/list/EmailAddressPickerFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 544
    :sswitch_8
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 545
    .restart local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 547
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 552
    .end local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_9
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 553
    .restart local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 555
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 560
    .end local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_a
    new-instance v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;-><init>()V

    .line 561
    .local v0, "fragment":Lcom/android/contacts/list/PostalAddressPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 486
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0x41 -> :sswitch_2
        0x46 -> :sswitch_4
        0x50 -> :sswitch_0
        0x5a -> :sswitch_6
        0x5f -> :sswitch_3
        0x64 -> :sswitch_a
        0x69 -> :sswitch_7
        0x6e -> :sswitch_5
        0x78 -> :sswitch_8
        0x82 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 920
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 921
    if-nez p1, :cond_1

    .line 922
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 923
    if-eqz p3, :cond_0

    .line 924
    invoke-virtual {p0, p3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 929
    :cond_1
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 135
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setupActionListener()V

    .line 139
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v1, v1, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v1, v1, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    if-eqz v1, :cond_3

    .line 905
    :cond_0
    const v1, 0x7f06008c

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 906
    .local v0, "targetOKButton":Landroid/widget/Button;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 915
    .end local v0    # "targetOKButton":Landroid/widget/Button;
    :cond_1
    :goto_0
    return-void

    .line 909
    .restart local v0    # "targetOKButton":Landroid/widget/Button;
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 910
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 911
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 913
    .end local v0    # "targetOKButton":Landroid/widget/Button;
    :cond_3
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 877
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 883
    :goto_0
    return-void

    .line 879
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    goto :goto_0

    .line 877
    :pswitch_data_0
    .packed-switch 0x7f06008d
        :pswitch_0
    .end packed-switch
.end method

.method public onClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 843
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 846
    :cond_0
    return v2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 812
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 813
    .local v0, "menuAdapter":Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 814
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 817
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    const-string v3, "actionCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "for_group_pick_only"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mForGroupPick:Z

    .line 151
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 152
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v1

    .line 159
    .local v1, "redirect":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureActivityTitle()V

    .line 168
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    const/16 v4, 0x41

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_8

    .line 172
    :cond_4
    const v3, 0x7f040027

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->setContentView(I)V

    .line 178
    :goto_1
    iget v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 179
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureListFragment()V

    .line 183
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->prepareSearchViewAndActionBar()V

    .line 185
    const v3, 0x7f06008d

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    .line 186
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 187
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->shouldShowCreateNewContactButton()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 188
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_6
    :goto_2
    const v3, 0x7f06008b

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 197
    .local v2, "select_or_unselect_all":Landroid/widget/Button;
    if-eqz v2, :cond_7

    .line 199
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    const v3, 0x7f0b0207

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 201
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->select_or_unselect_all_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_7
    const v3, 0x7f06008c

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 206
    .local v0, "ok":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->ok_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "ok":Landroid/widget/Button;
    .end local v2    # "select_or_unselect_all":Landroid/widget/Button;
    :cond_8
    const v3, 0x7f040028

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->setContentView(I)V

    goto :goto_1

    .line 191
    :cond_9
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->shouldShowCreateNewContactButton()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 308
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 220
    iput-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 225
    iput-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 228
    :cond_1
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 853
    :pswitch_0
    if-eqz p2, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x2000003

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 857
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->showInputMethod(Landroid/view/View;)V

    goto :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x7f060089
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 326
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 318
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 322
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    goto :goto_0

    .line 315
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f060158 -> :sswitch_1
    .end sparse-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f06008c

    const v1, 0x7f06008b

    const/4 v2, 0x0

    .line 823
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 827
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 833
    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 412
    const-string v0, "actionCode"

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 870
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 871
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 872
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 873
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 864
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 865
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 866
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 867
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$ContactMultiplePickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactMultiplePickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 603
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberMultiplePickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberMultiplePickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/list/PhoneNumberMultiplePickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/ContactPickerFragment;

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    if-eqz v0, :cond_4

    .line 595
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V

    goto :goto_0

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    if-eqz v0, :cond_5

    .line 598
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V

    goto :goto_0

    .line 601
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 799
    const/high16 v1, 0x2000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 802
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 803
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 806
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 807
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 808
    return-void
.end method
