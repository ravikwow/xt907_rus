.class Lcom/android/contacts/editor/SelectAccountDialogFragment$3;
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


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$3;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$3;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 131
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 132
    check-cast v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    .line 133
    .local v0, "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    invoke-interface {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    .line 135
    .end local v0    # "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method
