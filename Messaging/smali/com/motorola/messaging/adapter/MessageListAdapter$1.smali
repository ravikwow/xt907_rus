.class Lcom/motorola/messaging/adapter/MessageListAdapter$1;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/adapter/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/adapter/MessageListAdapter;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;->this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    # getter for: Lcom/motorola/messaging/adapter/MessageListAdapter;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/adapter/MessageListAdapter;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "MessageListAdapter"

    const-string v2, "mListPosRunnable.run()"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;->this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;->this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 78
    .local v0, "newCount":I
    # getter for: Lcom/motorola/messaging/adapter/MessageListAdapter;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/adapter/MessageListAdapter;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "MessageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurCursorCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;->this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;

    # getter for: Lcom/motorola/messaging/adapter/MessageListAdapter;->mCurCursorCount:I
    invoke-static {v3}, Lcom/motorola/messaging/adapter/MessageListAdapter;->access$100(Lcom/motorola/messaging/adapter/MessageListAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "MessageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;->this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;

    # getter for: Lcom/motorola/messaging/adapter/MessageListAdapter;->mCurCursorCount:I
    invoke-static {v1}, Lcom/motorola/messaging/adapter/MessageListAdapter;->access$100(Lcom/motorola/messaging/adapter/MessageListAdapter;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;->this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;

    # getter for: Lcom/motorola/messaging/adapter/MessageListAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/motorola/messaging/adapter/MessageListAdapter;->access$200(Lcom/motorola/messaging/adapter/MessageListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;->this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 88
    iget-object v1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;->this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;

    # getter for: Lcom/motorola/messaging/adapter/MessageListAdapter;->mCommunicationHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/messaging/adapter/MessageListAdapter;->access$300(Lcom/motorola/messaging/adapter/MessageListAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;->this$0:Lcom/motorola/messaging/adapter/MessageListAdapter;

    # setter for: Lcom/motorola/messaging/adapter/MessageListAdapter;->mCurCursorCount:I
    invoke-static {v1, v0}, Lcom/motorola/messaging/adapter/MessageListAdapter;->access$102(Lcom/motorola/messaging/adapter/MessageListAdapter;I)I

    .line 93
    .end local v0    # "newCount":I
    :cond_3
    return-void
.end method
