.class Lcom/android/phone/CurrentCountryListActivity$ModeCallback;
.super Ljava/lang/Object;
.source "CurrentCountryListActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CurrentCountryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CurrentCountryListActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/CurrentCountryListActivity;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CurrentCountryListActivity;Lcom/android/phone/CurrentCountryListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CurrentCountryListActivity;
    .param p2, "x1"    # Lcom/android/phone/CurrentCountryListActivity$1;

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;-><init>(Lcom/android/phone/CurrentCountryListActivity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-virtual {v2}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    .line 471
    .local v0, "node":Lcom/android/phone/AssistedDialingUtil$CtryListNode;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 478
    const/4 v1, 0x0

    .line 480
    :goto_0
    return v1

    .line 474
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iget v2, v0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    # invokes: Lcom/android/phone/CurrentCountryListActivity;->handleChangeCurCtry(I)V
    invoke-static {v1, v2}, Lcom/android/phone/CurrentCountryListActivity;->access$500(Lcom/android/phone/CurrentCountryListActivity;I)V

    .line 475
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    # getter for: Lcom/android/phone/CurrentCountryListActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/phone/CurrentCountryListActivity;->access$400(Lcom/android/phone/CurrentCountryListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 480
    const/4 v1, 0x1

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    const v1, 0x7f0c038f

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(I)V

    .line 454
    const v1, 0x7f0c0392

    invoke-interface {p2, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 456
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    # setter for: Lcom/android/phone/CurrentCountryListActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/phone/CurrentCountryListActivity;->access$402(Lcom/android/phone/CurrentCountryListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 457
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iget-object v1, v1, Lcom/android/phone/CurrentCountryListActivity;->mAdapter:Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;

    invoke-virtual {v1, v3}, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;->setActionMode(Z)V

    .line 458
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 459
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/CurrentCountryListActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/phone/CurrentCountryListActivity;->access$402(Lcom/android/phone/CurrentCountryListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 486
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iget-object v0, v0, Lcom/android/phone/CurrentCountryListActivity;->mAdapter:Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;->setActionMode(Z)V

    .line 487
    sget-boolean v0, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 491
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 492
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 493
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 464
    const/4 v0, 0x1

    return v0
.end method
