.class Lcom/motorola/messaging/view/MessagingImageView$1;
.super Ljava/lang/Object;
.source "MessagingImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/MessagingImageView;->startPlayingGif(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
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
    .line 77
    iput-object p1, p0, Lcom/motorola/messaging/view/MessagingImageView$1;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v7, 0x32

    .line 79
    iget-object v9, p0, Lcom/motorola/messaging/view/MessagingImageView$1;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    # getter for: Lcom/motorola/messaging/view/MessagingImageView;->mGifDecoder:Lcom/motorola/messaging/util/GifDecoder;
    invoke-static {v9}, Lcom/motorola/messaging/view/MessagingImageView;->access$000(Lcom/motorola/messaging/view/MessagingImageView;)Lcom/motorola/messaging/util/GifDecoder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/messaging/util/GifDecoder;->getFrameCount()I

    move-result v1

    .line 80
    .local v1, "frameCount":I
    iget-object v9, p0, Lcom/motorola/messaging/view/MessagingImageView$1;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    # getter for: Lcom/motorola/messaging/view/MessagingImageView;->mGifDecoder:Lcom/motorola/messaging/util/GifDecoder;
    invoke-static {v9}, Lcom/motorola/messaging/view/MessagingImageView;->access$000(Lcom/motorola/messaging/view/MessagingImageView;)Lcom/motorola/messaging/util/GifDecoder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/messaging/util/GifDecoder;->getLoopCount()I

    move-result v3

    .line 81
    .local v3, "loopCount":I
    const/4 v4, 0x0

    .line 83
    .local v4, "repetitionCounter":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 84
    iget-object v9, p0, Lcom/motorola/messaging/view/MessagingImageView$1;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    iget-object v10, p0, Lcom/motorola/messaging/view/MessagingImageView$1;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    # getter for: Lcom/motorola/messaging/view/MessagingImageView;->mGifDecoder:Lcom/motorola/messaging/util/GifDecoder;
    invoke-static {v10}, Lcom/motorola/messaging/view/MessagingImageView;->access$000(Lcom/motorola/messaging/view/MessagingImageView;)Lcom/motorola/messaging/util/GifDecoder;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/motorola/messaging/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v10

    # setter for: Lcom/motorola/messaging/view/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9, v10}, Lcom/motorola/messaging/view/MessagingImageView;->access$102(Lcom/motorola/messaging/view/MessagingImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 85
    iget-object v9, p0, Lcom/motorola/messaging/view/MessagingImageView$1;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    iget-object v9, v9, Lcom/motorola/messaging/view/MessagingImageView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/motorola/messaging/view/MessagingImageView$1;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    iget-object v10, v10, Lcom/motorola/messaging/view/MessagingImageView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :try_start_0
    iget-object v9, p0, Lcom/motorola/messaging/view/MessagingImageView$1;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    # getter for: Lcom/motorola/messaging/view/MessagingImageView;->mGifDecoder:Lcom/motorola/messaging/util/GifDecoder;
    invoke-static {v9}, Lcom/motorola/messaging/view/MessagingImageView;->access$000(Lcom/motorola/messaging/view/MessagingImageView;)Lcom/motorola/messaging/util/GifDecoder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/motorola/messaging/util/GifDecoder;->getDelay(I)I

    move-result v9

    int-to-long v5, v9

    .line 88
    .local v5, "sleepTime":J
    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .end local v5    # "sleepTime":J
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v5    # "sleepTime":J
    :cond_1
    move-wide v5, v7

    .line 88
    goto :goto_1

    .line 89
    .end local v5    # "sleepTime":J
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 93
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-eqz v3, :cond_3

    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 96
    :cond_3
    iget-object v9, p0, Lcom/motorola/messaging/view/MessagingImageView$1;->this$0:Lcom/motorola/messaging/view/MessagingImageView;

    # getter for: Lcom/motorola/messaging/view/MessagingImageView;->mIsPlayingGif:Z
    invoke-static {v9}, Lcom/motorola/messaging/view/MessagingImageView;->access$200(Lcom/motorola/messaging/view/MessagingImageView;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-le v4, v3, :cond_0

    .line 97
    :cond_4
    return-void
.end method
