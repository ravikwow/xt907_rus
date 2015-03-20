.class public Lcom/motorola/messaging/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createMedia(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/pdu/PduPart;)Lcom/motorola/messaging/model/MediaModel;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Lcom/motorola/messaging/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 271
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "MediaModelFactory"

    const-string v2, "createMedia (part)"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 276
    .local v0, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p4}, Lcom/motorola/messaging/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/messaging/model/MediaModelFactory;->formatSrc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "src":Ljava/lang/String;
    :try_start_0
    invoke-static {p3}, Lcom/motorola/messaging/mime/MmsContentType;->isTextType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    new-instance v0, Lcom/motorola/messaging/model/TextModel;

    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p4}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v4

    invoke-virtual {p4}, Lcom/motorola/messaging/pdu/PduPart;->getData()[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 296
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return-object v0

    .line 282
    :cond_1
    invoke-static {p3}, Lcom/motorola/messaging/mime/MmsContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    new-instance v0, Lcom/motorola/messaging/model/ImageModel;

    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p4}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/motorola/messaging/model/ImageModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_0

    .line 284
    :cond_2
    invoke-static {p3}, Lcom/motorola/messaging/mime/MmsContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    new-instance v0, Lcom/motorola/messaging/model/VideoModel;

    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p4}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/motorola/messaging/model/VideoModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_0

    .line 286
    :cond_3
    invoke-static {p3}, Lcom/motorola/messaging/mime/MmsContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    new-instance v0, Lcom/motorola/messaging/model/AudioModel;

    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p4}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/motorola/messaging/model/AudioModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_0

    .line 289
    :cond_4
    const-string v1, "MediaModelFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported Content-Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :catch_0
    move-exception v10

    .line 292
    .local v10, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaModelFactory"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    throw v10
.end method

