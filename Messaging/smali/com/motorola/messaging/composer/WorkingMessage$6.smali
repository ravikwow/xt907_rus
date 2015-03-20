.class Lcom/motorola/messaging/composer/WorkingMessage$6;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/composer/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/composer/WorkingMessage;

.field final synthetic val$contents:Ljava/lang/String;

.field final synthetic val$conv:Lcom/motorola/messaging/conversation/Conversation;

.field final synthetic val$smilModel:Lcom/motorola/messaging/model/SmilModel;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;Lcom/motorola/messaging/model/SmilModel;)V
    .locals 0

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iput-object p2, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    iput-object p3, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->val$contents:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->val$smilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2061
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v3}, Lcom/motorola/messaging/conversation/Conversation;->ensureThreadId()J

    move-result-wide v0

    .line 2062
    .local v0, "threadId":J
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/messaging/conversation/Conversation;->setDraftState(Z)V

    .line 2064
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 2082
    :goto_0
    return-void

    .line 2068
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2069
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2070
    const-string v3, "body"

    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->val$contents:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string v3, "type"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2072
    const-string v3, "priority"

    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I
    invoke-static {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1700(Lcom/motorola/messaging/composer/WorkingMessage;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2073
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1800(Lcom/motorola/messaging/composer/WorkingMessage;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1900(Lcom/motorola/messaging/composer/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v5, v2}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2076
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->val$smilModel:Lcom/motorola/messaging/model/SmilModel;

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->deleteDraftMmsMessage(JLcom/motorola/messaging/model/SmilModel;)V
    invoke-static {v3, v0, v1, v4}, Lcom/motorola/messaging/composer/WorkingMessage;->access$2000(Lcom/motorola/messaging/composer/WorkingMessage;JLcom/motorola/messaging/model/SmilModel;)V

    .line 2079
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v3}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v5}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/motorola/messaging/contact/RecipientIdCache;->updateNumbers(JLcom/motorola/messaging/contact/ContactList;)V

    .line 2081
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage$6;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->clearPreviousThread()V
    invoke-static {v3}, Lcom/motorola/messaging/composer/WorkingMessage;->access$2100(Lcom/motorola/messaging/composer/WorkingMessage;)V

    goto :goto_0
.end method
