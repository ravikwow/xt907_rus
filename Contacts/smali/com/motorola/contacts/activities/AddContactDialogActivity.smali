.class public Lcom/motorola/contacts/activities/AddContactDialogActivity;
.super Landroid/app/Activity;
.source "AddContactDialogActivity.java"


# instance fields
.field private mFragment:Lcom/motorola/contacts/list/AddContactDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 41
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    const-string v7, "phone"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 44
    .local v3, "hasPhone":Z
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    const-string v7, "email"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 45
    .local v2, "hasEmail":Z
    const/4 v1, 0x0

    .line 46
    .local v1, "data":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 47
    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/motorola/contacts/list/AddContactDialogFragment;

    .line 54
    .local v5, "prev":Lcom/motorola/contacts/list/AddContactDialogFragment;
    if-nez v5, :cond_1

    .line 56
    invoke-static {v1, v3}, Lcom/motorola/contacts/list/AddContactDialogFragment;->newInstance(Ljava/lang/String;Z)Lcom/motorola/contacts/list/AddContactDialogFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/contacts/activities/AddContactDialogActivity;->mFragment:Lcom/motorola/contacts/list/AddContactDialogFragment;

    .line 58
    iget-object v6, p0, Lcom/motorola/contacts/activities/AddContactDialogActivity;->mFragment:Lcom/motorola/contacts/list/AddContactDialogFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "dialog"

    invoke-virtual {v6, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    :cond_1
    return-void

    .line 48
    .end local v5    # "prev":Lcom/motorola/contacts/list/AddContactDialogFragment;
    :cond_2
    if-eqz v2, :cond_0

    .line 49
    const-string v6, "email"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
