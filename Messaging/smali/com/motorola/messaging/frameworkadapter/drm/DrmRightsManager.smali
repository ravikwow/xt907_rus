.class public Lcom/motorola/messaging/frameworkadapter/drm/DrmRightsManager;
.super Ljava/lang/Object;
.source "DrmRightsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryRights(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "drmObject"    # Ljava/lang/Object;

    .prologue
    .line 5
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v0

    check-cast p0, Landroid/drm/mobile1/DrmRawContent;

    .end local p0    # "drmObject":Ljava/lang/Object;
    invoke-virtual {v0, p0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v0

    return-object v0
.end method
