.class public Lcom/motorola/messaging/conversation/ConversationHeader;
.super Ljava/lang/Object;
.source "ConversationHeader.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/motorola/messaging/conversation/Conversation;

.field private mDate:Ljava/lang/String;

.field private mHasAttachment:Z

.field private mHasDraft:Z

.field private mHasError:Z

.field private mIsRead:Z

.field private mMessageCount:I

.field private mRecipientString:Ljava/lang/String;

.field private mRecipients:Lcom/motorola/messaging/contact/ContactList;

.field private mSnippet:Ljava/lang/String;

.field private mThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/conversation/Conversation;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conv"    # Lcom/motorola/messaging/conversation/Conversation;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    .line 46
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mThreadId:J

    .line 47
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mSnippet:Ljava/lang/String;

    .line 48
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/Conversation;->getDate()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->formatShortTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mDate:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/Conversation;->hasUnreadMessages()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mIsRead:Z

    .line 50
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/Conversation;->hasError()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mHasError:Z

    .line 51
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/Conversation;->hasDraft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mHasDraft:Z

    .line 52
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/Conversation;->getMessageCount()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mMessageCount:I

    .line 53
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/Conversation;->hasAttachment()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mHasAttachment:Z

    .line 54
    iput-object p1, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/ConversationHeader;->updateRecipients()V

    .line 56
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContacts()Lcom/motorola/messaging/contact/ContactList;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mRecipientString:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mMessageCount:I

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mThreadId:J

    return-wide v0
.end method

.method public hasDraft()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mHasDraft:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mHasError:Z

    return v0
.end method

.method public hasUnreadMessages()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->hasUnreadMessages()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mIsRead:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConversationHeader thread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/ConversationHeader;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " snippet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/ConversationHeader;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDraft(Z)V
    .locals 0
    .param p1, "hasDraft"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mHasDraft:Z

    .line 65
    return-void
.end method

.method public updateRecipients()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    .line 60
    iget-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    iget-object v1, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/contact/ContactList;->getFormattedListName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/conversation/ConversationHeader;->mRecipientString:Ljava/lang/String;

    .line 61
    return-void
.end method
