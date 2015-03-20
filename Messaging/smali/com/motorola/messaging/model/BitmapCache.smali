.class public Lcom/motorola/messaging/model/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/model/BitmapCache$1;,
        Lcom/motorola/messaging/model/BitmapCache$Dimensions;,
        Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;,
        Lcom/motorola/messaging/model/BitmapCache$TYPE;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z

.field static mBitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field static mImageDimensionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/messaging/model/BitmapCache$Dimensions;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/motorola/messaging/model/BitmapCache;


# instance fields
.field private mAudioBitmap:Landroid/graphics/Bitmap;

.field private mAudioDrmProtected:Landroid/graphics/Bitmap;

.field private mDrmOverlay:Landroid/graphics/Bitmap;

.field private mFLAudioBitmap:Landroid/graphics/Bitmap;

.field private mImageDrmProtected:Landroid/graphics/Bitmap;

.field private mMissingImage:Landroid/graphics/Bitmap;

.field private mMissingVideo:Landroid/graphics/Bitmap;

.field private mVideoDrmProtected:Landroid/graphics/Bitmap;

.field private mVideoOverlay:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/messaging/model/BitmapCache;->LOCAL_LOG:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/model/BitmapCache;->mBitmapMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    return-void
.end method

.method private adjustBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/motorola/messaging/model/BitmapCache$TYPE;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "missingBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "type"    # Lcom/motorola/messaging/model/BitmapCache$TYPE;
    .param p7, "overlay"    # Landroid/graphics/Bitmap;
    .param p8, "isDrmProtected"    # Z

    .prologue
    .line 506
    if-nez p2, :cond_1

    .line 507
    move-object/from16 p2, p3

    .line 557
    :cond_0
    :goto_0
    return-object p2

    .line 510
    :cond_1
    sget-object v8, Lcom/motorola/messaging/model/BitmapCache$TYPE;->IMAGE:Lcom/motorola/messaging/model/BitmapCache$TYPE;

    move-object/from16 v0, p6

    if-eq v0, v8, :cond_0

    .line 514
    sget-object v8, Lcom/motorola/messaging/model/BitmapCache$TYPE;->AUDIO_THUMB:Lcom/motorola/messaging/model/BitmapCache$TYPE;

    move-object/from16 v0, p6

    if-ne v0, v8, :cond_5

    .line 515
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 520
    .local v2, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    :goto_1
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 521
    .local v6, "thumbBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 524
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v8, v8, p4

    div-int/lit8 v7, v8, 0x2

    .line 525
    .local v7, "widthMargin":I
    if-lez v7, :cond_6

    .line 526
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v8, v8, p5

    div-int/lit8 v4, v8, 0x2

    .line 527
    .local v4, "heightMargin":I
    if-lez v4, :cond_7

    .line 529
    :goto_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-direct {v5, v7, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 531
    .local v5, "originRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v5, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 535
    if-eqz p7, :cond_2

    .line 536
    const/4 v8, 0x0

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 542
    :cond_2
    if-eqz p8, :cond_4

    .line 543
    iget-object v8, p0, Lcom/motorola/messaging/model/BitmapCache;->mDrmOverlay:Landroid/graphics/Bitmap;

    if-nez v8, :cond_3

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020073

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/messaging/model/BitmapCache;->mDrmOverlay:Landroid/graphics/Bitmap;

    .line 548
    :cond_3
    iget-object v8, p0, Lcom/motorola/messaging/model/BitmapCache;->mDrmOverlay:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/motorola/messaging/model/BitmapCache;->mDrmOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    iget-object v13, p0, Lcom/motorola/messaging/model/BitmapCache;->mDrmOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 553
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 554
    move-object/from16 p2, v6

    goto/16 :goto_0

    .line 517
    .end local v2    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "heightMargin":I
    .end local v5    # "originRect":Landroid/graphics/Rect;
    .end local v6    # "thumbBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "widthMargin":I
    :cond_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .restart local v2    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    goto/16 :goto_1

    .line 525
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v6    # "thumbBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "widthMargin":I
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 527
    .restart local v4    # "heightMargin":I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method private adjustBitmapOrientation(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 562
    sget-boolean v1, Lcom/motorola/messaging/model/BitmapCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 563
    const-string v1, "BitmapCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusting image orientation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/motorola/messaging/model/BitmapCache;->getImageOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 567
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 582
    :pswitch_0
    sget-boolean v1, Lcom/motorola/messaging/model/BitmapCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 583
    const-string v1, "BitmapCache"

    const-string v2, "No rotate needed"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p2

    .line 571
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    const/high16 v1, 0x43340000

    invoke-direct {p0, p2, v1}, Lcom/motorola/messaging/model/BitmapCache;->createRotatedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 574
    :pswitch_2
    const/high16 v1, 0x43870000

    invoke-direct {p0, p2, v1}, Lcom/motorola/messaging/model/BitmapCache;->createRotatedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 577
    :pswitch_3
    const/high16 v1, 0x42b40000

    invoke-direct {p0, p2, v1}, Lcom/motorola/messaging/model/BitmapCache;->createRotatedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private createImageBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;IILcom/motorola/messaging/model/BitmapCache$TYPE;Z)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "type"    # Lcom/motorola/messaging/model/BitmapCache$TYPE;
    .param p7, "isDrmProtected"    # Z

    .prologue
    .line 256
    const/4 v11, 0x0

    .line 258
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 261
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 262
    new-instance v8, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;

    invoke-direct {v8}, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;-><init>()V

    .line 263
    .local v8, "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    sget-object v4, Lcom/motorola/messaging/model/BitmapCache$TYPE;->IMAGE:Lcom/motorola/messaging/model/BitmapCache$TYPE;

    move-object/from16 v0, p6

    if-ne v0, v4, :cond_4

    .line 264
    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;->applyStrictLimits:Z

    .line 269
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;->optimizeSpeed:Z

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 270
    invoke-static/range {v3 .. v8}, Lcom/motorola/messaging/model/BitmapCache;->getResampledBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;IILcom/motorola/messaging/model/BitmapCache$SamplingOptions;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 276
    if-eqz v3, :cond_0

    .line 278
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 286
    .end local v8    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    :cond_0
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/model/BitmapCache;->mMissingImage:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02006d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/motorola/messaging/model/BitmapCache;->mMissingImage:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    .line 294
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/messaging/model/BitmapCache;->mMissingImage:Landroid/graphics/Bitmap;

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v17, p7

    invoke-direct/range {v9 .. v17}, Lcom/motorola/messaging/model/BitmapCache;->adjustBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/motorola/messaging/model/BitmapCache$TYPE;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 296
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsAdjustImageOrientation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 297
    sget-boolean v4, Lcom/motorola/messaging/model/BitmapCache;->LOCAL_LOG:Z

    if-eqz v4, :cond_2

    .line 298
    const-string v4, "BitmapCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjusting image orientation for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lcom/motorola/messaging/model/BitmapCache;->adjustBitmapOrientation(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 303
    :cond_3
    return-object v11

    .line 267
    .restart local v8    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    :cond_4
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, v8, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;->applyStrictLimits:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 271
    .end local v8    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    :catch_0
    move-exception v18

    .line 272
    .local v18, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v4, "BitmapCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException when creating bitmap for image. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    if-eqz v3, :cond_0

    .line 278
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 279
    :catch_1
    move-exception v18

    .line 280
    .local v18, "e":Ljava/io/IOException;
    const-string v4, "BitmapCache"

    const-string v5, "Could not close file."

    :goto_3
    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    .end local v18    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v18

    .line 274
    .local v18, "e":Ljava/lang/OutOfMemoryError;
    :try_start_6
    const-string v4, "BitmapCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutOfmemoryError when creating bitmap for image. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 276
    if-eqz v3, :cond_0

    .line 278
    :try_start_7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 279
    :catch_3
    move-exception v18

    .line 280
    .local v18, "e":Ljava/io/IOException;
    const-string v4, "BitmapCache"

    const-string v5, "Could not close file."

    goto :goto_3

    .line 276
    .end local v18    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_5

    .line 278
    :try_start_8
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 276
    :cond_5
    :goto_4
    throw v4

    .line 290
    :catch_4
    move-exception v18

    .line 291
    .local v18, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "BitmapCache"

    const-string v5, "OutOfmemoryError when creating bitmap"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 279
    .end local v18    # "e":Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v18

    .line 280
    .local v18, "e":Ljava/io/IOException;
    const-string v5, "BitmapCache"

    const-string v6, "Could not close file."

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 279
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v8    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    :catch_6
    move-exception v18

    .line 280
    .restart local v18    # "e":Ljava/io/IOException;
    const-string v4, "BitmapCache"

    const-string v5, "Could not close file."

    goto :goto_3
