.class public Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
.super Ljava/lang/Object;
.source "ClientCommitRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESCRIBE_CONTENTS_MASK:I


# instance fields
.field private mAppData:[B

.field private mDataFormat:Ljava/lang/String;

.field private mMessageType:Ljava/lang/String;

.field private mMessageVersion:Ljava/lang/Integer;

.field public mRequestFullSyncForRecovery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest$1;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageVersion:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mDataFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;)[B
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mAppData:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .param p1, "x1"    # [B

    .prologue
    .line 7
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mAppData:[B

    return-object p1
.end method

.method public static create(I[B)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .locals 2
    .param p0, "messageVersion"    # I
    .param p1, "clientChangelist"    # [B

    .prologue
    .line 13
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;-><init>()V

    .line 14
    .local v0, "req":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->setMessageVersion(Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->setAppData([B)V

    .line 16
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getAppData()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mAppData:[B

    return-object v0
.end method

.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mDataFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestFullSyncForRecovery()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mRequestFullSyncForRecovery:Z

    return v0
.end method

.method public setAppData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 60
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mAppData:[B

    .line 61
    return-void
.end method

.method public setDataFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mDataFormat:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageType:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setMessageVersion(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/Integer;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageVersion:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public setRequestFullSyncForRecovery(Z)V
    .locals 0
    .param p1, "requestFullSyncForRecovery"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mRequestFullSyncForRecovery:Z

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mDataFormat:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    :goto_1
    iget-boolean v2, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mRequestFullSyncForRecovery:Z

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mAppData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mAppData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 101
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mMessageType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->mDataFormat:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 97
    goto :goto_2
.end method
