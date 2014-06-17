.class Lcom/android/mms/ui/MessagingImageView$1;
.super Ljava/lang/Object;
.source "MessagingImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingImageView;->startPlayingGif(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
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
    .line 78
    iput-object p1, p0, Lcom/android/mms/ui/MessagingImageView$1;->this$0:Lcom/android/mms/ui/MessagingImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v7, 0x32

    .line 80
    iget-object v9, p0, Lcom/android/mms/ui/MessagingImageView$1;->this$0:Lcom/android/mms/ui/MessagingImageView;

    # getter for: Lcom/android/mms/ui/MessagingImageView;->mGifDecoder:Lcom/android/mms/util/GifDecoder;
    invoke-static {v9}, Lcom/android/mms/ui/MessagingImageView;->access$000(Lcom/android/mms/ui/MessagingImageView;)Lcom/android/mms/util/GifDecoder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/util/GifDecoder;->getFrameCount()I

    move-result v1

    .line 81
    .local v1, "frameCount":I
    iget-object v9, p0, Lcom/android/mms/ui/MessagingImageView$1;->this$0:Lcom/android/mms/ui/MessagingImageView;

    # getter for: Lcom/android/mms/ui/MessagingImageView;->mGifDecoder:Lcom/android/mms/util/GifDecoder;
    invoke-static {v9}, Lcom/android/mms/ui/MessagingImageView;->access$000(Lcom/android/mms/ui/MessagingImageView;)Lcom/android/mms/util/GifDecoder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/util/GifDecoder;->getLoopCount()I

    move-result v3

    .line 82
    .local v3, "loopCount":I
    const/4 v4, 0x0

    .line 84
    .local v4, "repetitionCounter":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 85
    iget-object v9, p0, Lcom/android/mms/ui/MessagingImageView$1;->this$0:Lcom/android/mms/ui/MessagingImageView;

    iget-object v10, p0, Lcom/android/mms/ui/MessagingImageView$1;->this$0:Lcom/android/mms/ui/MessagingImageView;

    # getter for: Lcom/android/mms/ui/MessagingImageView;->mGifDecoder:Lcom/android/mms/util/GifDecoder;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingImageView;->access$000(Lcom/android/mms/ui/MessagingImageView;)Lcom/android/mms/util/GifDecoder;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/mms/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v10

    # setter for: Lcom/android/mms/ui/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9, v10}, Lcom/android/mms/ui/MessagingImageView;->access$102(Lcom/android/mms/ui/MessagingImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 86
    iget-object v9, p0, Lcom/android/mms/ui/MessagingImageView$1;->this$0:Lcom/android/mms/ui/MessagingImageView;

    iget-object v9, v9, Lcom/android/mms/ui/MessagingImageView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/mms/ui/MessagingImageView$1;->this$0:Lcom/android/mms/ui/MessagingImageView;

    iget-object v10, v10, Lcom/android/mms/ui/MessagingImageView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :try_start_0
    iget-object v9, p0, Lcom/android/mms/ui/MessagingImageView$1;->this$0:Lcom/android/mms/ui/MessagingImageView;

    # getter for: Lcom/android/mms/ui/MessagingImageView;->mGifDecoder:Lcom/android/mms/util/GifDecoder;
    invoke-static {v9}, Lcom/android/mms/ui/MessagingImageView;->access$000(Lcom/android/mms/ui/MessagingImageView;)Lcom/android/mms/util/GifDecoder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/mms/util/GifDecoder;->getDelay(I)I

    move-result v9

    int-to-long v5, v9

    .line 89
    .local v5, "sleepTime":J
    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .end local v5    # "sleepTime":J
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v5    # "sleepTime":J
    :cond_1
    move-wide v5, v7

    .line 89
    goto :goto_1

    .line 90
    .end local v5    # "sleepTime":J
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 94
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-eqz v3, :cond_3

    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 97
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/MessagingImageView$1;->this$0:Lcom/android/mms/ui/MessagingImageView;

    # getter for: Lcom/android/mms/ui/MessagingImageView;->mIsPlayingGif:Z
    invoke-static {v9}, Lcom/android/mms/ui/MessagingImageView;->access$200(Lcom/android/mms/ui/MessagingImageView;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-le v4, v3, :cond_0

    .line 98
    :cond_4
    return-void
.end method
