.class Lcom/android/contacts/activities/ContactDetailActivity$2;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactDetailActivity;

.field final synthetic val$starredMenuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->val$starredMenuItem:Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 161
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->val$starredMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    .line 168
    .local v1, "isStarred":Z
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->val$starredMenuItem:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v6

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v7

    if-nez v1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v7, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V

    .line 173
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v5

    if-nez v1, :cond_0

    move v4, v3

    :cond_0
    invoke-static {v2, v5, v4}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v2, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isStarred":Z
    :cond_1
    return v3

    .restart local v1    # "isStarred":Z
    :cond_2
    move v2, v4

    .line 168
    goto :goto_0
.end method
