.class public Lcom/motorola/messaging/activity/SlideshowMediaListActivity;
.super Lcom/motorola/messaging/activity/MessagingListActivity;
.source "SlideshowMediaListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/SlideshowMediaListActivity$1;,
        Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;,
        Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;,
        Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;,
        Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mAdapter:Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;

.field private mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;

.field private mDialogBundle:Landroid/os/Bundle;

.field private mListView:Landroid/widget/ListView;

.field private mMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingListActivity;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mDialogBundle:Landroid/os/Bundle;

    .line 411
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mDialogBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "SlideshowMediaListAct"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mListView:Landroid/widget/ListView;

    .line 84
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 86
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 87
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;-><init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;Lcom/motorola/messaging/activity/SlideshowMediaListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    if-eqz p1, :cond_1

    .line 93
    const-class v0, Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 94
    const-string v0, "MEDIA_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 96
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/model/MediaModel;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 130
    :goto_1
    return-void

    .line 108
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;

    .line 111
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SmilModel;->getSlides()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/SlideModel;

    .line 112
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->getMediaCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 113
    invoke-virtual {v0}, Lcom/motorola/messaging/model/MediaModel;->isSaveable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 121
    if-nez v0, :cond_6

    .line 122
    const-string v0, "SlideshowMediaListAct"

    const-string v1, "Slideshow has no saveable media."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 128
    :cond_6
    new-instance v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;-><init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAdapter:Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;

    .line 129
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAdapter:Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 351
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/activity/MessagingListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 355
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 380
    :goto_0
    return-object v2

    .line 359
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 375
    const/4 v2, 0x0

    goto :goto_0

    .line 363
    :pswitch_0
    invoke-static {v0}, Lcom/motorola/messaging/util/DialogBuilder;->buildGenericSdCardDialog(Landroid/app/AlertDialog$Builder;)V

    .line 378
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    move-object v2, v1

    .line 380
    goto :goto_0

    .line 366
    :pswitch_1
    invoke-static {v0}, Lcom/motorola/messaging/util/DialogBuilder;->buildUnavailableSdCardDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_1

    .line 369
    :pswitch_2
    invoke-static {v0}, Lcom/motorola/messaging/util/DialogBuilder;->buildMissingSdCardDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_1

    .line 372
    :pswitch_3
    invoke-static {v0}, Lcom/motorola/messaging/util/DialogBuilder;->buildNotEnoughMemoryDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 225
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "SlideshowMediaListAct"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 232
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mAsyncTaskTransientDialog:Landroid/app/ProgressDialog;

    .line 236
    :cond_1
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 134
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    invoke-static {p0, v1}, Lcom/motorola/messaging/util/MessageUtils;->getViewMediaIntent(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 386
    packed-switch p1, :pswitch_data_0

    .line 403
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    :pswitch_0
    return-void

    .line 388
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    const-string v2, "num_of_medias_to_save"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 393
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_2
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    const-string v2, "num_of_medias_to_save"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 398
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_3
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    const-string v2, "num_of_medias_to_save"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    const-string v1, "MEDIA_LIST"

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    return-void
.end method
