.class Lcom/android/contacts/activities/DialtactsActivity$7;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 465
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 468
    :cond_0
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V

    .line 457
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 459
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
