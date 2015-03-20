.class public Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
.super Ljava/lang/Object;
.source "SyncProtocolHandlerStatusCode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESCRIBE_CONTENTS_BITMASK:I = 0x0

.field private static final IRRECOVERABLE:I = 0x1388


# instance fields
.field private mExtendedStatus:Ljava/lang/String;

.field private mStatusCode:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mVersion:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->fromValue(I)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mStatusCode:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mExtendedStatus:Ljava/lang/String;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    .param p2, "extendedStatus"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mStatusCode:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    .line 77
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "extendedStatus":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mExtendedStatus:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static create(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    .locals 1
    .param p0, "statusCode"    # Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    .param p1, "extendedStatus"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;-><init>(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mStatusCode:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mStatusCode:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->mExtendedStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return-void
.end method
