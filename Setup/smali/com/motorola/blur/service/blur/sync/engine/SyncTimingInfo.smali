.class public Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
.super Ljava/lang/Object;
.source "SyncTimingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESCRIBE_CONTENTS_BITMASK:I = 0x0

.field public static final NO_INTERVAL_SET:I = -0x1


# instance fields
.field private mMaxIntervalBetweenSyncSessions:I

.field private mMinIntervalBetweenSyncSessions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "maxIntervalBetweenSyncSessions"    # I
    .param p2, "minIntervalBetweenSyncSessions"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMaxIntervalBetweenSyncSessions:I

    .line 16
    iput p2, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMinIntervalBetweenSyncSessions:I

    .line 17
    return-void
.end method

.method synthetic constructor <init>(IILcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo$1;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;-><init>(II)V

    return-void
.end method

.method public static create(II)Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .locals 2
    .param p0, "maxIntervalBetweenSyncSessions"    # I
    .param p1, "minIntervalBetweenSyncSessions"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 29
    if-gez p0, :cond_1

    if-eq p0, v1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    if-gez p1, :cond_2

    if-ne p1, v1, :cond_0

    .line 35
    :cond_2
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public maxIntervalBetweenSyncSessions()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMaxIntervalBetweenSyncSessions:I

    return v0
.end method

.method public minIntervalBetweenSyncSessions()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMinIntervalBetweenSyncSessions:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMaxIntervalBetweenSyncSessions:I

    if-ne v0, v2, :cond_0

    const-string v0, "none set"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", min interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMinIntervalBetweenSyncSessions:I

    if-ne v0, v2, :cond_1

    const-string v0, "none set"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMaxIntervalBetweenSyncSessions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMinIntervalBetweenSyncSessions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMaxIntervalBetweenSyncSessions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->mMinIntervalBetweenSyncSessions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
