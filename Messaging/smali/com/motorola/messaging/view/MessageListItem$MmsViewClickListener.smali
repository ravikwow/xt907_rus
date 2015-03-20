.class Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmsViewClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/motorola/messaging/composer/MessageItem;

.field final synthetic this$0:Lcom/motorola/messaging/view/MessageListItem;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/view/MessageListItem;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/view/MessageListItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p2, "x1"    # Lcom/motorola/messaging/view/MessageListItem$1;

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;-><init>(Lcom/motorola/messaging/view/MessageListItem;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    # invokes: Lcom/motorola/messaging/view/MessageListItem;->sendMessageToActivity(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/view/MessageListItem;->access$600(Lcom/motorola/messaging/view/MessageListItem;ILjava/lang/Object;)V

    .line 641
    return-void
.end method

.method public setMessageItem(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p1, "item"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    .line 637
    return-void
.end method
