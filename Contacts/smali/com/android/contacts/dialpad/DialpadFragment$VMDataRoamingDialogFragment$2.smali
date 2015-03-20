.class Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

.field final synthetic val$VMVVM_roaming_remembermychoice:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 2422
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;->val$VMVVM_roaming_remembermychoice:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x1

    .line 2424
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2425
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->newVVMIntent()Landroid/content/Intent;
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->access$600()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2426
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/util/MEDialer;->onVVM(Landroid/content/Context;)V

    .line 2427
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;->val$VMVVM_roaming_remembermychoice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vm_vvm_roaming_selection"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2429
    :cond_0
    return-void
.end method
