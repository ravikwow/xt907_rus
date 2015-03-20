.class final Lcom/motorola/messaging/conversation/Conversation$4;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/conversation/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/motorola/messaging/conversation/Conversation$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$4;->val$context:Landroid/content/Context;

    # invokes: Lcom/motorola/messaging/conversation/Conversation;->blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$200(Landroid/content/Context;)V

    .line 335
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$4;->val$context:Landroid/content/Context;

    # invokes: Lcom/motorola/messaging/conversation/Conversation;->blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$300(Landroid/content/Context;)V

    .line 338
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/util/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 339
    return-void
.end method
