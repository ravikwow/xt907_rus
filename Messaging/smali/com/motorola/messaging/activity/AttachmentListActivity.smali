.class public Lcom/motorola/messaging/activity/AttachmentListActivity;
.super Lcom/motorola/messaging/activity/MessagingListActivity;
.source "AttachmentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;,
        Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mAdapter:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

.field private final mAttListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mListMode:I

.field private mObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionStatus:[Z

.field private mSmilModel:Lcom/motorola/messaging/model/SmilModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/activity/AttachmentListActivity;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingListActivity;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;

    .line 258
    new-instance v0, Lcom/motorola/messaging/activity/AttachmentListActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/AttachmentListActivity$3;-><init>(Lcom/motorola/messaging/activity/AttachmentListActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mAttListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 449
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/activity/AttachmentListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/AttachmentListActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/messaging/activity/AttachmentListActivity;->updateSmil()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/AttachmentListActivity;)Lcom/motorola/messaging/model/SmilModel;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/AttachmentListActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/activity/AttachmentListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/AttachmentListActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mListMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/activity/AttachmentListActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/AttachmentListActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/messaging/activity/AttachmentListActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/AttachmentListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/AttachmentListActivity;->convertPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/messaging/activity/AttachmentListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/AttachmentListActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/messaging/activity/AttachmentListActivity;)Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/AttachmentListActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mAdapter:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

    return-object v0
.end method

.method private convertPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 334
    const/4 v1, -0x1

    .line 335
    .local v1, "realPosition":I
    const/4 v0, 0x0

    .line 339
    .local v0, "nonRemovedCount":I
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z

    add-int/lit8 v1, v1, 0x1

    aget-boolean v2, v2, v1

    if-nez v2, :cond_1

    .line 340
    add-int/lit8 v0, v0, 0x1

    .line 342
    :cond_1
    add-int/lit8 v2, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 344
    return v1
.end method

