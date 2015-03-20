.class public Lcom/motorola/messaging/frameworkadapter/drm/DrmRights;
.super Ljava/lang/Object;
.source "DrmRights.java"


# static fields
.field public static DRM_PERMISSION_DISPLAY:I

.field public static DRM_PERMISSION_PLAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x2

    sput v0, Lcom/motorola/messaging/frameworkadapter/drm/DrmRights;->DRM_PERMISSION_DISPLAY:I

    .line 5
    const/4 v0, 0x1

    sput v0, Lcom/motorola/messaging/frameworkadapter/drm/DrmRights;->DRM_PERMISSION_PLAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeRights(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "mRight"    # Ljava/lang/Object;
    .param p1, "permission"    # I

    .prologue
    .line 8
    check-cast p0, Landroid/drm/mobile1/DrmRights;

    .end local p0    # "mRight":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/drm/mobile1/DrmRights;->consumeRights(I)Z

    move-result v0

    return v0
.end method
