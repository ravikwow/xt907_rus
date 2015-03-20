.class Lcom/motorola/messaging/activity/ComposeMessageActivity$49;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$newText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 3068
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->val$newText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 3070
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v4, 0x1

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSmsToMmsConversionConfirmed:Z
    invoke-static {v3, v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4102(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z

    .line 3071
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 3072
    .local v1, "oldCursorPos":I
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3073
    .local v2, "oldString":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->val$newText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3074
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->val$newText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .line 3075
    .local v0, "newCursorPos":I
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->val$newText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 3076
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->val$newText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3078
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$49;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 3079
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3080
    return-void
.end method
