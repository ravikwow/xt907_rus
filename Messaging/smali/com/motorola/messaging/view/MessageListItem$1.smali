.class Lcom/motorola/messaging/view/MessageListItem$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/MessageListItem;->bindDeferredMMSItems(Lcom/motorola/messaging/composer/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/MessageListItem;

.field final synthetic val$msgItem:Lcom/motorola/messaging/composer/MessageItem;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$1;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iput-object p2, p0, Lcom/motorola/messaging/view/MessageListItem$1;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 414
    new-instance v0, Lcom/motorola/messaging/view/MessageListItem$1$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MessageListItem$1$1;-><init>(Lcom/motorola/messaging/view/MessageListItem$1;)V

    .line 453
    .local v0, "downloadMMS":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$1;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    const/4 v2, 0x3

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->sendMessageToActivity(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/view/MessageListItem;->access$600(Lcom/motorola/messaging/view/MessageListItem;ILjava/lang/Object;)V

    .line 454
    return-void
.end method
