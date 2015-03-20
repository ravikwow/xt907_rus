.class Lcom/motorola/messaging/attachment/AttachmentManager$1;
.super Ljava/lang/Object;
.source "AttachmentManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/attachment/AttachmentManager;->createMediaView(IILandroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/attachment/AttachmentManager;

.field final synthetic val$removeMessageId:I


# direct methods
.method constructor <init>(Lcom/motorola/messaging/attachment/AttachmentManager;I)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/motorola/messaging/attachment/AttachmentManager$1;->this$0:Lcom/motorola/messaging/attachment/AttachmentManager;

    iput p2, p0, Lcom/motorola/messaging/attachment/AttachmentManager$1;->val$removeMessageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/motorola/messaging/attachment/AttachmentManager$1;->this$0:Lcom/motorola/messaging/attachment/AttachmentManager;

    # getter for: Lcom/motorola/messaging/attachment/AttachmentManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/messaging/attachment/AttachmentManager;->access$000(Lcom/motorola/messaging/attachment/AttachmentManager;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/attachment/AttachmentManager$1;->val$removeMessageId:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method
