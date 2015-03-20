.class Lcom/motorola/messaging/view/MessagingImageView$2;
.super Ljava/lang/Object;
.source "MessagingImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/MessagingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/MessagingImageView;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MessagingImageView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/motorola/messaging/view/MessagingImageView$2;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView$2;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    # getter for: Lcom/motorola/messaging/view/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessagingImageView;->access$100(Lcom/motorola/messaging/view/MessagingImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView$2;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    # getter for: Lcom/motorola/messaging/view/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessagingImageView;->access$100(Lcom/motorola/messaging/view/MessagingImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView$2;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessagingImageView$2;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    # getter for: Lcom/motorola/messaging/view/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/messaging/view/MessagingImageView;->access$100(Lcom/motorola/messaging/view/MessagingImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    :cond_0
    return-void
.end method
