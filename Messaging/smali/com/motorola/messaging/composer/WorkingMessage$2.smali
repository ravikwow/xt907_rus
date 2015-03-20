.class Lcom/motorola/messaging/composer/WorkingMessage$2;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/composer/WorkingMessage;->saveDraft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/composer/WorkingMessage;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/WorkingMessage;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1272
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    const/4 v2, 0x0

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->prepareForSave(Z)V
    invoke-static {v1, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->access$500(Lcom/motorola/messaging/composer/WorkingMessage;Z)V

    .line 1274
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1275
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->access$600(Lcom/motorola/messaging/composer/WorkingMessage;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v2

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/motorola/messaging/conversation/Conversation;)V
    invoke-static {v1, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->access$700(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;)V

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->asyncDeleteDraftMmsMessage()V
    invoke-static {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->access$800(Lcom/motorola/messaging/composer/WorkingMessage;)V

    .line 1281
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->access$900(Lcom/motorola/messaging/composer/WorkingMessage;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    const/4 v2, 0x1

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlySignature(Ljava/lang/String;Z)Z
    invoke-static {v1, v0, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1000(Lcom/motorola/messaging/composer/WorkingMessage;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1290
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage$2;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v2}, Lcom/motorola/messaging/composer/WorkingMessage;->access$600(Lcom/motorola/messaging/composer/WorkingMessage;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v2

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1100(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V

    goto :goto_0
.end method
