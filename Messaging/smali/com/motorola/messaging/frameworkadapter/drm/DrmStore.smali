.class public Lcom/motorola/messaging/frameworkadapter/drm/DrmStore;
.super Ljava/lang/Object;
.source "DrmStore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
