.class Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment;

    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$300(Lcom/android/contacts/group/GroupEditorFragment;)V

    .line 569
    return-void
.end method
