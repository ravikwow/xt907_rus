.class final Lcom/motorola/messaging/drm/DrmWrapper$1;
.super Ljava/lang/Object;
.source "DrmWrapper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/drm/DrmWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/messaging/drm/DrmWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/messaging/drm/DrmWrapper;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "drmWrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    :try_start_0
    new-instance v1, Lcom/motorola/messaging/drm/DrmWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Lcom/motorola/messaging/drm/DrmWrapper;-><init>(Landroid/os/Parcel;Lcom/motorola/messaging/drm/DrmWrapper$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "drmWrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    .local v1, "drmWrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    move-object v0, v1

    .line 133
    .end local v1    # "drmWrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    .restart local v0    # "drmWrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "DrmWrapper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/RuntimeException;
    throw v2

    .line 130
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DrmWrapper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/drm/DrmWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/messaging/drm/DrmWrapper;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 137
    new-array v0, p1, [Lcom/motorola/messaging/drm/DrmWrapper;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/drm/DrmWrapper$1;->newArray(I)[Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v0

    return-object v0
.end method
