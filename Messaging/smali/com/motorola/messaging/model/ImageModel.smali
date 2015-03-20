.class public final Lcom/motorola/messaging/model/ImageModel;
.super Lcom/motorola/messaging/model/MediaModel;
.source "ImageModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/model/ImageModel$1;,
        Lcom/motorola/messaging/model/ImageModel$ModelData;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/ImageModel;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V

    .line 70
    sget-boolean v0, Lcom/motorola/messaging/model/ImageModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "ImageModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageModel, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    sget-boolean v0, Lcom/motorola/messaging/model/ImageModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "ImageModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageModel, src= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/drm/DrmWrapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "wrapper"    # Lcom/motorola/messaging/drm/DrmWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/drm/DrmWrapper;)V

    .line 107
    sget-boolean v0, Lcom/motorola/messaging/model/ImageModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "ImageModel"

    const-string v1, "ImageModel - DRM Protected"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/os/Parcel;)V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/model/ImageModel;->setDim(II)V

    .line 129
    return-void
.end method

.method public static getDataFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/motorola/messaging/model/ImageModel$ModelData;
    .locals 11
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-boolean v1, Lcom/motorola/messaging/model/ImageModel;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "ImageModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataFromUri, uri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    new-instance v0, Lcom/motorola/messaging/model/ImageModel;

    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->NONE:Lcom/motorola/messaging/model/Model$CreationMode;

    move-object v1, p1

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/model/ImageModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    .local v0, "model":Lcom/motorola/messaging/model/ImageModel;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/motorola/messaging/model/ImageModel;->initializeFromUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    new-instance v4, Lcom/motorola/messaging/model/ImageModel$ModelData;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/motorola/messaging/model/ImageModel;->mWidth:I

    iget v7, v0, Lcom/motorola/messaging/model/ImageModel;->mHeight:I

    invoke-virtual {v0}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v8

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/motorola/messaging/model/ImageModel$ModelData;-><init>(Ljava/lang/String;IIILcom/motorola/messaging/model/ImageModel$1;)V

    return-object v4

    .line 163
    :catch_0
    move-exception v10

    .line 164
    .local v10, "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    const-string v1, "ImageModel"

    const-string v2, "Failed to initialize from URI"

    invoke-static {v1, v2, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v1}, Lcom/motorola/messaging/util/MmsException;-><init>()V

    throw v1
.end method

.method public static isSupportedType(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;)Z
    .locals 4
    .param p0, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 312
    sget-boolean v2, Lcom/motorola/messaging/model/ImageModel;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 313
    const-string v2, "ImageModel"

    const-string v3, "isSupportedType"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    invoke-static {p0}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 318
    .local v0, "cr":Lcom/motorola/messaging/model/ContentRestriction;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 217
    sget-boolean v1, Lcom/motorola/messaging/model/ImageModel;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "ImageModel"

    const-string v2, "checkContentRestriction"

    invoke-static {v1, v3, v3, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 222
    .local v0, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    if-eq v1, v2, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkNonTextMediaSize(I)V

    .line 226
    iget v1, p0, Lcom/motorola/messaging/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/motorola/messaging/model/ImageModel;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/model/ContentRestriction;->checkImageResolution(II)V

    .line 228
    :cond_1
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/drm/DrmException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/motorola/messaging/model/BitmapCache;->getInstance()Lcom/motorola/messaging/model/BitmapCache;

    move-result-object v0

    .line 239
    .local v0, "cache":Lcom/motorola/messaging/model/BitmapCache;
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDisplayWidth()I

    move-result v4

    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDisplayHeight()I

    move-result v5

    sget-object v6, Lcom/motorola/messaging/model/BitmapCache$TYPE;->IMAGE:Lcom/motorola/messaging/model/BitmapCache$TYPE;

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/messaging/model/BitmapCache;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;IILcom/motorola/messaging/model/BitmapCache$TYPE;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected getPathFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 207
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 258
    iget-object v1, p0, Lcom/motorola/messaging/model/ImageModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 259
    invoke-static {}, Lcom/motorola/messaging/model/BitmapCache;->getInstance()Lcom/motorola/messaging/model/BitmapCache;

    move-result-object v0

    .line 262
    .local v0, "cache":Lcom/motorola/messaging/model/BitmapCache;
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->mustConsumeDrmRights()Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/model/BitmapCache$TYPE;->IMAGE_THUMB:Lcom/motorola/messaging/model/BitmapCache$TYPE;

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/messaging/model/BitmapCache;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/motorola/messaging/model/BitmapCache$TYPE;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/ImageModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 269
    .end local v0    # "cache":Lcom/motorola/messaging/model/BitmapCache;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/model/ImageModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    return-object v1

    .line 266
    .restart local v0    # "cache":Lcom/motorola/messaging/model/BitmapCache;
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/BitmapCache;->getImageDrmProtectedIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/ImageModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x3

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 1
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 213
    return-void
.end method

.method protected initializeFromUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/motorola/messaging/model/MediaModel;->initializeFromUri(Landroid/net/Uri;)V

    .line 179
    invoke-static {}, Lcom/motorola/messaging/model/BitmapCache;->getInstance()Lcom/motorola/messaging/model/BitmapCache;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v3}, Lcom/motorola/messaging/model/BitmapCache;->getImageDimensions(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    move-result-object v0

    .line 181
    .local v0, "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    iget v1, v0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    iget v2, v0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    invoke-virtual {p0, v1, v2}, Lcom/motorola/messaging/model/ImageModel;->setDim(II)V

    .line 182
    return-void
.end method

.method public isSaveable()Z
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x1

    .line 297
    .local v0, "isSaveable":Z
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual {v1}, Lcom/motorola/messaging/drm/DrmWrapper;->isCombinedDeliveryContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 301
    :cond_0
    return v0
.end method

.method public preFetchThumbnail()V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/messaging/model/ImageModel;->getThumbnail()Landroid/graphics/Bitmap;

    .line 249
    return-void
.end method

.method protected setDefaultRegion()V
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultMediaRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mRegion:Lcom/motorola/messaging/model/RegionModel;

    .line 173
    return-void
.end method

.method setDim(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 185
    sget-boolean v0, Lcom/motorola/messaging/model/ImageModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "ImageModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDim, width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    iput p1, p0, Lcom/motorola/messaging/model/ImageModel;->mWidth:I

    .line 192
    iput p2, p0, Lcom/motorola/messaging/model/ImageModel;->mHeight:I

    .line 193
    return-void
.end method

.method protected validatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/provider/TempFileProvider;->getScrapPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_0
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/MediaModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    iget v0, p0, Lcom/motorola/messaging/model/ImageModel;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/motorola/messaging/model/ImageModel;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return-void
.end method
