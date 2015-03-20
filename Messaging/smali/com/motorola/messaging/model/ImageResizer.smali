.class public Lcom/motorola/messaging/model/ImageResizer;
.super Ljava/lang/Object;
.source "ImageResizer.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static final mExifDoubleAttrTags:[Ljava/lang/String;

.field private static final mExifIntAttrTags:[Ljava/lang/String;

.field private static final mExifStringAttrTags:[Ljava/lang/String;


# instance fields
.field private mCarrierMaxSize:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mExifAttr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExifNumItems:I

.field private mIsRecode:Z

.field private mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

.field private mOrigSize:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    sput-boolean v1, Lcom/motorola/messaging/model/ImageResizer;->DEBUG:Z

    .line 44
    sget-boolean v0, Lcom/motorola/messaging/model/ImageResizer;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "GPSDateStamp"

    aput-object v3, v0, v2

    const-string v3, "GPSLatitude"

    aput-object v3, v0, v1

    const-string v3, "GPSLatitudeRef"

    aput-object v3, v0, v5

    const-string v3, "GPSLongitude"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "GPSLongitudeRef"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "GPSProcessingMethod"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "GPSTimeStamp"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "DateTime"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "Make"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "Model"

    aput-object v4, v0, v3

    sput-object v0, Lcom/motorola/messaging/model/ImageResizer;->mExifStringAttrTags:[Ljava/lang/String;

    .line 76
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "Flash"

    aput-object v3, v0, v2

    const-string v3, "Orientation"

    aput-object v3, v0, v1

    const-string v3, "WhiteBalance"

    aput-object v3, v0, v5

    sput-object v0, Lcom/motorola/messaging/model/ImageResizer;->mExifIntAttrTags:[Ljava/lang/String;

    .line 83
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "FocalLength"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/model/ImageResizer;->mExifDoubleAttrTags:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-boolean v0, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "ImageResizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_2
    iput-object p1, p0, Lcom/motorola/messaging/model/ImageResizer;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/motorola/messaging/model/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/ImageResizer;->mContentResolver:Landroid/content/ContentResolver;

    .line 108
    iput-object p2, p0, Lcom/motorola/messaging/model/ImageResizer;->mUri:Landroid/net/Uri;

    .line 109
    return-void
.end method

.method private extractExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 272
    if-eqz p2, :cond_0

    .line 273
    iget v0, p0, Lcom/motorola/messaging/model/ImageResizer;->mExifNumItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/model/ImageResizer;->mExifNumItems:I

    .line 274
    iget-object v0, p0, Lcom/motorola/messaging/model/ImageResizer;->mExifAttr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    return-void
.end method

.method private extractExifInfo()V
    .locals 12

    .prologue
    .line 285
    iget-object v10, p0, Lcom/motorola/messaging/model/ImageResizer;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/motorola/messaging/model/ImageResizer;->mUri:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/motorola/messaging/util/MessageUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "filePath":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 289
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, "exifInfo":Landroid/media/ExifInterface;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/motorola/messaging/model/ImageResizer;->mExifAttr:Ljava/util/Map;

    .line 292
    sget-object v0, Lcom/motorola/messaging/model/ImageResizer;->mExifStringAttrTags:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v8, v0, v5

    .line 293
    .local v8, "strAttrTag":Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "value":Ljava/lang/String;
    invoke-direct {p0, v8, v9}, Lcom/motorola/messaging/model/ImageResizer;->extractExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 297
    .end local v8    # "strAttrTag":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/motorola/messaging/model/ImageResizer;->mExifIntAttrTags:[Ljava/lang/String;

    array-length v7, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v6, v0, v5

    .line 298
    .local v6, "intAttrTag":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v3, v6, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v6, v10}, Lcom/motorola/messaging/model/ImageResizer;->extractExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 301
    .end local v6    # "intAttrTag":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/motorola/messaging/model/ImageResizer;->mExifDoubleAttrTags:[Ljava/lang/String;

    array-length v7, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_2

    aget-object v1, v0, v5

    .line 302
    .local v1, "doubleAttrTag":Ljava/lang/String;
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v1, v10, v11}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/motorola/messaging/model/ImageResizer;->extractExif(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 304
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "doubleAttrTag":Ljava/lang/String;
    .end local v3    # "exifInfo":Landroid/media/ExifInterface;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v2

    .line 305
    .local v2, "ex":Ljava/io/IOException;
    const-string v10, "ImageResizer"

    const-string v11, "cannot read exif attributes"

    invoke-static {v10, v11, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method private insertExif(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "exif"    # Landroid/media/ExifInterface;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 279
    if-eqz p3, :cond_0

    .line 280
    invoke-virtual {p1, p2, p3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method private insertExifAttr(Ljava/lang/String;)V
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mExifAttr:Ljava/util/Map;

    if-eqz v9, :cond_3

    .line 315
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, "exif":Landroid/media/ExifInterface;
    sget-object v0, Lcom/motorola/messaging/model/ImageResizer;->mExifStringAttrTags:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v7, v0, v4

    .line 318
    .local v7, "strAttrTag":Ljava/lang/String;
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mExifAttr:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 319
    .local v8, "value":Ljava/lang/String;
    invoke-direct {p0, v3, v7, v8}, Lcom/motorola/messaging/model/ImageResizer;->insertExif(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 322
    .end local v7    # "strAttrTag":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/motorola/messaging/model/ImageResizer;->mExifIntAttrTags:[Ljava/lang/String;

    array-length v6, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v5, v0, v4

    .line 323
    .local v5, "intAttrTag":Ljava/lang/String;
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mExifAttr:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v3, v5, v9}, Lcom/motorola/messaging/model/ImageResizer;->insertExif(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 326
    .end local v5    # "intAttrTag":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/motorola/messaging/model/ImageResizer;->mExifDoubleAttrTags:[Ljava/lang/String;

    array-length v6, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 327
    .local v1, "doubleAttrTag":Ljava/lang/String;
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mExifAttr:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v3, v1, v9}, Lcom/motorola/messaging/model/ImageResizer;->insertExif(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 330
    .end local v1    # "doubleAttrTag":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 331
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mExifAttr:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    :goto_3
    return-void

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "ex":Ljava/io/IOException;
    const-string v9, "ImageResizer"

    const-string v10, "cannot insert exif information"

    invoke-static {v9, v10, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private legacyResizeImage(IIJ)[B
    .locals 22
    .param p1, "widthLimit"    # I
    .param p2, "heightLimit"    # I
    .param p3, "byteLimit"    # J

    .prologue
    .line 339
    sget-boolean v3, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 340
    const-string v3, "ImageResizer"

    const-string v4, "Resize using legacy algorithm"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    const/4 v2, 0x0

    .line 346
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    const/16 v19, 0x0

    .line 347
    .local v19, "result":[B
    const/4 v8, 0x1

    .line 349
    .local v8, "attempts":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/model/ImageResizer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/model/ImageResizer;->mUri:Landroid/net/Uri;

    const-string v20, "r"

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 350
    const/4 v14, 0x0

    .line 351
    .local v14, "newWidth":I
    const/4 v13, 0x0

    .line 352
    .local v13, "newHeight":I
    new-instance v7, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;

    invoke-direct {v7}, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;-><init>()V

    .line 353
    .local v7, "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;->applyStrictLimits:Z

    .line 354
    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;->optimizeSpeed:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    const/16 v17, 0x55

    .line 357
    .local v17, "quality":I
    move/from16 v5, p1

    .line 358
    .local v5, "targetWidth":I
    move/from16 v6, p2

    .line 360
    .local v6, "targetHeight":I
    :cond_1
    const/4 v15, 0x0

    .line 361
    .local v15, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x1

    .line 363
    .local v11, "isCompressed":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getSrc()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/model/ImageResizer;->mUri:Landroid/net/Uri;

    invoke-static/range {v2 .. v7}, Lcom/motorola/messaging/model/BitmapCache;->getResampledBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;IILcom/motorola/messaging/model/BitmapCache$SamplingOptions;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 365
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-nez v9, :cond_3

    .line 366
    const/16 v19, 0x0

    .line 433
    .end local v19    # "result":[B
    if-eqz v2, :cond_2

    .line 435
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 431
    .end local v5    # "targetWidth":I
    .end local v6    # "targetHeight":I
    .end local v7    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "isCompressed":Z
    .end local v13    # "newHeight":I
    .end local v14    # "newWidth":I
    .end local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "quality":I
    :cond_2
    :goto_0
    return-object v19

    .line 369
    .restart local v5    # "targetWidth":I
    .restart local v6    # "targetHeight":I
    .restart local v7    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "isCompressed":Z
    .restart local v13    # "newHeight":I
    .restart local v14    # "newWidth":I
    .restart local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "quality":I
    .restart local v19    # "result":[B
    :cond_3
    :try_start_3
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 370
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 377
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    .end local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .local v16, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v9, v3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v11

    .line 379
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    .line 381
    .local v12, "jpgFileSize":I
    int-to-long v3, v12

    cmp-long v3, v3, p3

    if-lez v3, :cond_c

    .line 382
    move/from16 v0, v17

    int-to-long v3, v0

    mul-long v3, v3, p3

    int-to-long v0, v12

    move-wide/from16 v20, v0

    div-long v3, v3, v20

    long-to-int v0, v3

    move/from16 v18, v0

    .line 383
    .local v18, "reducedQuality":I
    sget-boolean v3, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v3, :cond_4

    .line 384
    const-string v3, "ImageResizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "legacyResizeImage, reducedQuality="

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_4
    const/16 v3, 0x41

    move/from16 v0, v18

    if-lt v0, v3, :cond_c

    .line 388
    move/from16 v17, v18

    .line 390
    sget-boolean v3, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v3, :cond_5

    .line 391
    const-string v3, "ImageResizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "legacyResizeImage: compress(2) w/ quality= "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_5
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    .end local v16    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "os":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v17

    invoke-virtual {v9, v3, v0, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v11

    .line 398
    .end local v18    # "reducedQuality":I
    :goto_1
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 399
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, p3

    if-gtz v3, :cond_6

    const/4 v3, 0x1

    if-ne v11, v3, :cond_6

    .line 400
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v19

    .line 405
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "jpgFileSize":I
    :cond_6
    :goto_2
    :try_start_6
    sget-boolean v3, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v3, :cond_7

    .line 406
    const-string v4, "ImageResizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "attempt="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " size="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v15, :cond_a

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " quality="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_7
    int-to-double v3, v5

    const-wide v20, 0x3fe6666666666666L

    mul-double v3, v3, v20

    double-to-int v5, v3

    .line 412
    int-to-double v3, v6

    const-wide v20, 0x3fe6666666666666L

    mul-double v3, v3, v20

    double-to-int v6, v3

    .line 413
    add-int/lit8 v8, v8, 0x1

    .line 414
    const/4 v3, 0x6

    if-le v8, v3, :cond_8

    .line 415
    const-string v3, "ImageResizer"

    const-string v4, "squeeze is necessary"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    .line 418
    :cond_8
    if-eqz v19, :cond_1

    .line 420
    if-eqz v19, :cond_9

    .line 422
    invoke-static {v14, v13}, Lcom/motorola/messaging/model/BitmapCache;->setResizedImageDimensions(II)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 433
    :cond_9
    if-eqz v2, :cond_2

    .line 435
    :try_start_7
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 436
    :catch_0
    move-exception v10

    .line 437
    .local v10, "e":Ljava/io/IOException;
    const-string v3, "ImageResizer"

    const-string v4, "Could not close file."

    .end local v5    # "targetWidth":I
    .end local v6    # "targetHeight":I
    .end local v7    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    .end local v11    # "isCompressed":Z
    .end local v13    # "newHeight":I
    .end local v14    # "newWidth":I
    .end local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "quality":I
    .end local v19    # "result":[B
    :goto_4
    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "targetWidth":I
    .restart local v6    # "targetHeight":I
    .restart local v7    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    .restart local v11    # "isCompressed":Z
    .restart local v13    # "newHeight":I
    .restart local v14    # "newWidth":I
    .restart local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "quality":I
    .restart local v19    # "result":[B
    :catch_1
    move-exception v10

    .line 403
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :goto_5
    :try_start_8
    const-string v3, "ImageResizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Out of memory on rescale attempt, stack="

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 426
    .end local v5    # "targetWidth":I
    .end local v6    # "targetHeight":I
    .end local v7    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    .end local v10    # "e":Ljava/lang/OutOfMemoryError;
    .end local v11    # "isCompressed":Z
    .end local v13    # "newHeight":I
    .end local v14    # "newWidth":I
    .end local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "quality":I
    :catch_2
    move-exception v10

    .line 427
    .local v10, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    const-string v3, "ImageResizer"

    const-string v4, "File not found."

    invoke-static {v3, v4, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 428
    const/16 v19, 0x0

    .line 433
    .end local v19    # "result":[B
    if-eqz v2, :cond_2

    .line 435
    :try_start_a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 436
    :catch_3
    move-exception v10

    .line 437
    .local v10, "e":Ljava/io/IOException;
    const-string v3, "ImageResizer"

    const-string v4, "Could not close file."

    goto :goto_4

    .line 406
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "targetWidth":I
    .restart local v6    # "targetHeight":I
    .restart local v7    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    .restart local v11    # "isCompressed":Z
    .restart local v13    # "newHeight":I
    .restart local v14    # "newWidth":I
    .restart local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "quality":I
    .restart local v19    # "result":[B
    :cond_a
    :try_start_b
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v3

    goto/16 :goto_3

    .line 429
    .end local v5    # "targetWidth":I
    .end local v6    # "targetHeight":I
    .end local v7    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    .end local v11    # "isCompressed":Z
    .end local v13    # "newHeight":I
    .end local v14    # "newWidth":I
    .end local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "quality":I
    :catch_4
    move-exception v10

    .line 430
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :try_start_c
    const-string v3, "ImageResizer"

    const-string v4, "OutOfMemory."

    invoke-static {v3, v4, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 431
    const/16 v19, 0x0

    .line 433
    .end local v19    # "result":[B
    if-eqz v2, :cond_2

    .line 435
    :try_start_d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_0

    .line 436
    :catch_5
    move-exception v10

    .line 437
    .local v10, "e":Ljava/io/IOException;
    const-string v3, "ImageResizer"

    const-string v4, "Could not close file."

    goto :goto_4

    .line 433
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v19    # "result":[B
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_b

    .line 435
    :try_start_e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 433
    :cond_b
    :goto_6
    throw v3

    .line 436
    :catch_6
    move-exception v10

    .line 437
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v4, "ImageResizer"

    const-string v20, "Could not close file."

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 436
    .end local v10    # "e":Ljava/io/IOException;
    .end local v19    # "result":[B
    .restart local v5    # "targetWidth":I
    .restart local v6    # "targetHeight":I
    .restart local v7    # "sampleOptions":Lcom/motorola/messaging/model/BitmapCache$SamplingOptions;
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "isCompressed":Z
    .restart local v13    # "newHeight":I
    .restart local v14    # "newWidth":I
    .restart local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "quality":I
    :catch_7
    move-exception v10

    .line 437
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v3, "ImageResizer"

    const-string v4, "Could not close file."

    goto :goto_4

    .line 402
    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "result":[B
    :catch_8
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v15    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "jpgFileSize":I
    .restart local v16    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_c
    move-object/from16 v15, v16

    .end local v16    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1
.end method

.method private resizeImageFile(IIJ)[B
    .locals 15
    .param p1, "widthLimit"    # I
    .param p2, "heightLimit"    # I
    .param p3, "byteLimit"    # J

    .prologue
    .line 215
    sget-boolean v9, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v9, :cond_0

    .line 216
    const-string v9, "ImageResizer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeImageFile, widthLimit="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", heightLimit="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sizeLimit="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", original width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v11}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", original height="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v11}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", aspect ratio="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v11}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getWidth()I

    move-result v11

    int-to-double v11, v11

    iget-object v13, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v13}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getHeight()I

    move-result v13

    int-to-double v13, v13

    div-double/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v9, p3, v9

    if-gez v9, :cond_1

    .line 226
    const/4 v9, 0x0

    .line 268
    :goto_0
    return-object v9

    .line 230
    :cond_1
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v9}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v10}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_2

    move/from16 v0, p2

    move/from16 v1, p1

    if-gt v0, v1, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v9}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v10}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getWidth()I

    move-result v10

    if-le v9, v10, :cond_4

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_4

    .line 232
    :cond_3
    move/from16 v2, p2

    .line 233
    .local v2, "aux":I
    move/from16 p2, p1

    .line 234
    move/from16 p1, v2

    .line 235
    sget-boolean v9, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v9, :cond_4

    .line 236
    const-string v9, "ImageResizer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeImageFile (adjust portrait/landscape mode), widthLimit= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", heightLimit= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v2    # "aux":I
    :cond_4
    move/from16 v0, p1

    int-to-double v9, v0

    iget-object v11, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v11}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getWidth()I

    move-result v11

    int-to-double v11, v11

    div-double v5, v9, v11

    .line 244
    .local v5, "factorWidth":D
    move/from16 v0, p2

    int-to-double v9, v0

    iget-object v11, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v11}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getHeight()I

    move-result v11

    int-to-double v11, v11

    div-double v3, v9, v11

    .line 245
    .local v3, "factorHeight":D
    sget-boolean v9, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v9, :cond_5

    .line 246
    const-string v9, "ImageResizer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeImageFile, factorWidth= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", factorHeight= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_5
    const-wide/high16 v9, 0x3ff0000000000000L

    cmpl-double v9, v5, v9

    if-ltz v9, :cond_7

    const-wide/high16 v9, 0x3ff0000000000000L

    cmpl-double v9, v3, v9

    if-ltz v9, :cond_7

    .line 252
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v9}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getWidth()I

    move-result p1

    .line 253
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v9}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getHeight()I

    move-result p2

    .line 262
    :goto_1
    sget-boolean v9, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v9, :cond_6

    .line 263
    const-string v9, "ImageResizer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeImageFile (adjust resolution), widthLimit= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", heightLimit= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_6
    invoke-direct/range {p0 .. p4}, Lcom/motorola/messaging/model/ImageResizer;->legacyResizeImage(IIJ)[B

    move-result-object v9

    goto/16 :goto_0

    .line 256
    :cond_7
    cmpg-double v9, v5, v3

    if-gez v9, :cond_8

    move-wide v7, v5

    .line 258
    .local v7, "minFactor":D
    :goto_2
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v9}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getWidth()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v7

    double-to-int v0, v9

    move/from16 p1, v0

    .line 259
    iget-object v9, p0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v9}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getHeight()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v7

    double-to-int v0, v9

    move/from16 p2, v0

    goto :goto_1

    .end local v7    # "minFactor":D
    :cond_8
    move-wide v7, v3

    .line 256
    goto :goto_2
.end method


# virtual methods
.method public getResizedImageFile(ZIIJ)Ljava/io/File;
    .locals 19
    .param p1, "createAuxFile"    # Z
    .param p2, "widthLimit"    # I
    .param p3, "heightLimit"    # I
    .param p4, "byteLimit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 120
    sget-boolean v13, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v13, :cond_0

    .line 121
    const-string v13, "ImageResizer"

    const/4 v14, 0x1

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getResizedImageFile: byteLimit= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 124
    :cond_0
    const/4 v10, 0x0

    .line 125
    .local v10, "resizedImageFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 128
    .local v12, "tempFile":Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/model/ImageResizer;->mUri:Landroid/net/Uri;

    invoke-static {v13, v14}, Lcom/motorola/messaging/util/MessageUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "filePath":Ljava/lang/String;
    sget-boolean v13, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v13, :cond_1

    .line 130
    const-string v13, "ImageResizer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "image file path="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_1
    if-nez p1, :cond_2

    if-nez v8, :cond_3

    .line 135
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/model/ImageResizer;->mUri:Landroid/net/Uri;

    const-string v15, "/sdcard"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TemporaryImage_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/motorola/messaging/util/MessageUtils;->copyToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 136
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 137
    sget-boolean v13, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v13, :cond_3

    .line 138
    const-string v13, "ImageResizer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "new image file path="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_3
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/messaging/model/ImageResizer;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/motorola/messaging/model/ImageModel;->getDataFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/motorola/messaging/model/ImageModel$ModelData;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/model/ImageResizer;->extractExifInfo()V

    .line 150
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/messaging/model/ImageResizer;->mCarrierMaxSize:J

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mModelData:Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v13}, Lcom/motorola/messaging/model/ImageModel$ModelData;->getSize()I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mOrigSize:J

    .line 152
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mOrigSize:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/motorola/messaging/model/ImageResizer;->mCarrierMaxSize:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_4

    .line 154
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mIsRecode:Z

    .line 157
    :cond_4
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mCarrierMaxSize:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/motorola/messaging/model/ImageResizer;->mOrigSize:J

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 158
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mExifNumItems:I

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mCarrierMaxSize:J

    sub-long v13, v13, p4

    const-wide/16 v15, 0x1f4

    cmp-long v13, v13, v15

    if-gez v13, :cond_5

    .line 159
    const-wide/16 v13, 0x1f4

    sub-long p4, p4, v13

    .line 162
    :cond_5
    sget-boolean v13, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v13, :cond_6

    .line 163
    const-string v13, "ImageResizer"

    const/4 v14, 0x1

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getResizedImageFile, recode="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/messaging/model/ImageResizer;->mIsRecode:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", orig size="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/messaging/model/ImageResizer;->mOrigSize:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", carrier max size="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/messaging/model/ImageResizer;->mCarrierMaxSize:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", calculated max size="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 170
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/messaging/model/ImageResizer;->resizeImageFile(IIJ)[B

    move-result-object v5

    .line 172
    .local v5, "data":[B
    if-eqz v5, :cond_7

    array-length v13, v5

    int-to-long v13, v13

    cmp-long v13, v13, p4

    if-lez v13, :cond_b

    array-length v13, v5

    int-to-long v13, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/motorola/messaging/model/ImageResizer;->isRecoded(J)Z

    move-result v13

    if-nez v13, :cond_b

    .line 174
    :cond_7
    const-string v13, "ImageResizer"

    const-string v14, "getResizedImageFile: can not resize"

    invoke-static {v13, v14}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    const/4 v13, 0x0

    .line 206
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_8

    .line 207
    const-string v14, "ImageResizer"

    const-string v15, "Could not delete temp image file."

    invoke-static {v14, v15}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v5    # "data":[B
    .end local v8    # "filePath":Ljava/lang/String;
    :cond_8
    :goto_1
    return-object v13

    .line 140
    .restart local v8    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 141
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v13, "ImageResizer"

    const-string v14, "cannot create media copy, exception="

    invoke-static {v13, v14, v6}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 198
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v8    # "filePath":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 199
    .restart local v6    # "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v13, "ImageResizer"

    const-string v14, "Exception while manipulating temporary resized image"

    invoke-static {v13, v14, v6}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_9

    .line 201
    const-string v13, "ImageResizer"

    const-string v14, "Could not delete resized image file"

    invoke-static {v13, v14}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :cond_9
    const/4 v10, 0x0

    .line 206
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_a

    .line 207
    const-string v13, "ImageResizer"

    const-string v14, "Could not delete temp image file."

    invoke-static {v13, v14}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_a
    :goto_3
    move-object v13, v10

    .line 211
    goto :goto_1

    .line 178
    .restart local v5    # "data":[B
    .restart local v8    # "filePath":Ljava/lang/String;
    :cond_b
    :try_start_5
    sget-boolean v13, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v13, :cond_c

    .line 179
    const-string v13, "ImageResizer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getResizedImageFile: size= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ResizedImage_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "fileName":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-direct {v11, v13, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 187
    .end local v10    # "resizedImageFile":Ljava/io/File;
    .local v11, "resizedImageFile":Ljava/io/File;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/messaging/model/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 189
    .local v9, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v9, v5}, Ljava/io/OutputStream;->write([B)V

    .line 190
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 192
    sget-boolean v13, Lcom/motorola/messaging/model/ImageResizer;->LOCAL_LOG:Z

    if-eqz v13, :cond_d

    .line 193
    const-string v13, "ImageResizer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getResizedImageFile final size= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_d
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/motorola/messaging/model/ImageResizer;->insertExifAttr(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 206
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_e

    .line 207
    const-string v13, "ImageResizer"

    const-string v14, "Could not delete temp image file."

    invoke-static {v13, v14}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move-object v10, v11

    .line 209
    .end local v11    # "resizedImageFile":Ljava/io/File;
    .restart local v10    # "resizedImageFile":Ljava/io/File;
    goto/16 :goto_3

    .line 206
    .end local v5    # "data":[B
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v13

    :goto_4
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_f

    .line 207
    const-string v14, "ImageResizer"

    const-string v15, "Could not delete temp image file."

    invoke-static {v14, v15}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_f
    throw v13

    .end local v10    # "resizedImageFile":Ljava/io/File;
    .restart local v5    # "data":[B
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v11    # "resizedImageFile":Ljava/io/File;
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11    # "resizedImageFile":Ljava/io/File;
    .restart local v10    # "resizedImageFile":Ljava/io/File;
    goto :goto_4

    .line 198
    .end local v10    # "resizedImageFile":Ljava/io/File;
    .restart local v11    # "resizedImageFile":Ljava/io/File;
    :catch_2
    move-exception v6

    move-object v10, v11

    .end local v11    # "resizedImageFile":Ljava/io/File;
    .restart local v10    # "resizedImageFile":Ljava/io/File;
    goto/16 :goto_2
.end method

.method public isRecoded(J)Z
    .locals 4
    .param p1, "length"    # J

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/motorola/messaging/model/ImageResizer;->mIsRecode:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/motorola/messaging/model/ImageResizer;->mCarrierMaxSize:J

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
