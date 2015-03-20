.class Lcom/motorola/contacts/list/AddContactDialogFragment$1;
.super Ljava/lang/Object;
.source "AddContactDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/list/AddContactDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/list/AddContactDialogFragment;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/list/AddContactDialogFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/motorola/contacts/list/AddContactDialogFragment$1;->this$0:Lcom/motorola/contacts/list/AddContactDialogFragment;

    iput-object p2, p0, Lcom/motorola/contacts/list/AddContactDialogFragment$1;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/contacts/list/AddContactDialogFragment$1;->val$args:Landroid/os/Bundle;

    const-string v2, "isNumber"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "phone"

    iget-object v2, p0, Lcom/motorola/contacts/list/AddContactDialogFragment$1;->val$args:Landroid/os/Bundle;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/motorola/contacts/list/AddContactDialogFragment$1;->this$0:Lcom/motorola/contacts/list/AddContactDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v1, p0, Lcom/motorola/contacts/list/AddContactDialogFragment$1;->this$0:Lcom/motorola/contacts/list/AddContactDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 114
    return-void

    .line 109
    :cond_0
    const-string v1, "email"

    iget-object v2, p0, Lcom/motorola/contacts/list/AddContactDialogFragment$1;->val$args:Landroid/os/Bundle;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
