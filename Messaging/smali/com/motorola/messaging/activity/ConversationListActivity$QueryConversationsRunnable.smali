.class Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ConversationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryConversationsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ConversationListActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity;Lcom/motorola/messaging/activity/ConversationListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/ConversationListActivity;
    .param p2, "x1"    # Lcom/motorola/messaging/activity/ConversationListActivity$1;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;-><init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 394
    iget-object v2, p0, Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/motorola/messaging/conversation/ThreadFilter;->filter(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 397
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-static {v2, v0}, Lcom/motorola/messaging/conversation/Conversation;->cacheFromCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 399
    iget-object v2, p0, Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$100(Lcom/motorola/messaging/activity/ConversationListActivity;)Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 400
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/motorola/messaging/activity/ConversationListActivity$QueryConversationsRunnable;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$100(Lcom/motorola/messaging/activity/ConversationListActivity;)Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 401
    return-void
.end method
