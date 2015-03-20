.class Lcom/motorola/messaging/activity/ComposeMessageActivity$62;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onAttachmentChanged()V
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
    .line 5968
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$62;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5970
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$62;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAttachmentManager:Lcom/motorola/messaging/attachment/AttachmentManager;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/attachment/AttachmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$62;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/attachment/AttachmentManager;->update(Lcom/motorola/messaging/composer/WorkingMessage;)V

    .line 5971
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$62;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 5973
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$62;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateImeOptions()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 5975
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$62;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 5976
    return-void
.end method
