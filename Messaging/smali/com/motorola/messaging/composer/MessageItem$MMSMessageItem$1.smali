.class Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;
.super Ljava/lang/Object;
.source "MessageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->update(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

.field final synthetic val$boxId:I

.field final synthetic val$errorType:I

.field final synthetic val$isProtected:Z


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;ZII)V
    .locals 0

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iput-boolean p2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$isProtected:Z

    iput p3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$boxId:I

    iput p4, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$errorType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1296
    const/4 v1, 0x0

    .line 1298
    .local v1, "needsUpdate":Z
    sget-boolean v2, Lcom/motorola/messaging/composer/MessageItem;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 1299
    const-string v2, "MMSMessageItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating, id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-wide v4, v4, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1302
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-object v2, v2, Lcom/motorola/messaging/composer/MessageItem;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    # getter for: Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->access$400(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/transaction/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v0

    .line 1304
    .local v0, "downloadState":I
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    # getter for: Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mDownloadState:I
    invoke-static {v2}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->access$500(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;)I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 1305
    sget-boolean v2, Lcom/motorola/messaging/composer/MessageItem;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 1306
    const-string v2, "MMSMessageItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updated, id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-wide v4, v4, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new state ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    :cond_1
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->finishLoading()V

    .line 1336
    .end local v0    # "downloadState":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 1337
    sget-boolean v2, Lcom/motorola/messaging/composer/MessageItem;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 1338
    const-string v2, "MMSMessageItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updated, id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-wide v4, v4, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_3
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->updateListener()V

    .line 1342
    :cond_4
    return-void

    .line 1310
    .restart local v0    # "downloadState":I
    :cond_5
    iget-boolean v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$isProtected:Z

    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-boolean v3, v3, Lcom/motorola/messaging/composer/MessageItem;->mIsProtected:Z

    if-eq v2, v3, :cond_2

    .line 1311
    const/4 v1, 0x1

    .line 1312
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-boolean v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$isProtected:Z

    iput-boolean v3, v2, Lcom/motorola/messaging/composer/MessageItem;->mIsProtected:Z

    goto :goto_0

    .line 1316
    .end local v0    # "downloadState":I
    :cond_6
    iget v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$boxId:I

    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget v3, v3, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    if-eq v2, v3, :cond_7

    .line 1317
    const/4 v1, 0x1

    .line 1318
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$boxId:I

    iput v3, v2, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    .line 1320
    :cond_7
    iget v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$errorType:I

    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    # getter for: Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mErrorType:I
    invoke-static {v3}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->access$600(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;)I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 1321
    const/4 v1, 0x1

    .line 1322
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$errorType:I

    # setter for: Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mErrorType:I
    invoke-static {v2, v3}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->access$602(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;I)I

    .line 1324
    :cond_8
    iget-boolean v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$isProtected:Z

    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-boolean v3, v3, Lcom/motorola/messaging/composer/MessageItem;->mIsProtected:Z

    if-eq v2, v3, :cond_9

    .line 1325
    const/4 v1, 0x1

    .line 1326
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-boolean v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->val$isProtected:Z

    iput-boolean v3, v2, Lcom/motorola/messaging/composer/MessageItem;->mIsProtected:Z

    .line 1328
    :cond_9
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-object v2, v2, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    sget-object v3, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->PENDING:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    if-ne v2, v3, :cond_2

    .line 1330
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    # invokes: Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->initDeliveryReport()V
    invoke-static {v2}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->access$700(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;)V

    .line 1331
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;->this$0:Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    iget-object v2, v2, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    sget-object v3, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->PENDING:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    if-eq v2, v3, :cond_2

    .line 1332
    const/4 v1, 0x1

    goto :goto_0
.end method
