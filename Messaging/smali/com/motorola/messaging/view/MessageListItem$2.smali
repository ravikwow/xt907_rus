.class Lcom/motorola/messaging/view/MessageListItem$2;
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
    .line 461
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$2;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    iput-object p2, p0, Lcom/motorola/messaging/view/MessageListItem$2;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 463
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$2;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 464
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 465
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 466
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$2;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/MessageItem;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 471
    :goto_0
    const v1, 0x7f0b007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    const v1, 0x7f0b00a4

    new-instance v2, Lcom/motorola/messaging/view/MessageListItem$2$1;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/view/MessageListItem$2$1;-><init>(Lcom/motorola/messaging/view/MessageListItem$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 479
    return-void

    .line 469
    :cond_0
    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
