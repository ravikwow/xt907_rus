.class public abstract Lcom/motorola/blur/service/blur/WSResponse;
.super Ljava/lang/Object;
.source "WSResponse.java"


# static fields
.field public static final KEY_RESPONSE_DATA:Ljava/lang/String; = "com.motorola.blur.service.ws.key.responsedata"

.field private static final LOG_TAG:Ljava/lang/String; = "WSResponse"


# instance fields
.field protected mAppError:I

.field protected mData:[B

.field protected mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

.field protected mErrorMsg:Ljava/lang/String;

.field protected mException:Ljava/lang/Exception;

.field protected mIntentCategory:Ljava/lang/String;

.field protected mOffset:I

.field protected mReqKey:Ljava/lang/String;

.field protected mStatusCode:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 40
    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 41
    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mOffset:I

    .line 43
    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mReqKey:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    .line 63
    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    .line 64
    return-void
.end method

.method protected constructor <init>(I[B)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 40
    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 41
    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mOffset:I

    .line 43
    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mReqKey:Ljava/lang/String;

    .line 48
    iput p1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    .line 49
    iput-object p2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    .line 51
    const/16 v2, 0x190

    iget v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v2, :cond_0

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v2}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->parseFrom([B)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    .line 54
    .local v0, "apperr":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
    invoke-virtual {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->getErrorCode()I

    move-result v2

    iput v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mAppError:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "apperr":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "WSResponse"

    const-string v3, "WSResponse(): got exception parsing app error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected _getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 104
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    invoke-static {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator;->toErrorCode(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator;->toErrorCode(Ljava/lang/Exception;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method protected _getErrorMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    if-eqz v0, :cond_0

    const/16 v0, 0x193

    iget v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_parseErrorFromService()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 116
    :cond_0
    const/16 v0, 0x1f4

    iget v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 119
    :cond_1
    const/16 v0, 0x190

    iget v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v0, :cond_2

    .line 120
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mAppError:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_2
    const/16 v0, 0x1f6

    iget v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v0, :cond_3

    .line 122
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _parseErrorFromService()Ljava/lang/String;
    .locals 7

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, "ret":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-nez v4, :cond_0

    move-object v3, v2

    .line 145
    .end local v2    # "ret":Ljava/lang/String;
    .local v3, "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 138
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->parseFrom([B)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    .line 139
    .local v0, "err":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-virtual {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->getType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "err":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    :goto_1
    move-object v3, v2

    .line 145
    .end local v2    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v4, "WSResponse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_parseErrorFromService(): got exception trying to parse error, ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected _readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "dataLen":I
    if-eqz v0, :cond_0

    .line 86
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    .line 87
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 91
    :goto_0
    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->fromValue(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mOffset:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mReqKey:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mIntentCategory:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mAppError:I

    .line 98
    return-void

    .line 89
    :cond_0
    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    goto :goto_0
.end method

.method protected _writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mReqKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mIntentCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mAppError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public checkBodyHash(Ljava/lang/String;)Z
    .locals 7
    .param p1, "payloadHash"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v4, 0x1

    .line 160
    .local v4, "ret":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 162
    iget-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v5, :cond_0

    .line 165
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 166
    .local v3, "messageDigest":Ljava/security/MessageDigest;
    iget-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 168
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/motorola/blur/service/blur/SRPUtil;->tob64([B)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "hash":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    const-string v5, "WSResponse"

    const-string v6, "body hash doesn\'t match!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    const/4 v4, 0x0

    .line 179
    .end local v0    # "bytes":[B
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "messageDigest":Ljava/security/MessageDigest;
    .end local v4    # "ret":Z
    :cond_0
    :goto_0
    return v4

    .line 173
    .restart local v4    # "ret":Z
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "WSResponse"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract getAction()Ljava/lang/String;
.end method

.method public getAppError()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mAppError:I

    return v0
.end method

.method public getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/WSResponse;->setError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mIntentCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mOffset:I

    return v0
.end method

.method public getReqKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mReqKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mStatusCode:I

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V
    .locals 0
    .param p1, "error"    # Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 197
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 187
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 188
    iget-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 190
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 191
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 193
    :cond_0
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mOffset:I

    .line 255
    return-void
.end method

.method public setReqKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqKey"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mReqKey:Ljava/lang/String;

    .line 267
    return-void
.end method
