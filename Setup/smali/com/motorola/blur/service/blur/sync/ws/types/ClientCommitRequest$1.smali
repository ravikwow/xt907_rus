.class final Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest$1;
.super Ljava/lang/Object;
.source "ClientCommitRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
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
        "Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 106
    new-instance v1, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;-><init>(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest$1;)V

    .line 108
    .local v1, "req":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageVersion:Ljava/lang/Integer;
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->access$102(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageType:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->access$202(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mDataFormat:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->access$302(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    iput-boolean v2, v1, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mRequestFullSyncForRecovery:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "length":I
    new-array v2, v0, [B

    # setter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mAppData:[B
    invoke-static {v1, v2}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->access$402(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;[B)[B

    .line 122
    # getter for: Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mAppData:[B
    invoke-static {v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->access$400(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 124
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 128
    new-array v0, p1, [Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest$1;->newArray(I)[Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;

    move-result-object v0

    return-object v0
.end method
