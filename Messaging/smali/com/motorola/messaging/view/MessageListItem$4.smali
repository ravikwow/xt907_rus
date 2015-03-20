.class Lcom/motorola/messaging/view/MessageListItem$4;
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
    .line 623
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$4;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$4;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$4;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    # getter for: Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessageListItem;->access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->bindAvatar(Lcom/motorola/messaging/composer/MessageItem;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/MessageListItem;->access$1800(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    .line 626
    return-void
.end method