.method private static createMedia(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/pdu/PduPart;Lcom/motorola/messaging/drm/DrmWrapper;)Lcom/motorola/messaging/model/MediaModel;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Lcom/motorola/messaging/pdu/PduPart;
    .param p5, "wrapper"    # Lcom/motorola/messaging/drm/DrmWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 241
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "MediaModelFactory"

    const-string v2, "createMedia (wrapper)"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    const/4 v8, 0x0

    .line 246
    .local v8, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p5}, Lcom/motorola/messaging/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "drmContentType":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/motorola/messaging/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/messaging/model/MediaModelFactory;->formatSrc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "src":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, v6}, Lcom/motorola/messaging/model/TextModel;->isSupportedType(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    new-instance v0, Lcom/motorola/messaging/model/TextModel;

    invoke-virtual {p4}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v4

    move-object v1, p0

    move-object v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/motorola/messaging/drm/DrmWrapper;)V

    .line 266
    .end local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    .local v0, "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return-object v0

    .line 253
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_1
    invoke-static {p1, v6}, Lcom/motorola/messaging/model/ImageModel;->isSupportedType(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    new-instance v0, Lcom/motorola/messaging/model/ImageModel;

    invoke-direct {v0, p0, p3, v3, p5}, Lcom/motorola/messaging/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/drm/DrmWrapper;)V

    .end local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_0

    .line 255
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_2
    invoke-static {p1, v6}, Lcom/motorola/messaging/model/VideoModel;->isSupportedType(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    new-instance v0, Lcom/motorola/messaging/model/VideoModel;

    invoke-direct {v0, p0, p3, v3, p5}, Lcom/motorola/messaging/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/drm/DrmWrapper;)V

    .end local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_0

    .line 257
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_3
    invoke-static {p1, v6}, Lcom/motorola/messaging/model/AudioModel;->isSupportedType(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 258
    new-instance v0, Lcom/motorola/messaging/model/AudioModel;

    invoke-direct {v0, p0, p3, v3, p5}, Lcom/motorola/messaging/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/drm/DrmWrapper;)V

    .end local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_0

    .line 260
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_4
    const-string v1, "MediaModelFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported Content-Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v8

    .end local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_0

    .line 262
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    :catch_0
    move-exception v7

    .line 263
    .local v7, "e":Ljava/io/IOException;
    const-string v1, "MediaModelFactory"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static findPart(Lcom/motorola/messaging/pdu/PduBody;Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;
    .locals 5
    .param p0, "pb"    # Lcom/motorola/messaging/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "part":Lcom/motorola/messaging/pdu/PduPart;
    if-eqz p1, :cond_0

    .line 94
    const-string v2, "cid:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Lcom/motorola/messaging/model/MediaModelFactory;->getPartByContentId(Lcom/motorola/messaging/pdu/PduBody;Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v1

    .line 124
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 125
    return-object v1

    .line 98
    :cond_1
    invoke-static {p0, p1}, Lcom/motorola/messaging/model/MediaModelFactory;->getPartByContentId(Lcom/motorola/messaging/pdu/PduBody;Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v1

    .line 99
    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v1

    .line 101
    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v1

    .line 103
    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v1

    .line 110
    if-nez v1, :cond_0

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 111
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "fileName":Ljava/lang/String;
    const-string v2, "<"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v1

    goto :goto_0

    .line 128
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/motorola/messaging/util/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No part found for the model "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static formatSrc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 305
    if-eqz p0, :cond_0

    .line 306
    const-string v0, "(?i)(cid:)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[<>:]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/motorola/messaging/pdu/PduPart;)Lcom/motorola/messaging/model/MediaModel;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p4, "part"    # Lcom/motorola/messaging/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 180
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "MediaModelFactory"

    const-string v2, "getGenericMediaModel"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v7

    .line 185
    .local v7, "bytes":[B
    if-nez v7, :cond_2

    .line 186
    const-string v1, "MediaModelFactory"

    const-string v2, "ContentType is null when creating mediaElement"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v10, 0x0

    .line 235
    :cond_1
    :goto_0
    return-object v10

    .line 190
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 191
    .local v4, "contentType":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 195
    :cond_3
    const/4 v6, 0x0

    .line 196
    .local v6, "wrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    invoke-static {v4}, Lcom/motorola/messaging/mime/MmsContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    :try_start_0
    new-instance v12, Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/messaging/pdu/PduPart;->getData()[B

    move-result-object v2

    invoke-direct {v12, v4, v1, v2}, Lcom/motorola/messaging/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v6    # "wrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    .local v12, "wrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    move-object v6, v12

    .line 208
    .end local v12    # "wrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    .restart local v6    # "wrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    :cond_4
    :goto_1
    const/4 v10, 0x0

    .line 209
    .local v10, "media":Lcom/motorola/messaging/model/MediaModel;
    if-nez v6, :cond_6

    .line 210
    move-object/from16 v0, p4

    invoke-static {p0, p1, p2, v4, v0}, Lcom/motorola/messaging/model/MediaModelFactory;->createMedia(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/pdu/PduPart;)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v10

    .line 215
    :goto_2
    if-eqz v10, :cond_1

    .line 217
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result v1

    const/high16 v2, 0x447a0000

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 218
    .local v8, "duration":I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;

    .line 220
    .local v11, "parElem":Lcom/motorola/messaging/dom/smil/SmilParElementImpl;
    if-nez v8, :cond_5

    if-eqz v11, :cond_5

    .line 224
    invoke-virtual {v11}, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->getDur()F

    move-result v1

    const/high16 v2, 0x447a0000

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 227
    if-nez v8, :cond_5

    .line 228
    const/16 v8, 0x1388

    .line 232
    :cond_5
    invoke-virtual {v10, v8}, Lcom/motorola/messaging/model/MediaModel;->setDuration(I)V

    goto :goto_0

    .line 199
    .end local v8    # "duration":I
    .end local v10    # "media":Lcom/motorola/messaging/model/MediaModel;
    .end local v11    # "parElem":Lcom/motorola/messaging/dom/smil/SmilParElementImpl;
    :catch_0
    move-exception v9

    .line 200
    .local v9, "e":Ljava/io/IOException;
    const-string v1, "MediaModelFactory"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 202
    .local v9, "e":Ljava/lang/RuntimeException;
    throw v9

    .line 203
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v9

    .line 204
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "MediaModelFactory"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_6
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    .line 212
    invoke-static/range {v1 .. v6}, Lcom/motorola/messaging/model/MediaModelFactory;->createMedia(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/pdu/PduPart;Lcom/motorola/messaging/drm/DrmWrapper;)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v10

    goto :goto_2
.end method

.method public static getMediaModel(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduPart;)Lcom/motorola/messaging/model/MediaModel;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p2, "part"    # Lcom/motorola/messaging/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "media":Lcom/motorola/messaging/model/MediaModel;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 157
    .local v3, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/messaging/model/MediaModelFactory;->formatSrc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "src":Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/messaging/mime/MmsContentType;->isCalendarType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    new-instance v0, Lcom/motorola/messaging/model/ICalModel;

    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/model/ICalModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 174
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    invoke-static {v3}, Lcom/motorola/messaging/mime/MmsContentType;->isCardType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    new-instance v0, Lcom/motorola/messaging/model/VcardModel;

    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/model/VcardModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_0

    .line 165
    :cond_2
    const-string v1, "application/oct-stream"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "application/octet-stream"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :cond_3
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/motorola/messaging/model/VcardModel;->parseNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "vCardName":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 169
    new-instance v0, Lcom/motorola/messaging/model/VcardModel;

    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    const-string v8, "text/x-vCard"

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v11

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v11}, Lcom/motorola/messaging/model/VcardModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_0
.end method

.method public static getMediaModel(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/motorola/messaging/pdu/PduBody;Ljava/util/Map;)Lcom/motorola/messaging/model/MediaModel;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p2, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p3, "pduBody"    # Lcom/motorola/messaging/pdu/PduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/motorola/messaging/model/Model$CreationMode;",
            "Lorg/w3c/dom/smil/SMILMediaElement;",
            "Lcom/motorola/messaging/pdu/PduBody;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/messaging/model/RegionModel;",
            ">;)",
            "Lcom/motorola/messaging/model/MediaModel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 53
    .local p4, "regions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/motorola/messaging/model/RegionModel;>;"
    invoke-interface {p2}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "tag":Ljava/lang/String;
    invoke-interface {p2}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "src":Ljava/lang/String;
    :try_start_0
    invoke-static {p3, v4}, Lcom/motorola/messaging/model/MediaModelFactory;->findPart(Lcom/motorola/messaging/pdu/PduBody;Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 63
    .local v2, "part":Lcom/motorola/messaging/pdu/PduPart;
    invoke-static {p0, p1, v6, p2, v2}, Lcom/motorola/messaging/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/motorola/messaging/pdu/PduPart;)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v1

    .line 65
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    if-eqz v1, :cond_2

    .line 66
    const/4 v3, 0x0

    .line 68
    .local v3, "region":Lcom/motorola/messaging/model/RegionModel;
    instance-of v7, p2, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v7, :cond_0

    .line 69
    check-cast p2, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    .end local p2    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {p2}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v5

    .line 70
    .local v5, "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v5, :cond_0

    .line 71
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "region":Lcom/motorola/messaging/model/RegionModel;
    check-cast v3, Lcom/motorola/messaging/model/RegionModel;

    .line 76
    .end local v5    # "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    .restart local v3    # "region":Lcom/motorola/messaging/model/RegionModel;
    :cond_0
    if-nez v3, :cond_1

    .line 77
    const-string v7, "text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 78
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultTextRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v3

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v1, v3}, Lcom/motorola/messaging/model/MediaModel;->setRegion(Lcom/motorola/messaging/model/RegionModel;)V

    .line 86
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    .end local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v3    # "region":Lcom/motorola/messaging/model/RegionModel;
    :cond_2
    :goto_1
    return-object v1

    .line 58
    .restart local p2    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v7, "MediaModelFactory"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    goto :goto_1

    .line 80
    .end local v0    # "e":Lcom/motorola/messaging/util/MmsException;
    .end local p2    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    .restart local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .restart local v3    # "region":Lcom/motorola/messaging/model/RegionModel;
    :cond_3
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultMediaRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v3

    goto :goto_0
.end method

.method private static getPartByContentId(Lcom/motorola/messaging/pdu/PduBody;Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;
    .locals 3
    .param p0, "pb"    # Lcom/motorola/messaging/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "part":Lcom/motorola/messaging/pdu/PduPart;
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v0

    goto :goto_0
.end method
