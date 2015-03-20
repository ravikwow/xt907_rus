.class Lcom/motorola/messaging/composer/WorkingMessage$5;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/composer/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/motorola/messaging/conversation/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/composer/WorkingMessage;

.field final synthetic val$conv:Lcom/motorola/messaging/conversation/Conversation;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$sendReq:Lcom/motorola/messaging/pdu/SendReq;

.field final synthetic val$smilModel:Lcom/motorola/messaging/model/SmilModel;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;)V
    .locals 0

    .prologue
    .line 1965
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iput-object p2, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    iput-object p3, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$msgUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$smilModel:Lcom/motorola/messaging/model/SmilModel;

    iput-object p5, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$sendReq:Lcom/motorola/messaging/pdu/SendReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$msgUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$smilModel:Lcom/motorola/messaging/model/SmilModel;

    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$sendReq:Lcom/motorola/messaging/pdu/SendReq;

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->createOrUpdateDraftMms(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;)Landroid/net/Uri;
    invoke-static {v1, v2, v3, v4, v5}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1500(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;)Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1402(Lcom/motorola/messaging/composer/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1968
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/conversation/Conversation;->setDraftState(Z)V

    .line 1970
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage$5;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v2}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/contact/RecipientIdCache;->updateNumbers(JLcom/motorola/messaging/contact/ContactList;)V

    .line 1971
    return-void
.end method
