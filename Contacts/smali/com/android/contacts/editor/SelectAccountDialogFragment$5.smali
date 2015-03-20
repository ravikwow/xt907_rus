.class Lcom/android/contacts/editor/SelectAccountDialogFragment$5;
.super Ljava/lang/Object;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 159
    iput-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$5;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$5;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/editor/SelectAccountDialogFragment;->userSelection:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 164
    return-void
.end method
