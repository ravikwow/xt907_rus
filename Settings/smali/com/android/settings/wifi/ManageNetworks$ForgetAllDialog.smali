.class public Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;
.super Landroid/app/DialogFragment;
.source "ManageNetworks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ManageNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForgetAllDialog"
.end annotation


# instance fields
.field private mParent:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;->mParent:Landroid/app/Fragment;

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Fragment;

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;->mParent:Landroid/app/Fragment;

    .line 161
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;->mParent:Landroid/app/Fragment;

    .line 162
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 189
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;->mParent:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/wifi/ManageNetworks;

    # invokes: Lcom/android/settings/wifi/ManageNetworks;->forgetAllNetworks()V
    invoke-static {v0}, Lcom/android/settings/wifi/ManageNetworks;->access$000(Lcom/android/settings/wifi/ManageNetworks;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ForgetAllDialog.parentTag"

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;->mParent:Landroid/app/Fragment;

    .line 171
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0125

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b021f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ForgetAllDialog.parentTag"

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 176
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method
