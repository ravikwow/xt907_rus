.class public Lcom/android/mms/ui/ConversationList;
.super Landroid/app/ListActivity;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationList$ModeCallback;,
        Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    }
.end annotation


# instance fields
.field private mComposeDisabledToast:Landroid/widget/Toast;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private final mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

.field private mDoOnceAfterFirstQuery:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSmsEnabled:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSavedFirstItemOffset:I

.field private mSavedFirstVisiblePosition:I

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSmsPromoBannerView:Landroid/view/View;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mUnreadConvCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 243
    new-instance v0, Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$1;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 473
    new-instance v0, Lcom/android/mms/ui/ConversationList$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$6;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 676
    new-instance v0, Lcom/android/mms/ui/ConversationList$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$7;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 832
    new-instance v0, Lcom/android/mms/ui/ConversationList$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$9;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 887
    new-instance v0, Lcom/android/mms/ui/ConversationList$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$10;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    .line 1038
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ConversationList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationList;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationList;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    return-object v0
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .param p0, "threadId"    # J
    .param p2, "handler"    # Landroid/content/AsyncQueryHandler;

    .prologue
    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .restart local v0    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_0
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    .line 770
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/ConversationList$DeleteThreadListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 797
    const v0, 0x7f04000b

    invoke-static {p3, v0, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 798
    const v0, 0x7f0f0029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 800
    if-nez p1, :cond_0

    .line 801
    const v2, 0x7f0a009f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 809
    :goto_0
    const v0, 0x7f0f002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 810
    if-nez p2, :cond_1

    .line 811
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 822
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 823
    const v2, 0x7f0a009c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a00a5

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0073

    invoke-virtual {v0, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 830
    return-void

    .line 804
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 805
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b0000

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 814
    new-instance v2, Lcom/android/mms/ui/ConversationList$8;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ConversationList$8;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/content/AsyncQueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const/16 v0, 0x70a

    invoke-static {p1, p0, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 782
    return-void
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 662
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    :goto_0
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 673
    return-object v0

    .line 667
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createNewMessage()V
    .locals 2

    .prologue
    .line 653
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 654
    return-void
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 256
    return-void
.end method

.method private initSmsPromoBanner()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 260
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "smsAppPackage":Ljava/lang/String;
    const/4 v3, 0x0

    .line 267
    .local v3, "smsAppIcon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 269
    .local v4, "smsAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 270
    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 273
    :goto_0
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 276
    .local v5, "smsAppIntent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 277
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    const v9, 0x7f0f0009

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 279
    .local v0, "defaultSmsAppIconImageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    const v9, 0x7f0f000a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 282
    .local v7, "smsPromoBannerTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a013a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    new-instance v9, Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {v9, p0, v5}, Lcom/android/mms/ui/ConversationList$2;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .end local v0    # "defaultSmsAppIconImageView":Landroid/widget/ImageView;
    .end local v1    # "message":Ljava/lang/String;
    .end local v7    # "smsPromoBannerTitle":Landroid/widget/TextView;
    :goto_1
    return-void

    .line 294
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    new-instance v9, Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/ConversationList$3;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 271
    .end local v5    # "smsAppIntent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1119
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 366
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 367
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 368
    return-void
.end method

.method private openThread(J)V
    .locals 1
    .param p1, "threadId"    # J

    .prologue
    .line 657
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 658
    return-void
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    .line 229
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 231
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 233
    .local v1, "v":Landroid/view/ViewGroup;
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 235
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 240
    const v2, 0x7f0f0020

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    .line 241
    return-void
.end method

.method private startAsyncQuery()V
    .locals 4

    .prologue
    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 466
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V

    .line 467
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v2, 0x6a6

    const-string v3, "read=0"

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private unbindViewReferences()V
    .locals 5

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 437
    .local v2, "listView":Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 440
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 441
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 442
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/android/mms/ui/ConversationListItem;

    if-eqz v4, :cond_1

    .line 443
    check-cast v3, Lcom/android/mms/ui/ConversationListItem;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    .line 440
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_2
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 752
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 754
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x0

    .line 710
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 711
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 712
    invoke-static {p0, v3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 713
    .local v2, "conv":Lcom/android/mms/data/Conversation;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    .line 714
    .local v5, "threadId":J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 739
    .end local v2    # "conv":Lcom/android/mms/data/Conversation;
    .end local v5    # "threadId":J
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    return v7

    .line 716
    .restart local v2    # "conv":Lcom/android/mms/data/Conversation;
    .restart local v5    # "threadId":J
    :pswitch_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 720
    :pswitch_1
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    goto :goto_0

    .line 724
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 725
    .local v1, "contact":Lcom/android/mms/data/Contact;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 726
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v7, 0x80000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 727
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 731
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v2, 0x7f040009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->setContentView(I)V

    .line 139
    const v2, 0x7f0f0008

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    .line 141
    new-instance v2, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 143
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 144
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 145
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 146
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 147
    new-instance v2, Lcom/android/mms/ui/ConversationList$ModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationList$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/ConversationList$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 150
    const v2, 0x7f0f0028

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 152
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initListAdapter()V

    .line 154
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->setupActionBar()V

    .line 156
    const/high16 v2, 0x7f0a0000

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->setTitle(I)V

    .line 158
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    .line 160
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "checked_message_limits"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    .local v0, "checkedMessageLimits":Z
    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->runOneTimeStorageLimitCheckForLegacyMessages()V

    .line 166
    :cond_0
    if-eqz p1, :cond_1

    .line 167
    const-string v2, "last_list_pos"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 169
    const-string v2, "last_list_offset"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_1
    iput v5, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 172
    iput v4, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 492
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v8, 0x7f0e0000

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 494
    const v7, 0x7f0f007e

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    .line 495
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v7}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SearchView;

    iput-object v7, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    .line 497
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 498
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    const v8, 0x7f0a010a

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7, v9}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 500
    const-string v7, "search"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    .line 502
    .local v6, "searchManager":Landroid/app/SearchManager;
    if-eqz v6, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    .line 504
    .local v3, "info":Landroid/app/SearchableInfo;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7, v3}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 507
    .end local v3    # "info":Landroid/app/SearchableInfo;
    :cond_0
    const v7, 0x7f0f0081

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 508
    .local v0, "cellBroadcastItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 510
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x111004e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 512
    .local v4, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v4, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 516
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v7, "com.motorola.cmas"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v10, :cond_1

    .line 518
    const/4 v4, 0x0

    .line 532
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 533
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 537
    .end local v4    # "isCellBroadcastAppLinkEnabled":Z
    :cond_2
    return v9

    .line 520
    .restart local v4    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 522
    .local v2, "ignored":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v7, "com.android.cellbroadcastreceiver"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-ne v7, v10, :cond_1

    .line 524
    const/4 v4, 0x0

    goto :goto_0

    .line 526
    :catch_1
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .param p1, "threadId"    # J
    .param p3, "hasDraft"    # Z

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationList$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationList$5;-><init>(Lcom/android/mms/ui/ConversationList;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 460
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 642
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {p0, v1}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 643
    .local v0, "conv":Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 649
    .local v2, "tid":J
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    .line 650
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 374
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 570
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 629
    :goto_0
    :pswitch_0
    return v0

    .line 572
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    :goto_1
    move v0, v1

    .line 629
    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeDisabledToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 577
    const v0, 0x7f0a0044

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeDisabledToast:Landroid/widget/Toast;

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeDisabledToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 585
    :pswitch_2
    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v2, v3, v0}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_1

    .line 588
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/ConversationList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_1

    .line 592
    :pswitch_4
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto :goto_1

    .line 595
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 599
    :try_start_0
    const-string v3, "com.motorola.cmas"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 601
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.motorola.cmas"

    const-string v5, "com.motorola.cmas.ui.CmasInboxActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    :cond_2
    :goto_2
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 621
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v1

    .line 623
    const-string v1, "ConversationList"

    const-string v2, "ActivityNotFoundException for CellBroadcastListActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :catch_1
    move-exception v3

    .line 606
    const-string v3, "ConversationList"

    const-string v4, "com.motorola.cmas doesn\'t exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :try_start_2
    const-string v3, "com.android.cellbroadcastreceiver"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 610
    const-string v2, "ConversationList"

    const-string v3, "com.android.cellbroadcastreceiver is enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.cellbroadcastreceiver"

    const-string v4, "com.android.cellbroadcastreceiver.CellBroadcastListActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 615
    :catch_2
    move-exception v2

    goto :goto_2

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f007d
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 189
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 195
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    iput v2, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    .line 198
    return-void

    .line 197
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 542
    const v1, 0x7f0f0080

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 543
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 546
    :cond_0
    const v1, 0x7f0f007d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_1

    .line 549
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    if-eqz v1, :cond_4

    const/16 v1, 0xff

    :goto_1
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 552
    :cond_1
    const v1, 0x7f0f0082

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_2

    .line 554
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 557
    :cond_2
    return v2

    :cond_3
    move v1, v3

    .line 544
    goto :goto_0

    .line 549
    :cond_4
    const/16 v1, 0x7f

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 203
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 204
    .local v0, "isSmsEnabled":Z
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    if-eq v0, v2, :cond_0

    .line 205
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->invalidateOptionsMenu()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 211
    .local v1, "listView":Landroid/widget/ListView;
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    if-eqz v2, :cond_2

    .line 212
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 218
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsPromoDismissed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 226
    return-void

    .line 214
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initSmsPromoBanner()V

    .line 222
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    const-string v0, "last_list_pos"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v0, "last_list_offset"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 565
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 380
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 383
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    if-nez v0, :cond_0

    .line 384
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelAllNotifications(Landroid/content/Context;)V

    .line 387
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    .line 391
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 406
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 409
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 413
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 415
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 422
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->unbindViewReferences()V

    .line 425
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 427
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 432
    return-void
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 3

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :goto_0
    monitor-exit p0

    return-void

    .line 320
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationList$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$4;-><init>(Lcom/android/mms/ui/ConversationList;)V

    const-string v2, "ConversationList.runOneTimeStorageLimitCheckForLegacyMessages"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
