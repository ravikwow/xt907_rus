.class Lcom/motorola/messaging/view/MessageListItem$1$1$1;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/MessageListItem$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mResult:Lcom/motorola/messaging/transaction/DownloadManager$Result;

.field final synthetic this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MessageListItem$1$1;Landroid/os/Handler;I)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 416
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;

    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 3

    .prologue
    .line 422
    # getter for: Lcom/motorola/messaging/view/MessageListItem;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/view/MessageListItem;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    const-string v1, "MessageListItem"

    const-string v2, "MMS-STATUS - Download new MMS (manual request)"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/TransactionManager;->getDownloadManager()Lcom/motorola/messaging/transaction/DownloadManager;

    move-result-object v0

    .line 427
    .local v0, "downloadManager":Lcom/motorola/messaging/transaction/DownloadManager;
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;

    iget-object v1, v1, Lcom/motorola/messaging/view/MessageListItem$1$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$1;

    iget-object v1, v1, Lcom/motorola/messaging/view/MessageListItem$1;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/MessageItem;->getMmsUri()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/transaction/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/motorola/messaging/transaction/DownloadManager$Result;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->mResult:Lcom/motorola/messaging/transaction/DownloadManager$Result;

    .line 428
    return-void
.end method

.method protected onPostExecute()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 432
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->mResult:Lcom/motorola/messaging/transaction/DownloadManager$Result;

    sget-object v1, Lcom/motorola/messaging/transaction/DownloadManager$Result;->SUCCESS:Lcom/motorola/messaging/transaction/DownloadManager$Result;

    if-ne v0, v1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$1$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$1;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$1;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageListItem;->access$200(Lcom/motorola/messaging/view/MessageListItem;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$1$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$1;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$1;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageListItem;->access$300(Lcom/motorola/messaging/view/MessageListItem;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsWapRejectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$1$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$1;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$1;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageListItem;->access$400(Lcom/motorola/messaging/view/MessageListItem;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$1$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$1;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$1;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/composer/MessageItem;->setDownloadState(I)V

    .line 440
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;

    iget-object v1, v1, Lcom/motorola/messaging/view/MessageListItem$1$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$1;

    iget-object v1, v1, Lcom/motorola/messaging/view/MessageListItem$1;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/motorola/messaging/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    const-string v1, "uri"

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;

    iget-object v2, v2, Lcom/motorola/messaging/view/MessageListItem$1$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$1;

    iget-object v2, v2, Lcom/motorola/messaging/view/MessageListItem$1;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getMmsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$1$1$1;->this$2:Lcom/motorola/messaging/view/MessageListItem$1$1;

    iget-object v1, v1, Lcom/motorola/messaging/view/MessageListItem$1$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$1;

    iget-object v1, v1, Lcom/motorola/messaging/view/MessageListItem$1;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/motorola/messaging/util/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 446
    :cond_1
    return-void
.end method