.end method

.method private createRotatedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "degrees"    # F

    .prologue
    const/4 v1, 0x0

    .line 620
    sget-boolean v0, Lcom/motorola/messaging/model/BitmapCache;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 621
    const-string v0, "BitmapCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotating image in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " degrees"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 624
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 625
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 628
    .local v7, "newBitmap":Landroid/graphics/Bitmap;
    if-eq p1, v7, :cond_1

    .line 629
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 632
    :cond_1
    return-object v7
.end method

.method private createVideoBitmap(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isDrmProtected"    # Z

    .prologue
    .line 636
    const/4 v2, 0x0

    .line 638
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v10}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 640
    .local v10, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v10, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 641
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 646
    :try_start_1
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 653
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/motorola/messaging/model/BitmapCache;->mMissingVideo:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/BitmapCache;->mMissingVideo:Landroid/graphics/Bitmap;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/BitmapCache;->mVideoOverlay:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 660
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020083

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/BitmapCache;->mVideoOverlay:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 667
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/motorola/messaging/model/BitmapCache;->mMissingVideo:Landroid/graphics/Bitmap;

    sget-object v6, Lcom/motorola/messaging/model/BitmapCache$TYPE;->VIDEO_THUMB:Lcom/motorola/messaging/model/BitmapCache$TYPE;

    iget-object v7, p0, Lcom/motorola/messaging/model/BitmapCache;->mVideoOverlay:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/motorola/messaging/model/BitmapCache;->adjustBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/motorola/messaging/model/BitmapCache$TYPE;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 670
    return-object v2

    .line 645
    :catchall_0
    move-exception v0

    .line 646
    :try_start_3
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 645
    :goto_2
    throw v0

    .line 663
    :catch_0
    move-exception v9

    .line 664
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    const-string v0, "BitmapCache"

    const-string v1, "OutOfmemoryError when creating bitmap"

    invoke-static {v0, v1, v9}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 642
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 646
    :try_start_4
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 647
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private static decodeImageDimensions(Landroid/os/ParcelFileDescriptor;)Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    .locals 4
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 463
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 464
    const-string v2, "BitmapCache"

    const-string v3, "decodeImageDimensions"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    new-instance v0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    invoke-direct {v0}, Lcom/motorola/messaging/model/BitmapCache$Dimensions;-><init>()V

    .line 468
    .local v0, "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 470
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 471
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 473
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    .line 474
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    .line 476
    return-object v0
