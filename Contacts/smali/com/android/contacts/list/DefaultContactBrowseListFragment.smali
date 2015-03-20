.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/motorola/contacts/widget/ListAccelerator$Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;
    }
.end annotation


# static fields
.field private static final ENTITY_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isIceEnabled:Ljava/lang/Boolean;

.field private mAccountFilterHeader:Landroid/view/View;

.field private mCounterHeaderView:Landroid/widget/TextView;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mGenieListener:Lcom/motorola/contacts/genie/GenieInterface;

.field private mIceHeader:Landroid/view/View;

.field private mIceHeaderContainer:Landroid/widget/FrameLayout;

.field private mIceLauncher:Landroid/widget/LinearLayout;

.field private mIceMessageContainer:Landroid/widget/FrameLayout;

.field private mIcePaddingView:Landroid/view/View;

.field private mIceTitle:Landroid/widget/TextView;

.field private mMessageContainer:Landroid/widget/FrameLayout;

.field private mPaddingView:Landroid/view/View;

.field private mProfileHeader:Landroid/view/View;

.field private mProfileHeaderContainer:Landroid/widget/FrameLayout;

.field private mProfileMessage:Landroid/widget/Button;

.field private mProfileTitle:Landroid/widget/TextView;

.field private mSearchHeaderView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field private mSelectCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const-class v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->TAG:Ljava/lang/String;

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->ENTITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isIceEnabled:Ljava/lang/Boolean;

    .line 137
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 143
    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/motorola/contacts/genie/GenieInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mGenieListener:Lcom/motorola/contacts/genie/GenieInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;ILandroid/os/AsyncTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/AsyncTask;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showDialog(ILandroid/os/AsyncTask;)V

    return-void
.end method

.method private addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 378
    .local v0, "list":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    .line 379
    const v2, 0x7f0400b4

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    .line 380
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v3, 0x7f07011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 381
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v3, 0x7f07011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    .line 382
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 383
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 387
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    .line 388
    const v2, 0x7f0400b3

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    .line 389
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 390
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v4, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 392
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    const v2, 0x7f04001b

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 402
    .local v1, "paddingViewContainer":Landroid/view/View;
    const v2, 0x7f07007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPaddingView:Landroid/view/View;

    .line 403
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPaddingView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 404
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 405
    return-void
.end method

