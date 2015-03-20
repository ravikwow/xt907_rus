.class final Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse$1;
.super Ljava/lang/Object;
.source "ClientUpdateResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
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
        "Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 199
    new-instance v1, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;-><init>(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse$1;)V

    .line 201
    .local v1, "resp":Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mWSErrorCode:Ljava/lang/Integer;
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->access$102(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mStatus:Ljava/lang/Integer;
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->access$202(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mExtendedStatus:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->access$302(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mChangesSinceAnchor:Ljava/lang/Long;
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->access$402(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/Long;)Ljava/lang/Long;

    .line 215
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mCurrentServerAnchor:Ljava/lang/Long;
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->access$502(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/Long;)Ljava/lang/Long;

    .line 219
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mDataFormat:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->access$602(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 225
    .local v0, "length":I
    new-array v3, v0, [B

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mAppData:[B
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->access$702(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;[B)[B

    .line 226
    # getter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mAppData:[B
    invoke-static {v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->access$700(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 229
    .end local v0    # "length":I
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v2, 0x0

    :cond_6
    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mIsMore:Z
    invoke-static {v1, v2}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->access$802(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Z)Z

    .line 231
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 235
    new-array v0, p1, [Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse$1;->newArray(I)[Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v0

    return-object v0
.end method