.end method

.method private static dump()V
    .locals 8

    .prologue
    .line 708
    sget-boolean v5, Lcom/motorola/messaging/model/BitmapCache;->LOCAL_LOG:Z

    if-eqz v5, :cond_2

    .line 709
    const-string v5, "BitmapCache"

    const-string v6, "Dumping maps."

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    sget-object v5, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 713
    .local v3, "name":Ljava/lang/String;
    sget-object v5, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    .line 714
    .local v1, "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    const-string v5, "BitmapCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 716
    .end local v1    # "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/motorola/messaging/model/BitmapCache;->mBitmapMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 717
    .restart local v3    # "name":Ljava/lang/String;
    sget-object v5, Lcom/motorola/messaging/model/BitmapCache;->mBitmapMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 718
    .local v4, "softRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-nez v4, :cond_1

    .line 719
    const-string v5, "BitmapCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " softRef=NULL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 721
    :cond_1
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 722
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v5, "BitmapCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bitmap= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 727
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "softRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_2
    return-void
.end method

.method private static formatMapKey(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAudioBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mAudioBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mAudioBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mAudioBitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "BitmapCache"

    const-string v2, "OutOfmemoryError when creating audio bitmap"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFLAudioBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/model/BitmapCache;->mFLAudioBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 185
    .local v2, "audioBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Lcom/motorola/messaging/model/BitmapCache$TYPE;->AUDIO_THUMB:Lcom/motorola/messaging/model/BitmapCache$TYPE;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/motorola/messaging/model/BitmapCache;->adjustBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/motorola/messaging/model/BitmapCache$TYPE;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/BitmapCache;->mFLAudioBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "audioBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/model/BitmapCache;->mFLAudioBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 188
    :catch_0
    move-exception v9

    .line 189
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    const-string v0, "BitmapCache"

    const-string v1, "OutOfmemoryError when creating forward lock audio bitmap"

    invoke-static {v0, v1, v9}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getImageDimensions(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;)Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    .locals 5
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 487
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 488
    const-string v2, "BitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImageDimensions(pfd), uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/motorola/messaging/model/BitmapCache;->dump()V

    .line 492
    :cond_0
    invoke-static {p2, p1}, Lcom/motorola/messaging/model/BitmapCache;->formatMapKey(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    .line 496
    .local v0, "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    if-nez v0, :cond_1

    .line 497
    invoke-static {p0}, Lcom/motorola/messaging/model/BitmapCache;->decodeImageDimensions(Landroid/os/ParcelFileDescriptor;)Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    move-result-object v0

    .line 498
    sget-object v2, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_1
    return-object v0
.end method

.method private getImageOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 592
    const/4 v2, 0x0

    .line 595
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 596
    if-eqz v2, :cond_4

    .line 597
    sget-boolean v3, Lcom/motorola/messaging/model/BitmapCache;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 598
    const-string v3, "BitmapCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieve image orientation from uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_0
    new-instance v1, Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    .line 601
    .local v1, "exifInterface":Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 607
    if-eqz v2, :cond_1

    .line 609
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 615
    .end local v1    # "exifInterface":Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;
    :cond_1
    :goto_0
    return v3

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 607
    if-eqz v2, :cond_2

    .line 609
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 615
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 609
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 607
    :cond_3
    :goto_2
    throw v3

    .line 610
    :catch_1
    move-exception v0

    .line 611
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "BitmapCache"

    const-string v5, "Could not close file."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 610
    :catch_2
    move-exception v0

    .line 611
    const-string v3, "BitmapCache"

    const-string v4, "Could not close file."

    :goto_3
    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 610
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "exifInterface":Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;
    :catch_3
    move-exception v0

    .line 611
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "BitmapCache"

    const-string v5, "Could not close file."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "exifInterface":Lcom/motorola/messaging/frameworkadapter/motorola/MotoExifInterface;
    :cond_4
    if-eqz v2, :cond_2

    .line 609
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 610
    :catch_4
    move-exception v0

    .line 611
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "BitmapCache"

    const-string v4, "Could not close file."

    goto :goto_3
.end method

.method public static getInstance()Lcom/motorola/messaging/model/BitmapCache;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/motorola/messaging/model/BitmapCache;->mInstance:Lcom/motorola/messaging/model/BitmapCache;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/motorola/messaging/model/BitmapCache;

    invoke-direct {v0}, Lcom/motorola/messaging/model/BitmapCache;-><init>()V

    sput-object v0, Lcom/motorola/messaging/model/BitmapCache;->mInstance:Lcom/motorola/messaging/model/BitmapCache;

    .line 85
    :cond_0
    sget-object v0, Lcom/motorola/messaging/model/BitmapCache;->mInstance:Lcom/motorola/messaging/model/BitmapCache;

    return-object v0
.end method

.method private getMapKey(Ljava/lang/String;Landroid/net/Uri;Lcom/motorola/messaging/model/BitmapCache$TYPE;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Lcom/motorola/messaging/model/BitmapCache$TYPE;

    .prologue
    .line 674
    sget-object v0, Lcom/motorola/messaging/model/BitmapCache$1;->$SwitchMap$com$motorola$messaging$model$BitmapCache$TYPE:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 682
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VIDEO_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/motorola/messaging/model/BitmapCache;->formatMapKey(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    :goto_0
    return-object v0

    .line 678
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMAGE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/motorola/messaging/model/BitmapCache;->formatMapKey(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 680
    :pswitch_2
    invoke-static {p1, p2}, Lcom/motorola/messaging/model/BitmapCache;->formatMapKey(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getResampledBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;IILcom/motorola/messaging/model/BitmapCache$SamplingOptions;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "widthLimit"    # I
    .param p4, "heightLimit"    # I
    .param p5, "sampleOptions"    # Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;

    .prologue
    .line 320
    sget-boolean v16, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v16, :cond_0

    .line 321
    const-string v16, "BitmapCache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getResampledBitmap, name="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uri="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", widthLimit="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", heightLimit="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/model/BitmapCache;->getImageDimensions(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;)Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    move-result-object v4

    .line 332
    .local v4, "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    iget v0, v4, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    move/from16 v16, v0

    if-lez v16, :cond_1

    iget v0, v4, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    move/from16 v16, v0

    if-gtz v16, :cond_3

    .line 333
    :cond_1
    const/4 v3, 0x0

    .line 399
    :cond_2
    :goto_0
    return-object v3

    .line 337
    :cond_3
    iget v0, v4, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v5, v16, v18

    .line 338
    .local v5, "heightScale":D
    iget v0, v4, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v14, v16, v18

    .line 339
    .local v14, "widthScale":D
    cmpl-double v16, v5, v14

    if-lez v16, :cond_6

    move-wide v10, v5

    .line 342
    .local v10, "sampleSize":D
    :goto_1
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;->applyStrictLimits:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    .line 343
    sget-boolean v16, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v16, :cond_4

    .line 344
    const-string v16, "BitmapCache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Relaxing limits old sampleSize= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_4
    const/4 v9, 0x0

    .line 349
    .local v9, "relaxationCount":I
    :goto_2
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ge v9, v0, :cond_7

    const-wide/high16 v16, 0x3ff0000000000000L

    cmpl-double v16, v10, v16

    if-lez v16, :cond_7

    iget v0, v4, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v16, v10

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-ltz v16, :cond_5

    iget v0, v4, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v16, v10

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_7

    .line 352
    :cond_5
    const-wide/high16 v16, 0x3ff0000000000000L

    sub-double v10, v10, v16

    .line 353
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v9    # "relaxationCount":I
    .end local v10    # "sampleSize":D
    :cond_6
    move-wide v10, v14

    .line 339
    goto :goto_1

    .line 355
    .restart local v9    # "relaxationCount":I
    .restart local v10    # "sampleSize":D
    :cond_7
    sget-boolean v16, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v16, :cond_8

    .line 356
    const-string v16, "BitmapCache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Limits relaxed new sampleSize= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v9    # "relaxationCount":I
    :cond_8
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 362
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;->optimizeSpeed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 363
    const-wide/high16 v16, 0x4000000000000000L

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v20

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 368
    :goto_3
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 371
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    if-gt v0, v1, :cond_9

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 374
    :cond_9
    iget v0, v4, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    move/from16 v16, v0

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v17, v0

    div-int v13, v16, v17

    .line 375
    .local v13, "scaledWidth":I
    if-nez v13, :cond_a

    .line 376
    const/4 v13, 0x1

    .line 378
    :cond_a
    iget v0, v4, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    move/from16 v16, v0

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v17, v0

    div-int v12, v16, v17

    .line 379
    .local v12, "scaledHeight":I
    if-nez v12, :cond_b

    .line 380
    const/4 v12, 0x1

    .line 383
    :cond_b
    sget-boolean v16, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v16, :cond_c

    .line 384
    const-string v16, "BitmapCache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getResampledBitmap: retry scaling using Bitmap.createScaledBitmap: w= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", h= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", samplesize= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", scaledW= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", scaledH= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_c
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v3, v13, v12, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 392
    .local v7, "newBitmap":Landroid/graphics/Bitmap;
    if-eq v7, v3, :cond_d

    .line 393
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 396
    :cond_d
    move-object v3, v7

    goto/16 :goto_0

    .line 365
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "scaledHeight":I
    .end local v13    # "scaledWidth":I
    :cond_e
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_3
.end method

.method public static getResizedImageDimensions()Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    .locals 2

    .prologue
    .line 742
    sget-object v0, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    const-string v1, "temp@resized_uri"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    return-object v0
.end method

.method public static setDimensions(Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I

    .prologue
    .line 731
    invoke-static {p0, p1}, Lcom/motorola/messaging/model/BitmapCache;->formatMapKey(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    new-instance v2, Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    invoke-direct {v2, p2, p3}, Lcom/motorola/messaging/model/BitmapCache$Dimensions;-><init>(II)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    return-void
.end method

.method public static setResizedImageDimensions(II)V
    .locals 3
    .param p0, "newWidth"    # I
    .param p1, "newHeight"    # I

    .prologue
    .line 737
    sget-object v0, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    const-string v1, "temp@resized_uri"

    new-instance v2, Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    invoke-direct {v2, p0, p1}, Lcom/motorola/messaging/model/BitmapCache$Dimensions;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;IILcom/motorola/messaging/model/BitmapCache$TYPE;Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "type"    # Lcom/motorola/messaging/model/BitmapCache$TYPE;
    .param p7, "isDrmProtected"    # Z

    .prologue
    .line 222
    const/4 v9, 0x0

    .line 224
    .local v9, "softRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p6

    invoke-direct {p0, p2, p3, v0}, Lcom/motorola/messaging/model/BitmapCache;->getMapKey(Ljava/lang/String;Landroid/net/Uri;Lcom/motorola/messaging/model/BitmapCache$TYPE;)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "key":Ljava/lang/String;
    sget-object v2, Lcom/motorola/messaging/model/BitmapCache;->mBitmapMap:Ljava/util/Map;

    monitor-enter v2

    .line 227
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/model/BitmapCache;->mBitmapMap:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/ref/SoftReference;

    move-object v9, v0

    .line 228
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    const/4 v7, 0x0

    .line 232
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 233
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v7, Landroid/graphics/Bitmap;

    .line 236
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v7, :cond_1

    .line 237
    sget-object v1, Lcom/motorola/messaging/model/BitmapCache$1;->$SwitchMap$com$motorola$messaging$model$BitmapCache$TYPE:[I

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 246
    :goto_0
    sget-object v2, Lcom/motorola/messaging/model/BitmapCache;->mBitmapMap:Ljava/util/Map;

    monitor-enter v2

    .line 247
    :try_start_1
    sget-object v1, Lcom/motorola/messaging/model/BitmapCache;->mBitmapMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    :cond_1
    return-object v7

    .line 228
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p7

    .line 239
    invoke-direct/range {v1 .. v6}, Lcom/motorola/messaging/model/BitmapCache;->createVideoBitmap(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 240
    goto :goto_0

    .line 243
    :pswitch_1
    invoke-direct/range {p0 .. p7}, Lcom/motorola/messaging/model/BitmapCache;->createImageBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;IILcom/motorola/messaging/model/BitmapCache$TYPE;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    .line 248
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/motorola/messaging/model/BitmapCache$TYPE;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "type"    # Lcom/motorola/messaging/model/BitmapCache$TYPE;
    .param p5, "isDrmProtected"    # Z

    .prologue
    .line 101
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDisplayWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd6666666666666L

    mul-double/2addr v0, v2

    double-to-int v4, v0

    .line 103
    .local v4, "defaultWidth":I
    move v5, v4

    .local v5, "defaultHeight":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move v7, p5

    .line 104
    invoke-virtual/range {v0 .. v7}, Lcom/motorola/messaging/model/BitmapCache;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;IILcom/motorola/messaging/model/BitmapCache$TYPE;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAudioBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDrmProtected"    # Z

    .prologue
    .line 201
    if-eqz p2, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/BitmapCache;->getFLAudioBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/BitmapCache;->getAudioBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getAudioDrmProtectedIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mAudioDrmProtected:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020036

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mAudioDrmProtected:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mAudioDrmProtected:Landroid/graphics/Bitmap;

    return-object v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "BitmapCache"

    const-string v2, "OutOfmemoryError when creating audio drm bitmap"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getImageDimensions(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 429
    sget-boolean v4, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v4, :cond_0

    .line 430
    const-string v4, "BitmapCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImageDimensions(context), uri= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/motorola/messaging/model/BitmapCache;->dump()V

    .line 434
    :cond_0
    invoke-static {p3, p2}, Lcom/motorola/messaging/model/BitmapCache;->formatMapKey(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    .line 438
    .local v0, "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    if-nez v0, :cond_1

    .line 439
    new-instance v0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    .end local v0    # "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    invoke-direct {v0}, Lcom/motorola/messaging/model/BitmapCache$Dimensions;-><init>()V

    .line 440
    .restart local v0    # "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    const/4 v3, 0x0

    .line 442
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, p2, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 443
    invoke-static {v3}, Lcom/motorola/messaging/model/BitmapCache;->decodeImageDimensions(Landroid/os/ParcelFileDescriptor;)Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    move-result-object v0

    .line 444
    sget-object v4, Lcom/motorola/messaging/model/BitmapCache;->mImageDimensionsMap:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    if-eqz v3, :cond_1

    .line 450
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 458
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_0
    return-object v0

    .line 445
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "BitmapCache"

    const-string v5, "Could not decode image bounds"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    if-eqz v3, :cond_1

    .line 450
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 451
    :catch_1
    move-exception v1

    .line 452
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BitmapCache"

    const-string v5, "Could not close file."

    :goto_1
    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 450
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 448
    :cond_2
    :goto_2
    throw v4

    .line 451
    :catch_2
    move-exception v1

    .line 452
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "BitmapCache"

    const-string v6, "Could not close file."

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 451
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 452
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "BitmapCache"

    const-string v5, "Could not close file."

    goto :goto_1
.end method

.method public getImageDrmProtectedIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mImageDrmProtected:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020037

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mImageDrmProtected:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mImageDrmProtected:Landroid/graphics/Bitmap;

    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "BitmapCache"

    const-string v2, "OutOfmemoryError when creating image drm bitmap"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getVideoDrmProtectedIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mVideoDrmProtected:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020038

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mVideoDrmProtected:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/model/BitmapCache;->mVideoDrmProtected:Landroid/graphics/Bitmap;

    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "BitmapCache"

    const-string v2, "OutOfmemoryError when creating video drm bitmap"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
