.class Lcom/motorola/messaging/activity/ConversationListActivity$1;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ConversationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ConversationListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$1;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/motorola/messaging/adapter/ConversationListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/motorola/messaging/adapter/ConversationListAdapter;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$1;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mInternalHandler:Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$100(Lcom/motorola/messaging/activity/ConversationListActivity;)Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    const-string v2, "read=0"

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 109
    return-void
.end method
