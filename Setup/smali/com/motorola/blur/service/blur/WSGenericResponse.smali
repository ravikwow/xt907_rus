.class public Lcom/motorola/blur/service/blur/WSGenericResponse;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "WSGenericResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/WSGenericResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mReqParcel:Landroid/os/Parcel;

.field private mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/motorola/blur/service/blur/WSGenericResponse$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/WSGenericResponse$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/WSGenericResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BLcom/motorola/blur/service/blur/WSGenericRequest;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p3, "req"    # Lcom/motorola/blur/service/blur/WSGenericRequest;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 110
    iput-object p3, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    .line 111
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v1, :cond_2

    .line 42
    .local v1, "hasReq":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 43
    sget-object v3, Lcom/motorola/blur/service/blur/WSGenericRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/blur/service/blur/WSGenericRequest;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 47
    .local v2, "reqParcelLen":I
    if-eqz v2, :cond_1

    .line 48
    new-array v0, v2, [B

    .line 49
    .local v0, "d":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 50
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mReqParcel:Landroid/os/Parcel;

    .line 51
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mReqParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 52
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mReqParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    .end local v0    # "d":[B
    :cond_1
    return-void

    .end local v1    # "hasReq":Z
    .end local v2    # "reqParcelLen":I
    :cond_2
    move v1, v4

    .line 41
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/WSGenericResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/WSGenericResponse$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/WSGenericResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/WSGenericRequest;->getResponseAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    return-object v0
.end method

.method public getIntentCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/WSGenericRequest;->getResponseIntentCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReqParcel()Landroid/os/Parcel;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mReqParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/WSGenericRequest;->getSendReqBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/blur/service/blur/WSGenericRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/WSGenericRequest;->getResponseParcel()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/WSGenericRequest;->getResponseParcel()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mRequest:Lcom/motorola/blur/service/blur/WSGenericRequest;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/WSGenericRequest;->getResponseParcel()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    :goto_1
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mReqParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mReqParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 81
    .local v0, "d":[B
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericResponse;->mReqParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 84
    .end local v0    # "d":[B
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