.method private initAttachmentList()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 195
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mAttListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 198
    new-instance v1, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;-><init>(Lcom/motorola/messaging/activity/AttachmentListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mAdapter:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

    .line 199
    iget-object v1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mAdapter:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    return-void
.end method

.method private initButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    iget v2, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mListMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 204
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 205
    .local v1, "doneButton":Landroid/widget/Button;
    new-instance v2, Lcom/motorola/messaging/activity/AttachmentListActivity$1;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/AttachmentListActivity$1;-><init>(Lcom/motorola/messaging/activity/AttachmentListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 220
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v2, Lcom/motorola/messaging/activity/AttachmentListActivity$2;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/AttachmentListActivity$2;-><init>(Lcom/motorola/messaging/activity/AttachmentListActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v1    # "doneButton":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private updateSmil()V
    .locals 6

    .prologue
    .line 273
    iget-object v4, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 275
    .local v0, "attachCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 276
    iget-object v4, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 278
    .local v2, "item":Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 280
    iget-object v4, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/SmilModel;->removeAllSlides()V

    .line 275
    .end local v2    # "item":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 282
    .restart local v2    # "item":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lcom/motorola/messaging/model/MediaModel;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 283
    check-cast v3, Lcom/motorola/messaging/model/MediaModel;

    .line 284
    .local v3, "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 294
    :pswitch_0
    iget-object v4, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->keepOnlyText()V

    goto :goto_1

    .line 287
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v4, v3}, Lcom/motorola/messaging/model/SmilModel;->removeAttachment(Lcom/motorola/messaging/model/MediaModel;)Z

    goto :goto_1

    .line 301
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "model":Lcom/motorola/messaging/model/MediaModel;
    :cond_2
    return-void

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private viewMedia(I)V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 243
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/messaging/activity/SlideshowActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    instance-of v1, v0, Lcom/motorola/messaging/model/MediaModel;

    if-eqz v1, :cond_0

    .line 251
    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->getViewMediaIntent(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 307
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v3}, Lcom/motorola/messaging/activity/AttachmentListActivity;->convertPosition(I)I

    move-result v1

    .line 309
    .local v1, "realPosition":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 330
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 312
    :pswitch_0
    sget-boolean v3, Lcom/motorola/messaging/activity/AttachmentListActivity;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 313
    const-string v3, "AttachmentListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onContextItemSelected - View - item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-direct {p0, v1}, Lcom/motorola/messaging/activity/AttachmentListActivity;->viewMedia(I)V

    goto :goto_0

    .line 321
    :pswitch_1
    sget-boolean v3, Lcom/motorola/messaging/activity/AttachmentListActivity;->LOCAL_LOG:Z

    if-eqz v3, :cond_1

    .line 322
    const-string v3, "AttachmentListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onContextItemSelected - Remove - item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z

    aput-boolean v2, v3, v1

    .line 325
    iget-object v3, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mAdapter:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget-boolean v10, Lcom/motorola/messaging/activity/AttachmentListActivity;->LOCAL_LOG:Z

    if-eqz v10, :cond_0

    .line 87
    const-string v10, "AttachmentListActivity"

    const-string v11, "onCreate"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    const v10, 0x7f030002

    invoke-virtual {p0, v10}, Landroid/app/Activity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 93
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_2

    .line 94
    const-string v10, "SAVED_LIST_MODE"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mListMode:I

    .line 95
    const-string v10, "SAVED_POSITION_STATUS"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v10

    iput-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z

    .line 96
    invoke-static {v1, p1}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v10

    iput-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 122
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-static {p0, v10}, Lcom/motorola/messaging/util/MessageUtils;->showUnsupportedContentWarning(Landroid/app/Activity;Lcom/motorola/messaging/model/SmilModel;)V

    .line 123
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-nez v10, :cond_5

    .line 124
    const-string v10, "AttachmentListActivity"

    const-string v11, "Smil model not ready when starting AttachmentListActivity"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 172
    :goto_1
    return-void

    .line 98
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 99
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 100
    .local v9, "uri":Landroid/net/Uri;
    const-string v10, "LIST_MODE"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mListMode:I

    .line 101
    iget v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mListMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 105
    .local v2, "creationMode":Lcom/motorola/messaging/model/Model$CreationMode;
    :goto_2
    if-eqz v9, :cond_4

    .line 109
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v1, v2, v9, v10}, Lcom/motorola/messaging/model/SmilModel;->createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v10

    iput-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v10, "AttachmentListActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not retrieve model. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v2    # "creationMode":Lcom/motorola/messaging/model/Model$CreationMode;
    .end local v3    # "e":Lcom/motorola/messaging/util/MmsException;
    :cond_3
    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    goto :goto_2

    .line 111
    .restart local v2    # "creationMode":Lcom/motorola/messaging/model/Model$CreationMode;
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v10

    iput-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 112
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v10}, Lcom/motorola/messaging/model/Model;->getCreationMode()Lcom/motorola/messaging/model/Model$CreationMode;

    move-result-object v10

    if-eq v10, v2, :cond_1

    .line 114
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v10, v1}, Lcom/motorola/messaging/model/SmilModel;->toPduBody(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v1, v2, v10, v11}, Lcom/motorola/messaging/model/SmilModel;->createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduBody;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v10

    iput-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;
    :try_end_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    .end local v2    # "creationMode":Lcom/motorola/messaging/model/Model$CreationMode;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_5
    iget v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mListMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 131
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    iget-object v11, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v10, v11}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    .line 136
    :cond_6
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;

    iget-object v11, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v11}, Lcom/motorola/messaging/model/SmilModel;->getAttachments()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v10}, Lcom/motorola/messaging/model/SmilModel;->getSlides()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 142
    .local v7, "slideCount":I
    const/4 v10, 0x1

    if-gt v7, v10, :cond_7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_9

    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v10}, Lcom/motorola/messaging/model/SmilModel;->hasSimpleSlideshow()Z

    move-result v10

    if-nez v10, :cond_9

    .line 145
    :cond_7
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;

    iget-object v11, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v11}, Lcom/motorola/messaging/model/SmilModel;->getSlides()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_8
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 159
    .local v0, "attachCount":I
    if-nez v0, :cond_b

    .line 160
    const-string v10, "AttachmentListActivity"

    const-string v11, "SMIL model has no attachments."

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 146
    .end local v0    # "attachCount":I
    :cond_9
    const/4 v10, 0x1

    if-ne v7, v10, :cond_8

    .line 149
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v10}, Lcom/motorola/messaging/model/SmilModel;->getSlides()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/messaging/model/SlideModel;

    invoke-virtual {v10}, Lcom/motorola/messaging/model/SlideModel;->getMediaCollection()Ljava/util/Collection;

    move-result-object v8

    .line 151
    .local v8, "slideModels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/motorola/messaging/model/MediaModel;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/messaging/model/MediaModel;

    .line 152
    .local v6, "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v6}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_a

    .line 153
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 165
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "model":Lcom/motorola/messaging/model/MediaModel;
    .end local v8    # "slideModels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/motorola/messaging/model/MediaModel;>;"
    .restart local v0    # "attachCount":I
    :cond_b
    iget-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z

    if-nez v10, :cond_c

    .line 166
    new-array v10, v0, [Z

    iput-object v10, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z

    .line 169
    :cond_c
    invoke-direct {p0}, Lcom/motorola/messaging/activity/AttachmentListActivity;->initButtons()V

    .line 171
    invoke-direct {p0}, Lcom/motorola/messaging/activity/AttachmentListActivity;->initAttachmentList()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 188
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 191
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 238
    invoke-direct {p0, p3}, Lcom/motorola/messaging/activity/AttachmentListActivity;->convertPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/AttachmentListActivity;->viewMedia(I)V

    .line 239
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return v1

    .line 178
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 231
    const-string v0, "SAVED_LIST_MODE"

    iget v1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mListMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v0, "SAVED_POSITION_STATUS"

    iget-object v1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 233
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 234
    return-void
.end method
