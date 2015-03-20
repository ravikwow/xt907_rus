.class Lcom/android/contacts/editor/SelectAccountDialogFragment$2;
.super Ljava/lang/Object;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/SelectAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

.field final synthetic val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;Landroid/app/AlertDialog$Builder;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->val$builder:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->userSelection:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v3, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->lastSelectedIndex:I
    invoke-static {v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->SaveUserPreferredAccountToSharedPreferences(Landroid/content/Context;ZLandroid/accounts/Account;)V

    .line 124
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v2, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->lastSelectedIndex:I
    invoke-static {v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    # invokes: Lcom/android/contacts/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$200(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 125
    return-void
.end method
