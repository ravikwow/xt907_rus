.class Lcom/motorola/messaging/activity/ComposeMessageActivity$29;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2719
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$29;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 2722
    if-nez p2, :cond_1

    move v0, v1

    .line 2723
    .local v0, "isMessageGroupType":Z
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$29;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->isMessageGroupType()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2724
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$29;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->setMessageGroupType(Z)V

    .line 2725
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$29;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->showWarningBar(Z)V
    invoke-static {v2, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3800(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 2727
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2728
    return-void

    .line 2722
    .end local v0    # "isMessageGroupType":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
