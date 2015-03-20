.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler$1;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

.field final synthetic val$msgItem:Lcom/motorola/messaging/composer/MessageItem;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;Landroid/os/Handler;ILcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 6264
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    iput-object p4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler$1;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 1

    .prologue
    .line 6269
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler$1;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SmilModel;->saveAllMedia()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler$1;->mResults:Ljava/util/List;

    .line 6270
    return-void
.end method

.method protected onPostExecute()V
    .locals 3

    .prologue
    .line 6274
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler$1;->mResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    .line 6275
    .local v1, "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    iget-object v2, v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->processSaveMediaResult(Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;)V
    invoke-static {v2, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$5400(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;)V

    goto :goto_0

    .line 6277
    .end local v1    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :cond_0
    return-void
.end method
