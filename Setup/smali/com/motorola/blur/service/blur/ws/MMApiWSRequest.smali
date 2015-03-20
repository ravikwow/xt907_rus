.class public abstract Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;
.super Ljava/lang/Object;
.source "MMApiWSRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;,
        Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;,
        Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.mmapiws.request"

.field public static final ACTION_AIDL:Ljava/lang/String; = "com.motorola.blur.service.mmapiws.request.aidl"

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
.field protected mAppId:Ljava/lang/String;

.field protected mAppSecret:Ljava/lang/String;

.field protected mData:[B

.field protected mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

.field protected mErrorMsg:Ljava/lang/String;

.field protected mException:Ljava/lang/Exception;

.field protected mHttpRequestType:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

.field protected mMaxRetries:B

.field protected mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

.field protected mOffset:I

.field protected mReqKey:Ljava/lang/String;

.field protected mResponseLevel:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;

.field protected mRetryCount:B

.field protected mUseAuth:Z

.field protected mUseGlobalProvisioning:Z

.field protected mUseOAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->DEFAULT_HDRS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    .line 78
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mException:Ljava/lang/Exception;

    .line 79
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 80
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mErrorMsg:Ljava/lang/String;

    .line 81
    iput-byte v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mRetryCount:B

    .line 82
    iput-byte v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mMaxRetries:B

    .line 84
    sget-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;->ALL:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mResponseLevel:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;

    .line 85
    iput v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mOffset:I

    .line 87
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mReqKey:Ljava/lang/String;

    .line 90
    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mUseAuth:Z

    .line 92
    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mUseOAuth:Z

    .line 94
    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mUseGlobalProvisioning:Z

    .line 96
    sget-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->NONE:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mHttpRequestType:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    .line 101
    sget-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;->JSON:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    .line 103
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mAppId:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mAppSecret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected _getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mException:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator;->toErrorCode(Ljava/lang/Exception;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method protected _getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
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

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .local v0, "dataLen":I
    if-eqz v0, :cond_0

    .line 129
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    .line 130
    iget-object v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 134
    :goto_0
    iput-object v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mException:Ljava/lang/Exception;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->fromValue(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mErrorMsg:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mRetryCount:B

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mMaxRetries:B

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mResponseLevel:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mOffset:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mReqKey:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mUseAuth:Z

    .line 143
    return-void

    .line 132
    :cond_0
    iput-object v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    goto :goto_0

    .line 142
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

    .line 109
    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->_getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-byte v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mRetryCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 118
    iget-byte v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mMaxRetries:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mResponseLevel:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mOffset:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mReqKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mUseAuth:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    return-void

    .line 113
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public canUseMasterCloud()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public abstract createResponse(I[B)Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    const-string v0, "com.motorola.blur.service.mmapiws.request"

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getBodySize()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    return-object v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 212
    .local v0, "reqEntity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 213
    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mErrorMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->_getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mErrorMsg:Ljava/lang/String;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mErrorMsg:Ljava/lang/String;

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
    .line 338
    sget-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->DEFAULT_HDRS:Ljava/util/List;

    return-object v0
.end method

.method public getHttpRequestType()Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mHttpRequestType:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    return-object v0
.end method

.method protected getMMApiRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMMApiRootUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "serverBaseUrl"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "url":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->getMMApiRootUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->getResource()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "resource":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 260
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMessageFormat()Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mOffset:I

    return v0
.end method

.method public getReqKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mReqKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseLevel()Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mResponseLevel:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$ResponseLevel;

    return-object v0
.end method

.method protected abstract getRootUrl()Ljava/lang/String;
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "serverBaseUrl"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "loadBalancerValue"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "url":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->useGlobalProvisioning()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    const-string v1, "?appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "MMApiWSRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUrl() returning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

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
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public maxReadSizeLimit()I
    .locals 1

    .prologue
    .line 461
    const v0, 0x7fffffff

    return v0
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mOffset:I

    .line 385
    return-void
.end method

.method public setReqKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqKey"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mReqKey:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public shouldRetry()Z
    .locals 2

    .prologue
    .line 348
    iget-byte v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mMaxRetries:B

    if-ltz v0, :cond_0

    iget-byte v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mRetryCount:B

    iget-byte v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mMaxRetries:B

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
    .line 288
    const-string v3, ""

    .line 290
    .local v3, "ret":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    array-length v4, v4

    if-lez v4, :cond_0

    .line 292
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 294
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    iget-object v4, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mData:[B

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 295
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 296
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/motorola/blur/service/blur/SRPUtil;->tob64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 301
    .end local v0    # "bytes":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    return-object v3

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "MMApiWSRequest"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMApiWSRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->getRootUrl()Ljava/lang/String;

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
    .line 352
    iget-byte v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mRetryCount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mRetryCount:B

    .line 353
    return-void
.end method

.method public useAuth()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mUseAuth:Z

    return v0
.end method

.method public useGlobalProvisioning()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mUseGlobalProvisioning:Z

    return v0
.end method

.method public useOAuth()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->mUseOAuth:Z

    return v0
.end method
