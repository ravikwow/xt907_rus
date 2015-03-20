.class public Lcom/motorola/blur/service/blur/WSGenericRequest;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "WSGenericRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/WSGenericRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAIDLResponse:Z

.field private mId:Ljava/lang/String;

.field private mIntentCategory:Ljava/lang/String;

.field private mQS:Ljava/lang/String;

.field private mResource:Ljava/lang/String;

.field private mRespParcel:[B

.field private mResponseAction:Ljava/lang/String;

.field private mSecure:Z

.field private mSendReqBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/motorola/blur/service/blur/WSGenericRequest$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/WSGenericRequest$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/WSGenericRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mResponseAction:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mResource:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mSecure:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mIntentCategory:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "respParcelLen":I
    if-eqz v0, :cond_0

    .line 57
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mRespParcel:[B

    .line 58
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mRespParcel:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mQS:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mSendReqBack:Z

    .line 62
    return-void

    .end local v0    # "respParcelLen":I
    :cond_1
    move v1, v3

    .line 52
    goto :goto_0

    .restart local v0    # "respParcelLen":I
    :cond_2
    move v2, v3

    .line 61
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/WSGenericRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/WSGenericRequest$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/WSGenericRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reqId"    # Ljava/lang/String;
    .param p2, "responseAction"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mId:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mResponseAction:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 106
    new-instance v0, Lcom/motorola/blur/service/blur/WSGenericResponse;

    invoke-direct {v0, p1, p2, p0}, Lcom/motorola/blur/service/blur/WSGenericResponse;-><init>(I[BLcom/motorola/blur/service/blur/WSGenericRequest;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mAIDLResponse:Z

    if-eqz v0, :cond_0

    const-string v0, "com.motorola.blur.service.ws.request.aidl"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.motorola.blur.service.ws.request"

    goto :goto_0
.end method

.method protected getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mResource:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mResponseAction:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseIntentCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mIntentCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseParcel()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mRespParcel:[B

    return-object v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/ws/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendReqBack()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mSendReqBack:Z

    return v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "serverBaseUrl"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "loadBalancerValue"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mQS:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/motorola/blur/service/blur/WSRequest;->getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mQS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/motorola/blur/service/blur/WSRequest;->getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mSecure:Z

    return v0
.end method

.method public setAIDLResponse(Z)V
    .locals 0
    .param p1, "aidlResponse"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mAIDLResponse:Z

    .line 225
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 174
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 175
    return-void
.end method

.method public setIsSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mSecure:Z

    .line 210
    return-void
.end method

.method public setMaxRetries(B)V
    .locals 0
    .param p1, "maxRetries"    # B

    .prologue
    .line 186
    iput-byte p1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mMaxRetries:B

    .line 187
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "qs"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mQS:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mResource:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setResponseIntentCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentCategory"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mIntentCategory:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setResponseParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mRespParcel:[B

    .line 236
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mResponseAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mResource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mSecure:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 76
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mIntentCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mRespParcel:[B

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mRespParcel:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mRespParcel:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mQS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/WSGenericRequest;->mSendReqBack:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 85
    goto :goto_2
.end method
