.class Lcom/android/contacts/activities/ContactSelectionActivity$2;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;->configureSelectUnSelectButton()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

.field final synthetic val$targetOKButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->val$targetOKButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$000(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 370
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$000(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 371
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->val$targetOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 372
    return-void
.end method
