.class Lcom/android/contacts/activities/DialtactsActivity$1;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;


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
    .line 299
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactListFilterChanged()V
    .locals 3

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "doInvalidateOptionsMenu":Z
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneFavoriteFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneFavoriteFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneFavoriteFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 306
    const/4 v0, 0x1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 311
    const/4 v0, 0x1

    .line 316
    :goto_0
    if-eqz v0, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 319
    :cond_1
    return-void

    .line 313
    :cond_2
    const-string v1, "DialtactsActivity"

    const-string v2, "Search Fragment isn\'t available when ContactListFilter is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
