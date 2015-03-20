.class Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmsViewContextMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 737
    # getter for: Lcom/motorola/messaging/view/MessageListItem;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/view/MessageListItem;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 738
    const-string v2, "MessageListItem"

    const-string v3, "onMenuItemClick() - MsgListMenuClickListener - START"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 761
    :goto_0
    return v0

    .line 743
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    # getter for: Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v3}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->access$1900(Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v3

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->sendMessageToActivity(ILjava/lang/Object;)V
    invoke-static {v0, v2, v3}, Lcom/motorola/messaging/view/MessageListItem;->access$600(Lcom/motorola/messaging/view/MessageListItem;ILjava/lang/Object;)V

    :goto_1
    move v0, v1

    .line 761
    goto :goto_0

    .line 748
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    iget-object v2, v2, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v3, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    # getter for: Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v3}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->access$1900(Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v3

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->sendMessageToActivity(ILjava/lang/Object;)V
    invoke-static {v2, v0, v3}, Lcom/motorola/messaging/view/MessageListItem;->access$600(Lcom/motorola/messaging/view/MessageListItem;ILjava/lang/Object;)V

    goto :goto_1

    .line 751
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    # getter for: Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v2}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->access$1900(Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v2

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->sendMessageToActivity(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/view/MessageListItem;->access$600(Lcom/motorola/messaging/view/MessageListItem;ILjava/lang/Object;)V

    goto :goto_1

    .line 754
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    # getter for: Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v3}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->access$1900(Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v3

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->sendMessageToActivity(ILjava/lang/Object;)V
    invoke-static {v0, v2, v3}, Lcom/motorola/messaging/view/MessageListItem;->access$600(Lcom/motorola/messaging/view/MessageListItem;ILjava/lang/Object;)V

    goto :goto_1

    .line 757
    :pswitch_4
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    iget-object v1, v1, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;->this$1:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    # getter for: Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v3}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->access$1900(Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v3

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->sendMessageToActivity(ILjava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/motorola/messaging/view/MessageListItem;->access$600(Lcom/motorola/messaging/view/MessageListItem;ILjava/lang/Object;)V

    goto :goto_0

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
