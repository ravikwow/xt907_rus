.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field final synthetic val$favoritesStar:Landroid/widget/ImageView;

.field final synthetic val$lookupUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$lookupUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$favoritesStar:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1588
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$lookupUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 1592
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$favoritesStar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1593
    .local v2, "tag":Ljava/lang/Object;
    if-nez v2, :cond_1

    move v1, v4

    .line 1598
    .local v1, "isStarred":Z
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$favoritesStar:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v7

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v8

    if-nez v1, :cond_2

    move v3, v5

    :goto_1
    invoke-static {v6, v7, v8, v3}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->configureStarredImageView(Landroid/widget/ImageView;ZZZ)V

    .line 1603
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$lookupUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    :goto_2
    invoke-static {v3, v6, v5}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1605
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1607
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isStarred":Z
    .end local v2    # "tag":Ljava/lang/Object;
    :cond_0
    return-void

    .line 1593
    .restart local v2    # "tag":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;->val$favoritesStar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .restart local v1    # "isStarred":Z
    :cond_2
    move v3, v4

    .line 1598
    goto :goto_1

    :cond_3
    move v5, v4

    .line 1603
    goto :goto_2
.end method
