.class final Lcom/motorola/messaging/composer/WorkingMessage$1;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/composer/WorkingMessage;->loadDraft(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/conversation/Conversation;)Lcom/motorola/messaging/composer/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$conv:Lcom/motorola/messaging/conversation/Conversation;

.field final synthetic val$msg:Lcom/motorola/messaging/composer/WorkingMessage;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$msg:Lcom/motorola/messaging/composer/WorkingMessage;

    iput-object p2, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    iput-object p3, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$activity:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$msg:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->loadFromConversation(Lcom/motorola/messaging/conversation/Conversation;)Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->access$100(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$msg:Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->addSignature()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 374
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$msg:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$activity:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isDefaultMessageGroupType(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->access$202(Lcom/motorola/messaging/composer/WorkingMessage;Z)Z

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$msg:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setConversation(Lcom/motorola/messaging/conversation/Conversation;)V

    .line 378
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$msg:Lcom/motorola/messaging/composer/WorkingMessage;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/composer/WorkingMessage;->mLoading:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->access$302(Lcom/motorola/messaging/composer/WorkingMessage;Z)Z

    .line 379
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$1;->val$msg:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;
    invoke-static {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->access$400(Lcom/motorola/messaging/composer/WorkingMessage;)Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;->onDraftsLoaded()V

    .line 380
    return-void
.end method
