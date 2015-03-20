.class public Lcom/motorola/blur/util/ui/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/motorola/blur/util/ui/BitmapUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/ui/BitmapUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static final createScaledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxSize"    # I

    .prologue
    .line 138
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 146
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 141
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 142
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 143
    .local v0, "height":I
    mul-int/lit8 v4, p1, 0x64

    if-le v2, v0, :cond_2

    move v3, v2

    :goto_1
    div-int v1, v4, v3

    .line 144
    .local v1, "scale":I
    mul-int v3, v2, v1

    div-int/lit8 v2, v3, 0x64

    .line 145
    mul-int v3, v0, v1

    div-int/lit8 v0, v3, 0x64

    .line 146
    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .end local v1    # "scale":I
    :cond_2
    move v3, v0

    .line 143
    goto :goto_1
.end method

.method public static decodeBitmapWithSizeRestriction(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "f"    # Ljava/io/File;
    .param p1, "maxEdge"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 95
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x2

    .line 97
    .local v4, "sampleSize":I
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v2, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v6, v4

    if-ge p1, v6, :cond_0

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v6, v4

    if-ge p1, v6, :cond_0

    .line 103
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 109
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2    # "in":Ljava/io/InputStream;
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 110
    .restart local v2    # "in":Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    div-int/lit8 v6, v4, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 114
    const/4 v6, 0x0

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "sampleSize":I
    :goto_1
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/motorola/blur/util/ui/BitmapUtil;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Unable to decode bitmap "

    aput-object v8, v7, v9

    invoke-static {v6, v1, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    move-object v0, v5

    .line 126
    goto :goto_1
.end method

.method public static fetchBitmapWithAdjustedDimensions(Landroid/content/ContentResolver;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "targetWidthOrHeight"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 49
    const/4 v4, 0x0

    .line 52
    .local v4, "s":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 53
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x2

    .line 55
    .local v5, "sampleSize":I
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    const/4 v7, 0x0

    invoke-static {v4, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v7, v5

    if-ge p1, v7, :cond_0

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v7, v5

    if-ge p1, v7, :cond_0

    .line 60
    mul-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 64
    const/4 v4, 0x0

    .line 67
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    div-int/lit8 v7, v5, 0x2

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 69
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    const-string v7, "r"

    invoke-virtual {p0, p2, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 71
    .local v2, "in":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v4, :cond_1

    .line 85
    :try_start_1
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "in":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "sampleSize":I
    :cond_1
    :goto_1
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lcom/motorola/blur/util/ui/BitmapUtil;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Unable to decode bitmap"

    aput-object v10, v8, v9

    invoke-static {v7, v1, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    if-eqz v4, :cond_2

    .line 85
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    move-object v0, v6

    .line 87
    goto :goto_1

    .line 83
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_3

    .line 85
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 87
    :cond_3
    :goto_3
    throw v6

    .line 86
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v2    # "in":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "sampleSize":I
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "in":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "sampleSize":I
    .restart local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_3
.end method
