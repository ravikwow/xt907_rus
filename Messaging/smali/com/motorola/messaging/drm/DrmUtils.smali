.class public Lcom/motorola/messaging/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# static fields
.field private static final DRM_TEMP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "content://mms/drm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/motorola/messaging/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static cleanupStorage(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    new-instance v0, Lcom/motorola/messaging/drm/DrmUtils$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/drm/DrmUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method

.method public static insert(Landroid/content/Context;Lcom/motorola/messaging/drm/DrmWrapper;)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drmObj"    # Lcom/motorola/messaging/drm/DrmWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v5, Lcom/motorola/messaging/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {p0, v0, v5, v6}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 52
    .local v4, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 54
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 55
    invoke-virtual {p1}, Lcom/motorola/messaging/drm/DrmWrapper;->getDecryptedData()[B

    move-result-object v1

    .line 56
    .local v1, "data":[B
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    if-eqz v3, :cond_1

    .line 63
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :cond_1
    :goto_0
    return-object v4

    .line 61
    .end local v1    # "data":[B
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 63
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    :cond_2
    :goto_1
    throw v5

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "DrmUtils"

    const-string v7, "Could not close stream."

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "data":[B
    :catch_1
    move-exception v2

    .line 65
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "DrmUtils"

    const-string v6, "Could not close stream."

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
