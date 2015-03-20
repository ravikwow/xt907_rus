.class Lcom/motorola/messaging/activity/ComposeMessageActivity$65;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onPreMessageSent()V
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
    .line 6045
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$65;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6047
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$65;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->resetMessage()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3400(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 6049
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$65;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->switchToReadOnly()V

    .line 6053
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$65;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/adapter/MessageListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6054
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$65;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->initMessageList()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$6900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 6056
    :cond_0
    return-void
.end method
