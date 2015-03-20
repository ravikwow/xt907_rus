.class public final Lcom/motorola/messaging/model/AudioModel;
.super Lcom/motorola/messaging/model/MediaModel;
.source "AudioModel.java"


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mCachedDefaultThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/AudioModel;->LOCAL_LOG:Z

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

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V

    .line 42
    iput-object v0, p0, Lcom/motorola/messaging/model/AudioModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 61
    sget-boolean v0, Lcom/motorola/messaging/model/AudioModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "AudioModel"

    const-string v1, "AudioModel"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
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
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/model/AudioModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 78
    sget-boolean v0, Lcom/motorola/messaging/model/AudioModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "AudioModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioModel, src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
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
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/drm/DrmWrapper;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/model/AudioModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 95
    sget-boolean v0, Lcom/motorola/messaging/model/AudioModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "AudioModel"

    const-string v1, "AudioModel - DRM Protected"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/os/Parcel;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/model/AudioModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 116
    return-void
.end method

.method public static isSupportedType(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;)Z
    .locals 6
    .param p0, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v2, 0x1

    .line 212
    .local v2, "result":Z
    invoke-static {p0}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 214
    .local v0, "cr":Lcom/motorola/messaging/model/ContentRestriction;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    if-nez v2, :cond_0

    .line 220
    const-string v3, "AudioModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported audio type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    return v2

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 169
    sget-boolean v1, Lcom/motorola/messaging/model/AudioModel;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "AudioModel"

    const-string v2, "checkContentRestriction"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 174
    .local v0, "cr":Lcom/motorola/messaging/model/ContentRestriction;
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    if-eq v1, v2, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkNonTextMediaSize(I)V

    .line 179
    :cond_1
    return-void
.end method

.method protected getPathFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 142
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/motorola/messaging/model/AudioModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 193
    invoke-static {}, Lcom/motorola/messaging/model/BitmapCache;->getInstance()Lcom/motorola/messaging/model/BitmapCache;

    move-result-object v0

    .line 194
    .local v0, "cache":Lcom/motorola/messaging/model/BitmapCache;
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->mustConsumeDrmRights()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/model/BitmapCache;->getAudioBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/AudioModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 200
    .end local v0    # "cache":Lcom/motorola/messaging/model/BitmapCache;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/model/AudioModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    return-object v1

    .line 197
    .restart local v0    # "cache":Lcom/motorola/messaging/model/BitmapCache;
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/BitmapCache;->getAudioDrmProtectedIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/AudioModel;->mCachedDefaultThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x2

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 146
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "evtType":Ljava/lang/String;
    sget-boolean v2, Lcom/motorola/messaging/model/AudioModel;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "AudioModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    .line 152
    .local v0, "action":Lcom/motorola/messaging/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->START:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/MediaModel;->appendAction(Lcom/motorola/messaging/model/MediaModel$MediaAction;)V

    .line 164
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 165
    return-void

    .line 154
    :cond_2
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->STOP:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    goto :goto_0

    .line 156
    :cond_3
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->PAUSE:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    goto :goto_0

    .line 158
    :cond_4
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->SEEK:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    .line 160
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/model/MediaModel;->mSeekTo:I

    goto :goto_0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public isSaveable()Z
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x1

    .line 231
    .local v0, "isSaveable":Z
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isAP20Processor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual {v1}, Lcom/motorola/messaging/drm/DrmWrapper;->isCombinedDeliveryContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 239
    :cond_0
    return v0
.end method

.method protected setDefaultRegion()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioModel (src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/MediaModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    return-void
.end method
