.class Lcom/android/contacts/editor/ContactEditorFragment$3;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$currentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

.field final synthetic val$currentState:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/view/View;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$anchorView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentState:Lcom/android/contacts/model/RawContactDelta;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;
    invoke-static {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$402(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 952
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 955
    .local v0, "adapter":Lcom/android/contacts/util/AccountsListAdapter;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$anchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 956
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$anchorView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 957
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 958
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 959
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 960
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/editor/ContactEditorFragment$3$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment$3$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$3;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 971
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 972
    return-void
.end method
