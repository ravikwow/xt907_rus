.class Lcom/motorola/messaging/view/MessageListItem$3;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/MessageListItem;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MessageListItem;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageListItem;->access$700(Lcom/motorola/messaging/view/MessageListItem;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageListItem;->access$700(Lcom/motorola/messaging/view/MessageListItem;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mActivityHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageListItem;->access$800(Lcom/motorola/messaging/view/MessageListItem;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindCallbackNumber(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$900(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 611
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindFrom(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1000(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 612
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindDate(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1100(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 613
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindStatusIndicator(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1200(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 614
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindProtectedIndicator(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1300(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 615
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindGroupTypeIndicator(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1400(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 616
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindMmsView(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1500(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 617
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindDeferredMMSItems(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1600(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 618
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindText(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1700(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 619
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$3;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindAvatar(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1800(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 620
    return-void
.end method
