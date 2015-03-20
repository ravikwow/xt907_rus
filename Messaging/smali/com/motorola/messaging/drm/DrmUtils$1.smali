.class final Lcom/motorola/messaging/drm/DrmUtils$1;
.super Ljava/lang/Thread;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/motorola/messaging/drm/DrmUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/motorola/messaging/drm/DrmUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/drm/DrmUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/motorola/messaging/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/messaging/drm/DrmUtils;->access$000()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 43
    return-void
.end method
