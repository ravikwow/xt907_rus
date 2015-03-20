.class public Lcom/motorola/messaging/drm/DrmWrapper;
.super Ljava/lang/Object;
.source "DrmWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/messaging/drm/DrmWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:[B

.field private final mDataUri:Landroid/net/Uri;

.field private mDecryptedData:[B

.field private final mDrmContentType:Ljava/lang/String;

.field private mDrmObject:Ljava/lang/Object;

.field private mRight:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/motorola/messaging/drm/DrmWrapper$1;

    invoke-direct {v0}, Lcom/motorola/messaging/drm/DrmWrapper$1;-><init>()V

    sput-object v0, Lcom/motorola/messaging/drm/DrmWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mData:[B

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmContentType:Ljava/lang/String;

    .line 102
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    .line 104
    invoke-direct {p0}, Lcom/motorola/messaging/drm/DrmWrapper;->initializeSpecificDrmAttributes()V

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/messaging/drm/DrmWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/messaging/drm/DrmWrapper$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/motorola/messaging/drm/DrmWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;[B)V
    .locals 2
    .param p1, "drmContentType"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "drmData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content-Type or data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iput-object p2, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    .line 87
    iput-object p3, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mData:[B

    .line 88
    iput-object p1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmContentType:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/motorola/messaging/drm/DrmWrapper;->initializeSpecificDrmAttributes()V

    .line 91
    return-void
.end method

.method private getPermission()I
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    invoke-static {v1}, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->getContentType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    invoke-static {v0}, Lcom/motorola/messaging/mime/MmsContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/motorola/messaging/mime/MmsContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    :cond_1
    sget v1, Lcom/motorola/messaging/frameworkadapter/drm/DrmRights;->DRM_PERMISSION_PLAY:I

    .line 170
    :goto_0
    return v1

    :cond_2
    sget v1, Lcom/motorola/messaging/frameworkadapter/drm/DrmRights;->DRM_PERMISSION_DISPLAY:I

    goto :goto_0
.end method

.method private initializeSpecificDrmAttributes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 109
    .local v0, "drmDataStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmContentType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->create(Ljava/io/ByteArrayInputStream;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mRight:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/drm/DrmWrapper;->isForwardLockContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    invoke-static {v1}, Lcom/motorola/messaging/frameworkadapter/drm/DrmRightsManager;->queryRights(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mRight:Ljava/lang/Object;

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public consumeRights()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mRight:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mRight:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/motorola/messaging/drm/DrmWrapper;->getPermission()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/frameworkadapter/drm/DrmRights;->consumeRights(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public fixDrmFileNameExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, p1

    .line 310
    .end local p1    # "fileName":Ljava/lang/String;
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 288
    .end local v0    # "fileName":Ljava/lang/String;
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .line 289
    .local v1, "fileNameWoutExt":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 291
    .local v2, "index":I
    if-nez v2, :cond_3

    .line 295
    const-string v1, ""

    .line 303
    :cond_2
    :goto_1
    sget-object v3, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->DRM_MIMETYPE_MESSAGE_STRING:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/motorola/messaging/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/messaging/mime/MmsContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 305
    const-string v3, ".dm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v0, p1

    .line 310
    .end local p1    # "fileName":Ljava/lang/String;
    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 296
    .end local v0    # "fileName":Ljava/lang/String;
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_3
    if-lez v2, :cond_2

    .line 298
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 307
    :cond_4
    const-string v3, ".dcf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 322
    iget-object v2, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    invoke-static {v2}, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->getContentType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "contentType":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 325
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 326
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_0
    return-object v0
.end method

.method public getDecryptedData()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 180
    iget-object v6, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDecryptedData:[B

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mRight:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 182
    iget-object v6, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mRight:Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->getContentInputStream(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    .line 184
    .local v3, "decryptedDataStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x100

    new-array v1, v6, [B

    .line 187
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_0

    .line 188
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v5    # "len":I
    :catchall_0
    move-exception v6

    .line 193
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :goto_1
    throw v6

    .line 190
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v5    # "len":I
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDecryptedData:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 200
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "decryptedDataStream":Ljava/io/InputStream;
    .end local v5    # "len":I
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDecryptedData:[B

    if-eqz v6, :cond_2

    .line 201
    iget-object v6, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDecryptedData:[B

    array-length v6, v6

    new-array v2, v6, [B

    .line 202
    .local v2, "decryptedData":[B
    iget-object v6, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDecryptedData:[B

    iget-object v7, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDecryptedData:[B

    array-length v7, v7

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    .end local v2    # "decryptedData":[B
    :goto_3
    return-object v2

    .line 194
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "decryptedDataStream":Ljava/io/InputStream;
    .restart local v5    # "len":I
    :catch_0
    move-exception v4

    .line 195
    .local v4, "e":Ljava/io/IOException;
    const-string v6, "DrmWrapper"

    const-string v7, "Could not close stream."

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 194
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "len":I
    :catch_1
    move-exception v4

    .line 195
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v7, "DrmWrapper"

    const-string v8, "Could not close stream."

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    .end local v3    # "decryptedDataStream":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public getOriginalData()[B
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mData:[B

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isCombinedDeliveryContent()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-object v1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 256
    sget v1, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->DRM_COMBINED_DELIVERY:I

    iget-object v2, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    invoke-static {v2}, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->getRawType(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 258
    :cond_0
    return v0
.end method

.method public isForwardLockContent()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 243
    sget v1, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->DRM_FORWARD_LOCK:I

    iget-object v2, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    invoke-static {v2}, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->getRawType(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 245
    :cond_0
    return v0
.end method

.method public isForwardable()Z
    .locals 2

    .prologue
    .line 229
    sget v0, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->DRM_SEPARATE_DELIVERY:I

    iget-object v1, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmObject:Ljava/lang/Object;

    invoke-static {v1}, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->getRawType(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mustConsumeRights()Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/motorola/messaging/drm/DrmWrapper;->isForwardLockContent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    iget-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDrmContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/motorola/messaging/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 147
    return-void
.end method
