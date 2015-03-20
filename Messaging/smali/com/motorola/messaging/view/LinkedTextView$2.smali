.class Lcom/motorola/messaging/view/LinkedTextView$2;
.super Ljava/lang/Object;
.source "LinkedTextView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/LinkedTextView;->addCopyItem(Landroid/view/ContextMenu;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/LinkedTextView;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/LinkedTextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/motorola/messaging/view/LinkedTextView$2;->this$0:Lcom/motorola/messaging/view/LinkedTextView;

    iput-object p2, p0, Lcom/motorola/messaging/view/LinkedTextView$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView$2;->this$0:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 307
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    iget-object v1, p0, Lcom/motorola/messaging/view/LinkedTextView$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const/4 v1, 0x1

    return v1
.end method
