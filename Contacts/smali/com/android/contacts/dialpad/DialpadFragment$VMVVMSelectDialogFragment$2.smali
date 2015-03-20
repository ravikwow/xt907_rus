.class Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;

.field final synthetic val$VMVVM_remembermychoice:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 2476
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->val$VMVVM_remembermychoice:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "listItem"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2478
    const/4 v0, 0x0

    .line 2479
    .local v0, "mIsVVMselected":Z
    if-nez p3, :cond_3

    move v0, v1

    .line 2480
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->val$VMVVM_remembermychoice:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2481
    # getter for: Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "showVMVVMSelectDialog: reminder is checked"

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/contacts/dialpad/DialpadFragment;->access$400(Ljava/lang/String;)V

    .line 2482
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vm_vvm_selection"

    if-eqz v0, :cond_4

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2483
    if-nez v0, :cond_1

    .line 2484
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vm_vvm_roaming_selection"

    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2486
    :cond_1
    if-eqz v0, :cond_5

    .line 2487
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->newVVMIntent()Landroid/content/Intent;
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->access$600()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2488
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/MEDialer;->onVVM(Landroid/content/Context;)V

    .line 2489
    # getter for: Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "callVoicemail: VVM chosen in dialog"

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$400(Ljava/lang/String;)V

    .line 2495
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 2496
    return-void

    :cond_3
    move v0, v2

    .line 2479
    goto :goto_0

    :cond_4
    move v2, v1

    .line 2482
    goto :goto_1

    .line 2491
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->access$500()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2492
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment$VMVVMSelectDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/MEDialer;->onVM(Landroid/content/Context;)V

    .line 2493
    # getter for: Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "callVoicemail: VM chosen in dialog"

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$400(Ljava/lang/String;)V

    goto :goto_2
.end method
