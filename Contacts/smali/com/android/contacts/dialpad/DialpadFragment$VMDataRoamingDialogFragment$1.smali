.class Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$1;
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
    .line 2432
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$1;->val$VMVVM_roaming_remembermychoice:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2434
    # getter for: Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "showVMDataRoamingDialog VM in roaming selected"

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$400(Ljava/lang/String;)V

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->access$500()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2436
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/util/MEDialer;->onVM(Landroid/content/Context;)V

    .line 2437
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$1;->val$VMVVM_roaming_remembermychoice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2438
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vm_vvm_roaming_selection"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2439
    :cond_1
    return-void
.end method
