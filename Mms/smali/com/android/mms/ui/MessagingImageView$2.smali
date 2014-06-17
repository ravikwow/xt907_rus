.class Lcom/android/mms/ui/MessagingImageView$2;
.super Ljava/lang/Object;
.source "MessagingImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingImageView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingImageView;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/mms/ui/MessagingImageView$2;->this$0:Lcom/android/mms/ui/MessagingImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MessagingImageView$2;->this$0:Lcom/android/mms/ui/MessagingImageView;

    # getter for: Lcom/android/mms/ui/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingImageView;->access$100(Lcom/android/mms/ui/MessagingImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingImageView$2;->this$0:Lcom/android/mms/ui/MessagingImageView;

    # getter for: Lcom/android/mms/ui/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingImageView;->access$100(Lcom/android/mms/ui/MessagingImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/MessagingImageView$2;->this$0:Lcom/android/mms/ui/MessagingImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingImageView$2;->this$0:Lcom/android/mms/ui/MessagingImageView;

    # getter for: Lcom/android/mms/ui/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingImageView;->access$100(Lcom/android/mms/ui/MessagingImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    :cond_0
    return-void
.end method
