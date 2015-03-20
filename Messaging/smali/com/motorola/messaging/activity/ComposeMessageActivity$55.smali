.class Lcom/motorola/messaging/activity/ComposeMessageActivity$55;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->processMultipleContactsSelection(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 3483
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3483
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 3504
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->val$intent:Landroid/content/Intent;

    const-string v6, "com.android.contacts.SelectedContacts"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3505
    .local v4, "selectedAddressesUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v3, 0x0

    .line 3506
    .local v3, "index":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3507
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3508
    .local v0, "address":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 3509
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mPopulatingTask:Landroid/os/AsyncTask;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/AsyncTask;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3529
    :cond_0
    :goto_1
    return-object v7

    .line 3513
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3514
    .local v1, "addressUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/motorola/messaging/contact/ContactUtils;->getAddressForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3515
    if-eqz v0, :cond_2

    .line 3516
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3518
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 3519
    goto :goto_0

    .line 3520
    .end local v1    # "addressUri":Landroid/net/Uri;
    :cond_3
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3523
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3524
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->fillComposer(Ljava/util/List;)V

    .line 3526
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->resolveComposerWidget()V

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3543
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3544
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4202(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 3546
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3483
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3535
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3536
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4202(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 3538
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3487
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4202(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 3488
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const v2, 0x7f0b01b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3489
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3490
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3491
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$55$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$55$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$55;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3498
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 3499
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$55;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3500
    return-void
.end method
