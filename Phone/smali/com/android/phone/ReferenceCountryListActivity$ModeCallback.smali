.class Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;
.super Ljava/lang/Object;
.source "ReferenceCountryListActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ReferenceCountryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field curRefMcc:I

.field final synthetic this$0:Lcom/android/phone/ReferenceCountryListActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/ReferenceCountryListActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/ReferenceCountryListActivity;Lcom/android/phone/ReferenceCountryListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/ReferenceCountryListActivity;
    .param p2, "x1"    # Lcom/android/phone/ReferenceCountryListActivity$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;-><init>(Lcom/android/phone/ReferenceCountryListActivity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    .line 205
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 228
    :goto_0
    return v0

    .line 208
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    iget v0, v0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    # invokes: Lcom/android/phone/ReferenceCountryListActivity;->updateSettingDb(I)V
    invoke-static {v1, v0}, Lcom/android/phone/ReferenceCountryListActivity;->access$200(Lcom/android/phone/ReferenceCountryListActivity;I)V

    .line 209
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    # getter for: Lcom/android/phone/ReferenceCountryListActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/ReferenceCountryListActivity;->access$100(Lcom/android/phone/ReferenceCountryListActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :goto_1
    move v0, v2

    .line 228
    goto :goto_0

    .line 212
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 213
    const-string v4, "com.android.phone.assist.detail.mcc"

    iget v5, v0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget v4, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->curRefMcc:I

    iget v0, v0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    if-ne v4, v0, :cond_0

    .line 217
    const-string v0, "com.android.phone.assist.detail.ro"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    :goto_2
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    const-class v1, Lcom/android/phone/ReferenceCountryDetail;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 222
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 223
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    # getter for: Lcom/android/phone/ReferenceCountryListActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/ReferenceCountryListActivity;->access$100(Lcom/android/phone/ReferenceCountryListActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 219
    :cond_0
    const-string v0, "com.android.phone.assist.detail.ro"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ref_country_mcc"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->curRefMcc:I

    .line 183
    const v0, 0x7f0c038f

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 184
    const v0, 0x7f0c0391

    invoke-interface {p2, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 186
    const/4 v0, 0x2

    const v1, 0x7f0c0390

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 187
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    # setter for: Lcom/android/phone/ReferenceCountryListActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, p1}, Lcom/android/phone/ReferenceCountryListActivity;->access$102(Lcom/android/phone/ReferenceCountryListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 188
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    iget-object v0, v0, Lcom/android/phone/ReferenceCountryListActivity;->mAdapter:Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;

    invoke-virtual {v0, v3}, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;->setActionMode(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 190
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/ReferenceCountryListActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/phone/ReferenceCountryListActivity;->access$102(Lcom/android/phone/ReferenceCountryListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 234
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    iget-object v0, v0, Lcom/android/phone/ReferenceCountryListActivity;->mAdapter:Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;->setActionMode(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 237
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 238
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 195
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->this$0:Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    .line 197
    .local v0, "node":Lcom/android/phone/AssistedDialingUtil$CtryListNode;
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v1, p0, Lcom/android/phone/ReferenceCountryListActivity$ModeCallback;->curRefMcc:I

    iget v4, v0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    if-eq v1, v4, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    return v2

    .line 197
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
