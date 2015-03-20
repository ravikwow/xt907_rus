.class public final Lcom/motorola/messaging/model/VideoModel;
.super Lcom/motorola/messaging/model/MediaModel;
.source "VideoModel.java"


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
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/messaging/model/VideoModel;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V
    .locals 2
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
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V

    .line 46
    iput-object v0, p0, Lcom/motorola/messaging/model/VideoModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 69
    sget-boolean v0, Lcom/motorola/messaging/model/VideoModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "VideoModel"

    const-string v1, "VideoModel"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
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
    .line 85
    invoke-direct/range {p0 .. p5}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/model/VideoModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 87
    sget-boolean v0, Lcom/motorola/messaging/model/VideoModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "VideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoModel, uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
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
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/drm/DrmWrapper;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/model/VideoModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 105
    sget-boolean v0, Lcom/motorola/messaging/model/VideoModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "VideoModel"

    const-string v1, "AudioModel - DRM Protected"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/os/Parcel;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/model/VideoModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 126
    return-void
.end method

.method private extractVideoInfoFromMMR(Landroid/net/Uri;)Z
    .locals 10
    .param p1, "videoUri"    # Landroid/net/Uri;

    .prologue
    .line 223
    iget-object v7, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/motorola/messaging/util/MessageUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 226
    .local v3, "result":Z
    if-nez v2, :cond_0

    .line 228
    const/4 v7, 0x0

    .line 255
    :goto_0
    return v7

    .line 230
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v6, "tempFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 234
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 237
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v7, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 238
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/motorola/messaging/model/VideoModel;->setDim(II)V

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    :cond_1
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "tempDur":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 245
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_2
    const/4 v3, 0x1

    .line 252
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "tempDur":Ljava/lang/String;
    :goto_1
    move v7, v3

    .line 255
    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "VideoModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MediaMetadataRetriever failed to get Duration/Width/Height for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v7
.end method

.method private extractVideoInfoFromMediaDB(Landroid/net/Uri;)Z
    .locals 12
    .param p1, "videoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 181
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v0, v10

    const-string v8, "_size"

    aput-object v8, v0, v11

    const/4 v8, 0x2

    const-string v9, "resolution"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "duration"

    aput-object v9, v0, v8

    .line 188
    .local v0, "VIDEO_PROJECTION":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 189
    .local v6, "result":Z
    iget-object v8, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, p1, v0}, Landroid/provider/MediaStore$Video;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 190
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v8, v11, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 191
    const-string v8, "resolution"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 192
    .local v4, "resColumn":I
    const-string v8, "_size"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 193
    .local v7, "sizeColumn":I
    const-string v8, "duration"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 194
    .local v2, "durColumn":I
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "resolution":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 196
    const-string v8, "x"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 197
    .local v3, "ix":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 198
    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/motorola/messaging/model/VideoModel;->setDim(II)V

    .line 203
    .end local v3    # "ix":I
    :cond_0
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 204
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 207
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 208
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    .line 211
    :cond_2
    const/4 v6, 0x1

    .line 214
    .end local v2    # "durColumn":I
    .end local v4    # "resColumn":I
    .end local v5    # "resolution":Ljava/lang/String;
    .end local v7    # "sizeColumn":I
    :cond_3
    if-eqz v1, :cond_4

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 216
    const/4 v1, 0x0

    .line 219
    :cond_4
    return v6
.end method

