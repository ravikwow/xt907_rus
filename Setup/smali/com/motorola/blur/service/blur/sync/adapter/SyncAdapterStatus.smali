.class public Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
.super Ljava/lang/Object;
.source "SyncAdapterStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESCRIBE_CONTENTS_BITMASK:I


# instance fields
.field private mExtendedStatus:Ljava/lang/String;

.field private mStatusCode:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mVersion:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->fromValue(I)Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mStatusCode:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mExtendedStatus:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    .param p2, "extendedStatus"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mStatusCode:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    .line 62
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "extendedStatus":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mExtendedStatus:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static create(Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    .locals 1
    .param p0, "statusCode"    # Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    .param p1, "extendedStatus"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mStatusCode:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mStatusCode:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->mExtendedStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return-void
.end method
