.class Lcom/android/contacts/activities/ContactSelectionActivity$1;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;->prepareSearchViewAndActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$1;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$1;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$000(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$1;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$000(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 297
    return-void
.end method