.method private addInCaseOfEmergencyHeader(Landroid/view/LayoutInflater;)V
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 417
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.motorola.contacts.ACTION_VIEW_ICE_ACTIONS"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "iceStartIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 419
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    .line 420
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isIceEnabled:Ljava/lang/Boolean;

    .line 426
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 430
    .local v1, "list":Landroid/widget/ListView;
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceHeaderContainer:Landroid/widget/FrameLayout;

    .line 431
    const v5, 0x7f040089

    invoke-virtual {p1, v5, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceHeader:Landroid/view/View;

    .line 435
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceHeader:Landroid/view/View;

    const v6, 0x7f07011e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceTitle:Landroid/widget/TextView;

    .line 436
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 437
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceHeader:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 438
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5, v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 441
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceMessageContainer:Landroid/widget/FrameLayout;

    .line 442
    const v5, 0x7f04008a

    invoke-virtual {p1, v5, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceLauncher:Landroid/widget/LinearLayout;

    .line 443
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceLauncher:Landroid/widget/LinearLayout;

    const v6, 0x7f070120

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceLauncher:Landroid/widget/LinearLayout;

    const v6, 0x7f070121

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceMessageContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceLauncher:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 446
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 448
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceLauncher:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;

    invoke-direct {v6, p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    const v5, 0x7f04001b

    invoke-virtual {p1, v5, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 457
    .local v3, "paddingViewContainer":Landroid/view/View;
    const v5, 0x7f07007e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIcePaddingView:Landroid/view/View;

    .line 458
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIcePaddingView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 459
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 460
    .end local v1    # "list":Landroid/widget/ListView;
    .end local v3    # "paddingViewContainer":Landroid/view/View;
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isIceEnabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private checkHeaderViewVisibility()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 223
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 229
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_1
    return-void

    .line 224
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(ILandroid/os/AsyncTask;)V
    .locals 4
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p2, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Long;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0049

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 522
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 523
    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;

    invoke-direct {v2, p0, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/os/AsyncTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 533
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialog:Landroid/app/AlertDialog;

    .line 534
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 535
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 536
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 537
    return-void
.end method

.method private showEmptyIce(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 463
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isIceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceHeaderContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceHeader:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceMessageContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIceLauncher:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIcePaddingView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 469
    goto :goto_1

    :cond_2
    move v0, v2

    .line 470
    goto :goto_2

    :cond_3
    move v0, v2

    .line 472
    goto :goto_3

    :cond_4
    move v0, v2

    .line 473
    goto :goto_4

    :cond_5
    move v0, v2

    .line 474
    goto :goto_5

    :cond_6
    move v2, v1

    .line 476
    goto :goto_6
.end method

.method private showEmptyUserProfile(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 349
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPaddingView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    return-void

    :cond_0
    move v0, v2

    .line 349
    goto :goto_0

    :cond_1
    move v0, v2

    .line 350
    goto :goto_1

    :cond_2
    move v0, v2

    .line 351
    goto :goto_2

    :cond_3
    move v0, v2

    .line 352
    goto :goto_3

    :cond_4
    move v0, v2

    .line 353
    goto :goto_4

    :cond_5
    move v0, v2

    .line 354
    goto :goto_5

    :cond_6
    move v2, v1

    .line 355
    goto :goto_6
.end method

.method private showSearchProgress(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    return-void

    .line 219
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 241
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    if-nez v4, :cond_0

    .line 252
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 245
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 246
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-static {v4, v0, v2}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z

    move-result v1

    .line 248
    .local v1, "shouldShowHeader":Z
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 250
    .end local v1    # "shouldShowHeader":Z
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected clearCounterHeaderView()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_0
    return-void
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {v0, p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->setListAcceleratorListener(Lcom/motorola/contacts/widget/ListAccelerator$Interface;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 163
    return-object v0
.end method

.method public getAbovePartitionCount()I
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public getVisibleOffset()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isIceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, -0x7

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 168
    const v0, 0x7f040027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isMultiSelectionMode()Z
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 575
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getMultiSelectMode()Z

    move-result v1

    .line 578
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNeeded()Z
    .locals 2

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "shouldshow":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 484
    :cond_0
    const/4 v0, 0x1

    .line 486
    :cond_1
    return v0
.end method

.method public isScrollBarLeftForTwoPanel()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 335
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    sget-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 173
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 176
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 181
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addInCaseOfEmergencyHeader(Landroid/view/LayoutInflater;)V

    .line 182
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isIceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-direct {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyIce(Z)V

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V

    .line 190
    invoke-direct {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 193
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 194
    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    .line 195
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 200
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "headerContainer":Landroid/widget/FrameLayout;
    const v2, 0x7f0400a1

    invoke-virtual {p1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    .line 202
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 204
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070090

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgress:Landroid/view/View;

    .line 207
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const v3, 0x7f070150

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    .line 208
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialog:Landroid/app/AlertDialog;

    .line 542
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->finish()V

    .line 545
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    .line 153
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->finish()V

    .line 552
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 553
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 507
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 508
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 510
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/motorola/contacts/widget/ListAccelerator;

    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 514
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onStop()V

    .line 558
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 560
    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDialog:Landroid/app/AlertDialog;

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 567
    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 570
    :cond_1
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 237
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 238
    return-void
.end method

.method public setGenieListener(Lcom/motorola/contacts/genie/GenieInterface;)V
    .locals 0
    .param p1, "listener"    # Lcom/motorola/contacts/genie/GenieInterface;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mGenieListener:Lcom/motorola/contacts/genie/GenieInterface;

    .line 586
    return-void
.end method

.method protected setProfileHeader()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->hasProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 325
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isIceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyIce(Z)V

    .line 331
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 325
    goto :goto_0

    :cond_2
    move v1, v2

    .line 328
    goto :goto_1
.end method

.method public setSearchMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 213
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 214
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    .line 215
    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 10
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz p2, :cond_6

    .line 257
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 259
    .local v1, "count":I
    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mGenieListener:Lcom/motorola/contacts/genie/GenieInterface;

    if-eqz v5, :cond_0

    .line 260
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mGenieListener:Lcom/motorola/contacts/genie/GenieInterface;

    invoke-interface {v5}, Lcom/motorola/contacts/genie/GenieInterface;->onNoContactsToDisplay()V

    .line 263
    :cond_0
    if-eqz v1, :cond_4

    .line 264
    iget-boolean v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    sub-int/2addr v1, v5

    .line 265
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0e0001

    invoke-virtual {v5, v8, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "format":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-eqz v5, :cond_3

    .line 269
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/ContactListAdapter;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactsCount(Ljava/lang/String;)V

    .line 320
    .end local v1    # "count":I
    .end local v4    # "format":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "count":I
    :cond_2
    move v5, v7

    .line 264
    goto :goto_0

    .line 271
    .restart local v4    # "format":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 274
    .end local v4    # "format":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    .line 275
    .local v2, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-eqz v2, :cond_5

    iget v3, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 277
    .local v3, "filterType":I
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 292
    :pswitch_0
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v6, 0x7f0c0089

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 275
    .end local v3    # "filterType":I
    :cond_5
    const/4 v3, -0x2

    goto :goto_2

    .line 279
    .restart local v3    # "filterType":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v8, 0x7f0c008c

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-virtual {p0, v8, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 283
    :pswitch_2
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v6, 0x7f0c0088

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 286
    :pswitch_3
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v6, 0x7f0c008b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 289
    :pswitch_4
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v6, 0x7f0c008a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 297
    .end local v1    # "count":I
    .end local v2    # "filter":Lcom/android/contacts/list/ContactListFilter;
    .end local v3    # "filterType":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 298
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->areAllPartitionsEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 304
    :cond_7
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    .line 318
    :goto_3
    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    goto :goto_1

    .line 307
    :cond_8
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 308
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 309
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v8, 0x7f0c01a9

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 310
    invoke-direct {p0, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_3

    .line 312
    :cond_9
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v6, 0x7f0c0091

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 315
    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_3

    .line 277
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
