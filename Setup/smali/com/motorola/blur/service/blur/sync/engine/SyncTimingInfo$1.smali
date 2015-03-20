.class final Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo$1;
.super Ljava/lang/Object;
.source "SyncTimingInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
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
        "Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, "maxIntervalBetweenSyncSessions":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "minIntervalBetweenSyncSessions":I
    new-instance v2, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;-><init>(IILcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo$1;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 89
    new-array v0, p1, [Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo$1;->newArray(I)[Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    move-result-object v0

    return-object v0
.end method
