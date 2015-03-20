.class public Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
.super Ljava/lang/Object;
.source "ClientUpdateResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESCRIBE_CONTENTS_MASK:I


# instance fields
.field private mAppData:[B

.field private mChangesSinceAnchor:Ljava/lang/Long;

.field private mCurrentServerAnchor:Ljava/lang/Long;

.field private mDataFormat:Ljava/lang/String;

.field private mExtendedStatus:Ljava/lang/String;

.field private mIsMore:Z

.field private mStatus:Ljava/lang/Integer;

.field private mSyncAppId:I

.field private mWSErrorCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse$1;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mWSErrorCode:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mStatus:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mExtendedStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mChangesSinceAnchor:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mCurrentServerAnchor:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mDataFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;)[B
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mAppData:[B

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .param p1, "x1"    # [B

    .prologue
    .line 19
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mAppData:[B

    return-object p1
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mIsMore:Z

    return p1
.end method

.method public static create(I)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .locals 2
    .param p0, "wsStatus"    # I

    .prologue
    .line 25
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;-><init>()V

    .line 26
    .local v0, "resp":Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mWSErrorCode:Ljava/lang/Integer;

    .line 27
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getAppData()[B
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mAppData:[B

    return-object v0
.end method

.method public getChangesSinceAnchor()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mChangesSinceAnchor:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrentServerAnchor()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mCurrentServerAnchor:Ljava/lang/Long;

    return-object v0
.end method

.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mDataFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMore()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mIsMore:Z

    return v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSyncAppId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mSyncAppId:I

    return v0
.end method

.method public getWSErrorCode()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mWSErrorCode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mWSErrorCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->fromValue(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    goto :goto_0
.end method

.method public setAppData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 118
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mAppData:[B

    .line 119
    return-void
.end method

.method public setChangesSinceAnchor(Ljava/lang/Long;)V
    .locals 0
    .param p1, "sinceAnchor"    # Ljava/lang/Long;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mChangesSinceAnchor:Ljava/lang/Long;

    .line 86
    return-void
.end method

.method public setCurrentServerAnchor(Ljava/lang/Long;)V
    .locals 0
    .param p1, "serverAnchor"    # Ljava/lang/Long;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mCurrentServerAnchor:Ljava/lang/Long;

    .line 97
    return-void
.end method

.method public setDataFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mDataFormat:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setExtendedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mExtendedStatus:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setIsMore(Z)V
    .locals 0
    .param p1, "isMore"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mIsMore:Z

    .line 130
    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mStatus:Ljava/lang/Integer;

    .line 64
    return-void
.end method

.method public setSyncAppId(I)V
    .locals 0
    .param p1, "syncAppId"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mSyncAppId:I

    .line 53
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

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mWSErrorCode:Ljava/lang/Integer;

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

    .line 143
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mWSErrorCode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mExtendedStatus:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mChangesSinceAnchor:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 160
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :goto_2
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mCurrentServerAnchor:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 167
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    :goto_3
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mDataFormat:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 174
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    :goto_4
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mAppData:[B

    if-nez v0, :cond_5

    .line 181
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    :goto_5
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mIsMore:Z

    if-eqz v0, :cond_6

    .line 189
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    :goto_6
    return-void

    .line 146
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mWSErrorCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mExtendedStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mChangesSinceAnchor:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mCurrentServerAnchor:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_3

    .line 176
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mDataFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 183
    :cond_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mAppData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->mAppData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_5

    .line 191
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6
.end method
