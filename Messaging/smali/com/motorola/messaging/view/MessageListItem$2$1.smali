.class Lcom/motorola/messaging/view/MessageListItem$2$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/MessageListItem$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/view/MessageListItem$2;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MessageListItem$2;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$2$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 475
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$2$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$2;

    iget-object v0, v0, Lcom/motorola/messaging/view/MessageListItem$2;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$2$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$2;

    iget-object v1, v1, Lcom/motorola/messaging/view/MessageListItem$2;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem$2$1;->this$1:Lcom/motorola/messaging/view/MessageListItem$2;

    iget-object v2, v2, Lcom/motorola/messaging/view/MessageListItem$2;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getMmsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    return-void
.end method
