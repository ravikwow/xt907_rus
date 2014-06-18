.class public Lcom/android/contacts/vcard/SelectAccountActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;
    }
.end annotation


# instance fields
.field private mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0b00be

    const/4 v6, 0x1

    .line 55
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v4, 0x7f0b00be

    .line 62
    .local v4, "resId":I
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 63
    .local v2, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v2, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 65
    const-string v5, "SelectAccountActivity"

    const-string v6, "Account does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/vcard/SelectAccountActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 69
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 70
    .local v0, "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "account_name"

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v5, "account_type"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v5, "data_set"

    iget-object v6, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/vcard/SelectAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/vcard/SelectAccountActivity;->finish()V

    goto :goto_0

    .line 79
    .end local v0    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v5, "SelectAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The number of available accounts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v5, Lcom/android/contacts/vcard/SelectAccountActivity$1;

    invoke-direct {v5, p0, p0, v1, v8}, Lcom/android/contacts/vcard/SelectAccountActivity$1;-><init>(Lcom/android/contacts/vcard/SelectAccountActivity;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/android/contacts/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    .line 97
    invoke-virtual {p0, v8}, Lcom/android/contacts/vcard/SelectAccountActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 114
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mAccountSelectionListener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    new-instance v1, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/SelectAccountActivity;Lcom/android/contacts/vcard/SelectAccountActivity$1;)V

    invoke-static {p0, p1, v0, v1}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00be
        :pswitch_0
    .end packed-switch
.end method
