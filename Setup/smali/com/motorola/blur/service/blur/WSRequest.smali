.class public abstract Lcom/motorola/blur/service/blur/WSRequest;
.super Ljava/lang/Object;
.source "WSRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.ws.request"

.field public static final ACTION_AIDL:Ljava/lang/String; = "com.motorola.blur.service.ws.request.aidl"

.field private static final DEFAULT_HDRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEFAULT_QUERY_STRING:Ljava/lang/String; = "?k=android&f=pb&of=0"

.field public static final KEY_REQUEST_DATA:Ljava/lang/String; = "com.motorola.blur.service.ws.key.requestdata"


# instance fields
.field protected mData:[B

.field protected mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

.field protected mErrorMsg:Ljava/lang/String;

.field protected mException:Ljava/lang/Exception;

.field protected mMaxRetries:B

.field protected mOffset:I

.field protected mReqKey:Ljava/lang/String;

.field protected mResponseLevel:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

.field protected mRetryCount:B

.field protected mUseAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/motorola/blur/service/blur/WSRequest;->DEFAULT_HDRS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 56
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mException:Ljava/lang/Exception;

    .line 57
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 58
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mErrorMsg:Ljava/lang/String;

    .line 59
    iput-byte v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mRetryCount:B

    .line 60
    iput-byte v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mMaxRetries:B

    .line 61
    sget-object v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->ALL:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mResponseLevel:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    .line 62
    iput v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mOffset:I

    .line 63
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mReqKey:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    return-void
.end method


# virtual methods
.method protected _getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mException:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator;->toErrorCode(Ljava/lang/Exception;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method protected _getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "dataLen":I
    if-eqz v0, :cond_0

    .line 86
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 87
    iget-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 91
    :goto_0
    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSRequest;->mException:Ljava/lang/Exception;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->fromValue(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mErrorMsg:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mRetryCount:B

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mMaxRetries:B

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mResponseLevel:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mOffset:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mReqKey:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    .line 100
    return-void

    .line 89
    :cond_0
    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected _writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSRequest;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSRequest;->_getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-byte v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mRetryCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 76
    iget-byte v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mMaxRetries:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mResponseLevel:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mOffset:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mReqKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-boolean v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public canUseMasterCloud()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public abstract createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string v0, "com.motorola.blur.service.ws.request"

    return-object v0
.end method

.method public getBodySize()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 148
    .local v0, "reqEntity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSRequest;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mErrorMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSRequest;->_getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mErrorMsg:Ljava/lang/String;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    sget-object v0, Lcom/motorola/blur/service/blur/WSRequest;->DEFAULT_HDRS:Ljava/util/List;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mOffset:I

    return v0
.end method

.method public getReqKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mReqKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseLevel()Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mResponseLevel:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    return-object v0
.end method

.method protected abstract getRootUrl()Ljava/lang/String;
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "serverBaseUrl"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "loadBalancerValue"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, "url":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSRequest;->getRootUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSRequest;->getResource()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "resource":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 169
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    const-string v3, "?k=android&l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&f=pb&p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSRequest;->getBodySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSRequest;->signBody()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "bodySign":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 177
    const-string v3, "&h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    const-string v3, "&of="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSRequest;->mReqKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 182
    const-string v3, "&dk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mReqKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public maxReadSizeLimit()I
    .locals 1

    .prologue
    .line 343
    const v0, 0x7fffffff

    return v0
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mOffset:I

    .line 301
    return-void
.end method

.method public setReqKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqKey"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mReqKey:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public shouldRetry()Z
    .locals 2

    .prologue
    .line 266
    iget-byte v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mMaxRetries:B

    if-ltz v0, :cond_0

    iget-byte v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mRetryCount:B

    iget-byte v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mMaxRetries:B

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public signBody()Ljava/lang/String;
    .locals 6

    .prologue
    .line 207
    const-string v3, ""

    .line 209
    .local v3, "ret":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    array-length v4, v4

    if-lez v4, :cond_0

    .line 211
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 212
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    iget-object v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 213
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 214
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/motorola/blur/service/blur/SRPUtil;->tob64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 219
    .end local v0    # "bytes":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    return-object v3

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "WSRequest"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WSRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSRequest;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upRetryCount()V
    .locals 1

    .prologue
    .line 270
    iget-byte v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mRetryCount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mRetryCount:B

    .line 271
    return-void
.end method

.method public useAuth()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    return v0
.end method
