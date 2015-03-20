.class Lcom/motorola/messaging/view/ProgressAttachmentButton$1;
.super Ljava/lang/Object;
.source "ProgressAttachmentButton.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/ProgressAttachmentButton;->init(Landroid/os/Handler;IILandroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/ProgressAttachmentButton;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/ProgressAttachmentButton;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton$1;->this$0:Lcom/motorola/messaging/view/ProgressAttachmentButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    if-ne p2, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton$1;->this$0:Lcom/motorola/messaging/view/ProgressAttachmentButton;

    # invokes: Lcom/motorola/messaging/view/ProgressAttachmentButton;->removeAttachment()V
    invoke-static {v0}, Lcom/motorola/messaging/view/ProgressAttachmentButton;->access$100(Lcom/motorola/messaging/view/ProgressAttachmentButton;)V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
