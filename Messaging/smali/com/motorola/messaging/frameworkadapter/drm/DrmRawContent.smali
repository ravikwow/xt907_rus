.class public Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;
.super Ljava/lang/Object;
.source "DrmRawContent.java"


# static fields
.field public static DRM_COMBINED_DELIVERY:I

.field public static DRM_FORWARD_LOCK:I

.field public static DRM_MIMETYPE_CONTENT_STRING:Ljava/lang/String;

.field public static DRM_MIMETYPE_MESSAGE_STRING:Ljava/lang/String;

.field public static DRM_SEPARATE_DELIVERY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x3

    sput v0, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->DRM_SEPARATE_DELIVERY:I

    .line 11
    const/4 v0, 0x1

    sput v0, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->DRM_FORWARD_LOCK:I

    .line 12
    const/4 v0, 0x2

    sput v0, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->DRM_COMBINED_DELIVERY:I

    .line 13
    const-string v0, "application/vnd.oma.drm.message"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->DRM_MIMETYPE_MESSAGE_STRING:Ljava/lang/String;

    .line 14
    const-string v0, "application/vnd.oma.drm.content"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/drm/DrmRawContent;->DRM_MIMETYPE_CONTENT_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/ByteArrayInputStream;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "drmDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "available"    # I
    .param p2, "mDrmContentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    new-instance v1, Landroid/drm/mobile1/DrmRawContent;

    invoke-direct {v1, p0, p1, p2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/drm/mobile1/DrmException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getContentInputStream(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p0, "mDrmObject"    # Ljava/lang/Object;
    .param p1, "mRight"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p0, Landroid/drm/mobile1/DrmRawContent;

    .end local p0    # "mDrmObject":Ljava/lang/Object;
    check-cast p1, Landroid/drm/mobile1/DrmRights;

    .end local p1    # "mRight":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getContentType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "mDrmObject"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p0, Landroid/drm/mobile1/DrmRawContent;

    .end local p0    # "mDrmObject":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRawType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "mDrmObject"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p0, Landroid/drm/mobile1/DrmRawContent;

    .end local p0    # "mDrmObject":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v0

    return v0
.end method
