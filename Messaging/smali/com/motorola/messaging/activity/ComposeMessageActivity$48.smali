.class Lcom/motorola/messaging/activity/ComposeMessageActivity$48;
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

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$doNotShowAgainCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$imageAppend:Z

.field final synthetic val$imageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/widget/CheckBox;Landroid/net/Uri;ZLandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 3052
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->val$doNotShowAgainCheckbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->val$imageUri:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->val$imageAppend:Z

    iput-object p5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 3054
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->val$doNotShowAgainCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3055
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->setMmsShowLocationWarning(Z)V

    .line 3057
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->val$imageUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->val$imageAppend:Z

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 3058
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$48;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3059
    return-void
.end method
