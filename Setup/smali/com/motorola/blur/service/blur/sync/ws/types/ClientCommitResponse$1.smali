.class final Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse$1;
.super Ljava/lang/Object;
.source "ClientCommitResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
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
        "Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 160
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;-><init>(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse$1;)V

    .line 162
    .local v0, "resp":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mWSErrorCode:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->access$102(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageVersion:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->access$202(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->access$302(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mStatus:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->access$402(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mExtendedStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->access$502(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mLastClientAnchor:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->access$602(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Long;)Ljava/lang/Long;

    .line 182
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mNewServerAnchor:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->access$702(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Long;)Ljava/lang/Long;

    .line 186
    :cond_4
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 190
    new-array v0, p1, [Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse$1;->newArray(I)[Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;

    move-result-object v0

    return-object v0
.end method
