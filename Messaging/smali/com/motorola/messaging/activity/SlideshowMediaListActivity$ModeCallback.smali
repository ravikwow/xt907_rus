.class Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;
.super Ljava/lang/Object;
.source "SlideshowMediaListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowMediaListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mSelectedIds:[J

.field private mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;Lcom/motorola/messaging/activity/SlideshowMediaListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity;
    .param p2, "x1"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity$1;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;-><init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;)Lcom/motorola/messaging/view/DropdownButton;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 478
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 490
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 480
    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v2, "mediaToSave":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/MediaModel;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mSelectedIds:[J

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 482
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mSelectedIds:[J

    aget-wide v3, v3, v0

    long-to-int v1, v3

    .line 483
    .local v1, "mediaPosition":I
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;
    invoke-static {v3}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$100(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    .end local v1    # "mediaPosition":I
    :cond_0
    new-instance v3, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;

    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-direct {v3, v4, v2}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$SaveMediaTask;-><init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;Ljava/util/List;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 487
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 421
    const v1, 0x7f0b016f

    invoke-interface {p2, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 424
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mActionBarView:Landroid/view/View;

    .line 428
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mActionBarView:Landroid/view/View;

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/view/DropdownButton;

    iput-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    .line 429
    new-instance v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback$1;-><init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;)V

    .line 448
    .local v0, "listener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2, v0}, Lcom/motorola/messaging/view/DropdownButton;->setupMenu(ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 451
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    new-instance v2, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback$2;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback$2;-><init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    .end local v0    # "listener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 466
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mActionBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 475
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 496
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$700(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    .line 497
    .local v0, "selectedMessages":I
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$700(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mSelectedIds:[J

    .line 498
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->mSelectionButton:Lcom/motorola/messaging/view/DropdownButton;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    const v3, 0x7f0b0033

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/view/DropdownButton;->setTitle(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 470
    const/4 v0, 0x1

    return v0
.end method
