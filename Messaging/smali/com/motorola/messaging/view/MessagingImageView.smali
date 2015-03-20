.class public Lcom/motorola/messaging/view/MessagingImageView;
.super Landroid/widget/ImageView;
.source "MessagingImageView.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mGifDecoder:Lcom/motorola/messaging/util/GifDecoder;

.field final mHandler:Landroid/os/Handler;

.field private mIsPlayingGif:Z

.field private mTmpBitmap:Landroid/graphics/Bitmap;

.field final mUpdateResults:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lcom/motorola/messaging/view/MessagingImageView;->DEBUG:Z

    .line 30
    sget-boolean v1, Lcom/motorola/messaging/view/MessagingImageView;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/view/MessagingImageView;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mHandler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mIsPlayingGif:Z

    .line 120
    new-instance v0, Lcom/motorola/messaging/view/MessagingImageView$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MessagingImageView$2;-><init>(Lcom/motorola/messaging/view/MessagingImageView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mUpdateResults:Ljava/lang/Runnable;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mHandler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mIsPlayingGif:Z

    .line 120
    new-instance v0, Lcom/motorola/messaging/view/MessagingImageView$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MessagingImageView$2;-><init>(Lcom/motorola/messaging/view/MessagingImageView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mUpdateResults:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mHandler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mIsPlayingGif:Z

    .line 120
    new-instance v0, Lcom/motorola/messaging/view/MessagingImageView$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MessagingImageView$2;-><init>(Lcom/motorola/messaging/view/MessagingImageView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mUpdateResults:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/view/MessagingImageView;)Lcom/motorola/messaging/util/GifDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessagingImageView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mGifDecoder:Lcom/motorola/messaging/util/GifDecoder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/view/MessagingImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessagingImageView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/messaging/view/MessagingImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessagingImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/motorola/messaging/view/MessagingImageView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/messaging/view/MessagingImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessagingImageView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mIsPlayingGif:Z

    return v0
.end method

.method private initGifDecoder(Landroid/net/Uri;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 132
    const/4 v1, 0x2

    .line 133
    .local v1, "status":I
    const/4 v2, 0x0

    .line 135
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Lcom/motorola/messaging/util/GifDecoder;

    invoke-direct {v3}, Lcom/motorola/messaging/util/GifDecoder;-><init>()V

    iput-object v3, p0, Lcom/motorola/messaging/view/MessagingImageView;->mGifDecoder:Lcom/motorola/messaging/util/GifDecoder;

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/motorola/messaging/view/MessagingImageView;->mGifDecoder:Lcom/motorola/messaging/util/GifDecoder;

    invoke-virtual {v3, v2}, Lcom/motorola/messaging/util/GifDecoder;->read(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 142
    if-eqz v2, :cond_0

    .line 144
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    if-eqz v2, :cond_0

    .line 144
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 145
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 144
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 142
    :cond_1
    :goto_2
    throw v3

    .line 145
    :catch_2
    move-exception v0

    .line 146
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private isGif(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "image/gif"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public startPlayingGif(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "alternativeImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lcom/motorola/messaging/view/MessagingImageView;->isGif(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to play a non GIF file!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/messaging/view/MessagingImageView;->mIsPlayingGif:Z

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "MessagingImageView"

    const-string v2, "Animation in progress. Stopping current animation to start new one."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/motorola/messaging/view/MessagingImageView;->stopPlayingGif()V

    .line 72
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessagingImageView;->initGifDecoder(Landroid/net/Uri;)I

    move-result v0

    .line 75
    .local v0, "status":I
    if-nez v0, :cond_2

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/messaging/view/MessagingImageView;->mIsPlayingGif:Z

    .line 77
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/motorola/messaging/view/MessagingImageView$1;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/view/MessagingImageView$1;-><init>(Lcom/motorola/messaging/view/MessagingImageView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_2
    sget-boolean v1, Lcom/motorola/messaging/view/MessagingImageView;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 101
    const-string v1, "MessagingImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode GIF with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Displaying image without animation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_3
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public stopPlayingGif()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mIsPlayingGif:Z

    .line 114
    iget-object v0, p0, Lcom/motorola/messaging/view/MessagingImageView;->mGifDecoder:Lcom/motorola/messaging/util/GifDecoder;

    invoke-virtual {v0}, Lcom/motorola/messaging/util/GifDecoder;->recycle()V

    .line 115
    return-void
.end method