.method private getVideoInfo()Z
    .locals 7

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 153
    .local v3, "videoUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "authority":Ljava/lang/String;
    sget-boolean v4, Lcom/motorola/messaging/model/VideoModel;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 157
    const-string v4, "VideoModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoInfo, uri = , uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scheme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", authority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    const/4 v1, 0x0

    .line 164
    .local v1, "result":Z
    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "media"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    invoke-direct {p0, v3}, Lcom/motorola/messaging/model/VideoModel;->extractVideoInfoFromMediaDB(Landroid/net/Uri;)Z

    move-result v1

    .line 176
    :goto_0
    return v1

    .line 168
    :cond_1
    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    :cond_2
    invoke-direct {p0, v3}, Lcom/motorola/messaging/model/VideoModel;->extractVideoInfoFromMMR(Landroid/net/Uri;)Z

    move-result v1

    goto :goto_0

    .line 173
    :cond_3
    const-string v4, "VideoModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkVideoSize(). Bad scheme of the URI: scheme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSupportedType(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;)Z
    .locals 4
    .param p0, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 372
    sget-boolean v2, Lcom/motorola/messaging/model/VideoModel;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 373
    const-string v2, "VideoModel"

    const-string v3, "isSupportedType"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    invoke-static {p0}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 378
    .local v0, "cr":Lcom/motorola/messaging/model/ContentRestriction;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/ContentRestriction;->checkVideoContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 342
    sget-boolean v1, Lcom/motorola/messaging/model/VideoModel;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 343
    const-string v1, "VideoModel"

    const-string v2, "checkContentRestriction"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 347
    .local v0, "cr":Lcom/motorola/messaging/model/ContentRestriction;
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkVideoContentType(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/motorola/messaging/model/VideoModel;->getVideoInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    const-string v2, "can not retrieve video data"

    invoke-direct {v1, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    if-eq v1, v2, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkNonTextMediaSize(I)V

    .line 355
    iget v1, p0, Lcom/motorola/messaging/model/VideoModel;->mWidth:I

    iget v2, p0, Lcom/motorola/messaging/model/VideoModel;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/model/ContentRestriction;->checkVideoResolution(II)V

    .line 357
    :cond_2
    return-void
.end method

.method protected getPathFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 148
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
    .line 307
    iget-object v1, p0, Lcom/motorola/messaging/model/VideoModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 308
    invoke-static {}, Lcom/motorola/messaging/model/BitmapCache;->getInstance()Lcom/motorola/messaging/model/BitmapCache;

    move-result-object v0

    .line 311
    .local v0, "cache":Lcom/motorola/messaging/model/BitmapCache;
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->mustConsumeDrmRights()Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/model/BitmapCache$TYPE;->VIDEO_THUMB:Lcom/motorola/messaging/model/BitmapCache$TYPE;

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/messaging/model/BitmapCache;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/motorola/messaging/model/BitmapCache$TYPE;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/VideoModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 318
    .end local v0    # "cache":Lcom/motorola/messaging/model/BitmapCache;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/model/VideoModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    return-object v1

    .line 315
    .restart local v0    # "cache":Lcom/motorola/messaging/model/BitmapCache;
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/BitmapCache;->getVideoDrmProtectedIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/VideoModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x4

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 271
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "evtType":Ljava/lang/String;
    sget-boolean v2, Lcom/motorola/messaging/model/VideoModel;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 273
    const-string v2, "VideoModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    .line 277
    .local v0, "action":Lcom/motorola/messaging/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->START:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    .line 288
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/MediaModel;->appendAction(Lcom/motorola/messaging/model/MediaModel$MediaAction;)V

    .line 289
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 290
    return-void

    .line 279
    :cond_2
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->STOP:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    goto :goto_0

    .line 281
    :cond_3
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->PAUSE:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    goto :goto_0

    .line 283
    :cond_4
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->SEEK:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    .line 285
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/model/MediaModel;->mSeekTo:I

    goto :goto_0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public isSaveable()Z
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x1

    .line 390
    .local v0, "isSaveable":Z
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isAP20Processor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual {v1}, Lcom/motorola/messaging/drm/DrmWrapper;->isForwardable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 398
    :cond_0
    return v0
.end method

.method public preFetchThumbnail()V
    .locals 0

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/motorola/messaging/model/VideoModel;->getThumbnail()Landroid/graphics/Bitmap;

    .line 298
    return-void
.end method

.method protected setDefaultRegion()V
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultMediaRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mRegion:Lcom/motorola/messaging/model/RegionModel;

    .line 144
    return-void
.end method

.method setDim(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 259
    sget-boolean v0, Lcom/motorola/messaging/model/VideoModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "VideoModel"

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

    .line 265
    :cond_0
    iput p1, p0, Lcom/motorola/messaging/model/VideoModel;->mWidth:I

    .line 266
    iput p2, p0, Lcom/motorola/messaging/model/VideoModel;->mHeight:I

    .line 267
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/MediaModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 135
    return-void
.end method
