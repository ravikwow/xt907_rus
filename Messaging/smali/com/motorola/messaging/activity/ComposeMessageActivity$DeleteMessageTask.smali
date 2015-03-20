.class Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeleteProtected:Z

.field private mMmsWhereClause:Ljava/lang/StringBuilder;

.field private mMsgIdArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNoLockedString:Ljava/lang/String;

.field private mOriginalMsgCount:I

.field private mSmsWhereClause:Ljava/lang/StringBuilder;

.field private mTotalDeleted:I

.field private mTotalToBeDeleted:I

.field private mWhereClauseColumn:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;JLjava/lang/String;Z)V
    .locals 5
    .param p2, "msgId"    # J
    .param p4, "msgType"    # Ljava/lang/String;
    .param p5, "deleteProtected"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5147
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5135
    const-string v2, " AND locked=0"

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mNoLockedString:Ljava/lang/String;

    .line 5136
    const-string v2, "_id"

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mWhereClauseColumn:Ljava/lang/String;

    .line 5140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mMsgIdArray:Ljava/util/List;

    .line 5148
    const/4 v1, 0x0

    .line 5149
    .local v1, "smsId":[J
    const/4 v0, 0x0

    .line 5151
    .local v0, "mmsId":[J
    const-string v2, "sms"

    invoke-static {p4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5152
    new-array v1, v4, [J

    .line 5153
    aput-wide p2, v1, v3

    .line 5159
    :goto_0
    invoke-direct {p0, v1, v0, p5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->initialize([J[JZ)V

    .line 5160
    return-void

    .line 5155
    :cond_0
    new-array v0, v4, [J

    .line 5156
    aput-wide p2, v0, v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;[J[JZ)V
    .locals 1
    .param p2, "smsIdArray"    # [J
    .param p3, "mmsIdArray"    # [J
    .param p4, "deleteProtected"    # Z

    .prologue
    .line 5142
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5135
    const-string v0, " AND locked=0"

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mNoLockedString:Ljava/lang/String;

    .line 5136
    const-string v0, "_id"

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mWhereClauseColumn:Ljava/lang/String;

    .line 5140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mMsgIdArray:Ljava/util/List;

    .line 5143
    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->initialize([J[JZ)V

    .line 5144
    return-void
.end method

.method private deletePendingSms()V
    .locals 5

    .prologue
    .line 5246
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsErrorCodesEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5247
    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mDeleteProtected:Z

    if-nez v2, :cond_0

    .line 5248
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mNoLockedString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5250
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mWhereClauseColumn:Ljava/lang/String;

    const-string v4, "msg_id"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 5253
    .local v1, "whereClause":Ljava/lang/String;
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask$1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;Ljava/lang/String;)V

    .line 5263
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    const-string v3, "delete_pending"

    invoke-virtual {v2, v0, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5265
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "whereClause":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initialize([J[JZ)V
    .locals 9
    .param p1, "smsIdArray"    # [J
    .param p2, "mmsIdArray"    # [J
    .param p3, "deleteProtected"    # Z

    .prologue
    const/4 v6, 0x0

    .line 5163
    iput-boolean p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mDeleteProtected:Z

    .line 5164
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mWhereClauseColumn:Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/motorola/messaging/util/MessageUtils;->buildMultipleWhereClause(Ljava/lang/String;[J)Ljava/lang/StringBuilder;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    .line 5165
    if-eqz p1, :cond_0

    .line 5166
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 5167
    .local v2, "id":J
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mMsgIdArray:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5170
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v2    # "id":J
    .end local v4    # "len$":I
    :cond_0
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mWhereClauseColumn:Ljava/lang/String;

    invoke-static {v5, p2}, Lcom/motorola/messaging/util/MessageUtils;->buildMultipleWhereClause(Ljava/lang/String;[J)Ljava/lang/StringBuilder;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mMmsWhereClause:Ljava/lang/StringBuilder;

    .line 5171
    if-eqz p2, :cond_1

    .line 5172
    move-object v0, p2

    .restart local v0    # "arr$":[J
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-wide v2, v0, v1

    .line 5175
    .restart local v2    # "id":J
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mMsgIdArray:Ljava/util/List;

    neg-long v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5178
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v2    # "id":J
    .end local v4    # "len$":I
    :cond_1
    if-nez p1, :cond_2

    move v5, v6

    :goto_2
    iput v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalToBeDeleted:I

    .line 5179
    iget v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalToBeDeleted:I

    if-nez p2, :cond_3

    :goto_3
    add-int/2addr v5, v6

    iput v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalToBeDeleted:I

    .line 5180
    return-void

    .line 5178
    :cond_2
    array-length v5, p1

    goto :goto_2

    .line 5179
    :cond_3
    array-length v6, p2

    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5130
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 5193
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 5194
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mDeleteProtected:Z

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5195
    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalDeleted:I

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalDeleted:I

    .line 5199
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mMmsWhereClause:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 5200
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mMmsWhereClause:Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mDeleteProtected:Z

    if-eqz v1, :cond_4

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5201
    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalDeleted:I

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mMmsWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalDeleted:I

    .line 5206
    :cond_1
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5207
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeleteMessageTask - doinBackground: mOriginalMsgCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mOriginalMsgCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5208
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeleteMessageTask - doinBackground: mTotalToBeDeleted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalToBeDeleted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5209
    const-string v1, "ComposeMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeleteMessageTask - doinBackground: mTotalDeleted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalDeleted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5212
    :cond_2
    new-instance v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v1, 0x3

    const-string v2, "MSG_DELETED"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 5213
    .local v0, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v1, "numMsgs"

    iget v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalDeleted:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 5214
    invoke-virtual {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 5216
    return-object v6

    .line 5194
    .end local v0    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    :cond_3
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mNoLockedString:Ljava/lang/String;

    goto/16 :goto_0

    .line 5200
    :cond_4
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mNoLockedString:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5130
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 5221
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mOriginalMsgCount:I

    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalDeleted:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    .line 5222
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5223
    const-string v0, "ComposeMsgActivity"

    const-string v1, "DeleteMessageTask - Total message count is now 0. Close cursor"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5226
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->switchToReadWrite()V

    .line 5228
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->clearThreadId()V

    .line 5229
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/adapter/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 5230
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;
    invoke-static {v0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4702(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/adapter/MessageListAdapter;)Lcom/motorola/messaging/adapter/MessageListAdapter;

    .line 5231
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5234
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 5235
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->deletePendingSms()V

    .line 5237
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->onContentDeleted()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$5000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 5238
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalToBeDeleted:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5239
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 5241
    :cond_3
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 5184
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/adapter/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mOriginalMsgCount:I

    .line 5185
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mTotalToBeDeleted:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 5187
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 5189
    :cond_0
    return-void
.end method

.method public setDeleteProtectedMessage(Z)V
    .locals 0
    .param p1, "deleteProtected"    # Z

    .prologue
    .line 5268
    iput-boolean p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->mDeleteProtected:Z

    .line 5269
    return-void
.end method
