.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$3;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

.field final synthetic val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

.field final synthetic val$resendMsgId:J


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;JLcom/motorola/messaging/composer/MessageItem;)V
    .locals 0

    .prologue
    .line 6720
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iput-wide p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$3;->val$resendMsgId:J

    iput-object p4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$3;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6722
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$3;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$3;->val$resendMsgId:J

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$3;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v4}, Lcom/motorola/messaging/composer/MessageItem;->getTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/messaging/transaction/NetworkManager;->retryToSendMessage(JJLjava/lang/String;)V

    .line 6724
    return-void
.end method
