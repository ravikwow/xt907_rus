.class public Lcom/motorola/messaging/activity/ConversationListActivity;
.super Lcom/motorola/messaging/activity/MessagingListActivity;
.source "ConversationListActivity.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;,
        Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;,
        Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;,
        Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private final mContentChangedListener:Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;

.field private mDeleteExecutor:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

.field private mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

.field private mListView:Landroid/widget/ListView;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSearchItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 75
    sput-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->DEBUG:Z

    .line 76
    sget-boolean v1, Lcom/motorola/messaging/activity/ConversationListActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingListActivity;-><init>()V

    .line 99
    new-instance v0, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;Lcom/motorola/messaging/activity/ConversationListActivity$1;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mDeleteExecutor:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    .line 104
    new-instance v0, Lcom/motorola/messaging/activity/ConversationListActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ConversationListActivity$1;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mContentChangedListener:Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;

    .line 272
    new-instance v0, Lcom/motorola/messaging/activity/ConversationListActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ConversationListActivity$3;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 666
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/ConversationListActivity;)Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/activity/ConversationListActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ConversationListActivity;->openThread(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mSearchItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private createMessagetoOnlineAlbum()V
    .locals 5

    .prologue
    .line 361
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsOnlineAlbumAddress()Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    const-class v0, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 365
    return-void
.end method

.method private createNewMessage()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 370
    return-void
.end method

.method private isProgressDialog(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 438
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCreateProgressDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 467
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 468
    .local v0, "dialog":Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 475
    :goto_0
    new-instance v1, Lcom/motorola/messaging/activity/ConversationListActivity$5;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ConversationListActivity$5;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 485
    new-instance v1, Lcom/motorola/messaging/activity/ConversationListActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/motorola/messaging/activity/ConversationListActivity$6;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 492
    return-object v0

    .line 470
    :pswitch_0
    const v1, 0x7f0b00a3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 471
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method private openThread(J)V
    .locals 2

    .prologue
    .line 652
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 653
    const-string v0, "ConversationListActivity"

    const-string v1, "openThread"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 659
    return-void
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mActionBar:Landroid/app/ActionBar;

    .line 357
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 358
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 380
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 388
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "ConversationListActivity"

    const-string v1, "onCreate() - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 121
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ConversationListActivity;->setupActionBar()V

    .line 125
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    .line 126
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 128
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/activity/ConversationListActivity$ModeCallback;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;Lcom/motorola/messaging/activity/ConversationListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 129
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 133
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 136
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/motorola/messaging/activity/ConversationListActivity$2;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ConversationListActivity$2;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    new-instance v0, Lcom/motorola/messaging/adapter/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/adapter/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    .line 144
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 145
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mContentChangedListener:Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/adapter/ConversationListAdapter;->setOnContentChangedListener(Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;)V

    .line 146
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    new-instance v0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    .line 151
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;Lcom/motorola/messaging/activity/ConversationListActivity$1;)V

    const-string v2, "fetch_content_list"

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 153
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    const/16 v1, 0x3e9

    const-string v2, "read=0"

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 157
    const-string v0, "ConversationListActivity"

    const-string v1, "onCreate() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    return-void

    .line 156
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 157
    const-string v1, "ConversationListActivity"

    const-string v2, "onCreate() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_2
    throw v0
.end method

.method protected onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 446
    .local v1, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 451
    :goto_0
    if-nez v1, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 455
    :cond_0
    new-instance v2, Lcom/motorola/messaging/activity/ConversationListActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/motorola/messaging/activity/ConversationListActivity$4;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;I)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 462
    return-object v1

    .line 448
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mDeleteExecutor:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    const/4 v3, 0x1

    invoke-static {v2, v3, p0}, Lcom/motorola/messaging/conversation/Conversation;->buildConfirmDeleteThreadDialog(Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;ZLandroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 422
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/activity/MessagingListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 426
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 433
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 430
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ConversationListActivity;->isProgressDialog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/ConversationListActivity;->onCreateProgressDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/messaging/activity/ConversationListActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const/high16 v5, 0x7f0e0000

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 292
    const v4, 0x7f09009b

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mSearchItem:Landroid/view/MenuItem;

    .line 293
    iget-object v4, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    .line 294
    .local v3, "searchView":Landroid/widget/SearchView;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 295
    invoke-virtual {v3, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 296
    const-string v4, "search"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 298
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    .line 300
    .local v1, "info":Landroid/app/SearchableInfo;
    invoke-virtual {v3, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 303
    .end local v1    # "info":Landroid/app/SearchableInfo;
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsOnlineAlbumEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    const v4, 0x7f09009e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 305
    .local v0, "composeOnlineItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 306
    const v4, 0x7f0b017b

    invoke-static {p0, v4}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 307
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    .end local v0    # "composeOnlineItem":Landroid/view/MenuItem;
    :cond_1
    return v6
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 209
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "ConversationListActivity"

    const-string v1, "onDestroy() - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->finish()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_2
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 224
    const-string v0, "ConversationListActivity"

    const-string v1, "onDestroy() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_3
    return-void

    .line 223
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_4

    .line 224
    const-string v1, "ConversationListActivity"

    const-string v2, "onDestroy() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_4
    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 326
    const/4 v0, 0x1

    .line 328
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 343
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 330
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ConversationListActivity;->createNewMessage()V

    goto :goto_0

    .line 334
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 339
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ConversationListActivity;->createMessagetoOnlineAlbum()V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x7f09009c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 204
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 497
    packed-switch p1, :pswitch_data_0

    .line 520
    :goto_0
    return-void

    .line 499
    :pswitch_0
    iget-object v4, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mDeleteExecutor:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    const-string v5, "thread_ids"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->setThreadIds([J)V

    .line 500
    const v4, 0x7f09003c

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 501
    .local v0, "dialogBody":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mDeleteExecutor:Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;

    invoke-virtual {v4}, Lcom/motorola/messaging/activity/ConversationListActivity$ConversationDeleteExecutor;->isSingleThread()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    const v4, 0x7f0b009a

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 507
    :goto_1
    const-string v4, "show_protected"

    invoke-virtual {p3, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 508
    .local v1, "hasProtectedMsgs":Z
    const v4, 0x7f090014

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 509
    .local v2, "protectedChkBox":Landroid/widget/CheckBox;
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 510
    if-eqz v1, :cond_1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 511
    new-instance v3, Lcom/motorola/messaging/activity/ConversationListActivity$7;

    invoke-direct {v3, p0}, Lcom/motorola/messaging/activity/ConversationListActivity$7;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 504
    .end local v1    # "hasProtectedMsgs":Z
    .end local v2    # "protectedChkBox":Landroid/widget/CheckBox;
    :cond_0
    const v4, 0x7f0b009b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 510
    .restart local v1    # "hasProtectedMsgs":Z
    .restart local v2    # "protectedChkBox":Landroid/widget/CheckBox;
    :cond_1
    const/16 v3, 0x8

    goto :goto_2

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 249
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "ConversationListActivity"

    const-string v1, "onRestart() - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/adapter/ConversationListAdapter;->restartAutoRequery()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 260
    const-string v0, "ConversationListActivity"

    const-string v1, "onRestart() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_2
    return-void

    .line 259
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 260
    const-string v1, "ConversationListActivity"

    const-string v2, "onRestart() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_3
    throw v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 165
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "ConversationListActivity"

    const-string v1, "onStart() - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/motorola/messaging/activity/ClassZeroActivity;->hasMessagesToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/motorola/messaging/activity/ClassZeroActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pdu"

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 175
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 180
    const-string v0, "ConversationListActivity"

    const-string v1, "onStart() - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->hasCachedValues()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    invoke-static {}, Lcom/motorola/messaging/contact/Contact;->invalidateCache()V

    .line 199
    :cond_3
    return-void

    .line 179
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_4

    .line 180
    const-string v1, "ConversationListActivity"

    const-string v2, "onStart() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_4
    throw v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 231
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "ConversationListActivity"

    const-string v1, "onStop - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 236
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/adapter/ConversationListAdapter;->stopAutoRequery()V

    .line 240
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/activity/ConversationListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 241
    const-string v0, "ConversationListActivity"

    const-string v1, "onStop - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "focus"    # Z

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 270
    :cond_0
    return-void
.end method

.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 663
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/motorola/messaging/conversation/ThreadFilter;->filter(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setContentInfo(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 405
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListAdapter:Lcom/motorola/messaging/adapter/ConversationListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 407
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 408
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mEmptyMessage:Landroid/widget/TextView;

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 413
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 417
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 418
    return-void
.end method
