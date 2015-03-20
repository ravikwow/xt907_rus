.class Lcom/motorola/messaging/activity/ComposeMessageActivity$63;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onDraftsLoaded()V
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
    .line 5980
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5982
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6400(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->slideBottomPanel(Landroid/view/View;Z)V

    .line 5983
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentManager:Lcom/motorola/messaging/attachment/AttachmentManager;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/attachment/AttachmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/attachment/AttachmentManager;->update(Lcom/motorola/messaging/composer/WorkingMessage;)V

    .line 5984
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSubject()Z

    move-result v1

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->showSubjectEditor(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3200(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 5985
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 5987
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMultipleRecipients()Z

    move-result v1

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->showWarningBar(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3800(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 5988
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->openVirtualKeypadForMessageEditor()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 5989
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setTextEditorCursorAtEnd()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 5991
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$63;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 5992
    return-void
.end method
