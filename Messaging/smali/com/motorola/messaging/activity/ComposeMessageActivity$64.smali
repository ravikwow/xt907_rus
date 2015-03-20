.class Lcom/motorola/messaging/activity/ComposeMessageActivity$64;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onMessageSent()V
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
    .line 6008
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$64;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6012
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$64;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->unblockMessage(I)V

    .line 6016
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$64;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->checkStorage(Z)Z
    invoke-static {v1, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6600(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)Z

    move-result v0

    .line 6020
    .local v0, "isMemLow":Z
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$64;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/adapter/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 6021
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$64;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->startMsgListQuery()V
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 6025
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$64;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6028
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$64;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 6029
    return-void
.end method
