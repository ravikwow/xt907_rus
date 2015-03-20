.class final Lcom/android/contacts/util/AccountSelectionUtil$3;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/android/contacts/util/AccountsListAdapter;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/contacts/util/AccountSelectionUtil$3;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    iput-object p2, p0, Lcom/android/contacts/util/AccountSelectionUtil$3;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/contacts/util/AccountSelectionUtil$3;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/util/AccountsListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/contacts/util/AccountSelectionUtil;->lastSelectedIndex:I

    iget-object v1, p0, Lcom/android/contacts/util/AccountSelectionUtil$3;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/util/AccountsListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/contacts/util/AccountSelectionUtil$3;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/util/AccountSelectionUtil;->userSelection:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/util/AccountSelectionUtil$3;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    sget v3, Lcom/android/contacts/util/AccountSelectionUtil;->lastSelectedIndex:I

    invoke-virtual {v2, v3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->SaveUserPreferredAccountToSharedPreferences(Landroid/content/Context;ZLandroid/accounts/Account;)V

    .line 214
    :cond_0
    sget-object v0, Lcom/android/contacts/util/AccountSelectionUtil;->onGlobalClickListener:Landroid/content/DialogInterface$OnClickListener;

    sget v1, Lcom/android/contacts/util/AccountSelectionUtil;->lastSelectedIndex:I

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 215
    return-void
.end method
