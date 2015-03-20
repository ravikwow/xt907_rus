.class public Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
.super Ljava/lang/Object;
.source "ClientCommitResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESCRIBE_CONTENTS_MASK:I


# instance fields
.field private mExtendedStatus:Ljava/lang/String;

.field private mLastClientAnchor:Ljava/lang/Long;

.field private mMessageType:Ljava/lang/String;

.field private mMessageVersion:Ljava/lang/Integer;

.field private mNewServerAnchor:Ljava/lang/Long;

.field private mStatus:Ljava/lang/Integer;

.field private mWSErrorCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mWSErrorCode:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageVersion:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mStatus:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mExtendedStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mLastClientAnchor:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mNewServerAnchor:Ljava/lang/Long;

    return-object p1
.end method

.method public static create(II)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .locals 2
    .param p0, "messageVersion"    # I
    .param p1, "statusCode"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;-><init>()V

    .line 25
    .local v0, "resp":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageVersion:Ljava/lang/Integer;

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mStatus:Ljava/lang/Integer;

    .line 27
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLastClientAnchor()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mLastClientAnchor:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNewServerAnchor()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mNewServerAnchor:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWSErrorCode()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mWSErrorCode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mWSErrorCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->fromValue(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    goto :goto_0
.end method

.method public setExtendedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "extendedStatus"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mExtendedStatus:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setLastClientAnchor(Ljava/lang/Long;)V
    .locals 0
    .param p1, "lastClientAnchor"    # Ljava/lang/Long;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mLastClientAnchor:Ljava/lang/Long;

    .line 97
    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageType:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMessageVersion(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/Integer;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageVersion:Ljava/lang/Integer;

    .line 53
    return-void
.end method

.method public setNewServerAnchor(Ljava/lang/Long;)V
    .locals 0
    .param p1, "newServerAnchor"    # Ljava/lang/Long;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mNewServerAnchor:Ljava/lang/Long;

    .line 108
    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mStatus:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method public setWSErrorCode(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V
    .locals 1
    .param p1, "code"    # Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mWSErrorCode:Ljava/lang/Integer;

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mWSErrorCode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mExtendedStatus:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 136
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_2
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mLastClientAnchor:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 143
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    :goto_3
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mNewServerAnchor:Ljava/lang/Long;

    if-nez v0, :cond_4

    .line 150
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    :goto_4
    return-void

    .line 120
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mWSErrorCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mExtendedStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 145
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mLastClientAnchor:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_3

    .line 152
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->mNewServerAnchor:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_4
.end method
