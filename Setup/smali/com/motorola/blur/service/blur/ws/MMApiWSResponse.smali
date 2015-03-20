.class public abstract Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;
.super Ljava/lang/Object;
.source "MMApiWSResponse.java"


# static fields
.field public static final KEY_RESPONSE_DATA:Ljava/lang/String; = "com.motorola.blur.service.ws.key.responsedata"

.field private static final LOG_TAG:Ljava/lang/String; = "MMApiWSResponse"


# instance fields
.field protected mAppError:I

.field protected mData:[B

.field protected mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

.field protected mErrorMsg:Ljava/lang/String;

.field protected mErrorText:Ljava/lang/String;

.field protected mException:Ljava/lang/Exception;

.field protected mIntentCategory:Ljava/lang/String;

.field protected mIsOk:Z

.field protected mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

.field protected mOffset:I

.field protected mReqKey:Ljava/lang/String;

.field protected mStatusCode:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    .line 47
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 48
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorMsg:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mOffset:I

    .line 52
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mReqKey:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;->JSON:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    .line 73
    iput v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    .line 74
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    .line 75
    return-void
.end method

.method protected constructor <init>(I[B)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    .line 47
    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 48
    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorMsg:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mOffset:I

    .line 52
    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mReqKey:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;->JSON:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    .line 62
    iput p1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    .line 63
    iput-object p2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    .line 64
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mIsOk:Z

    .line 65
    return-void
.end method

.method private _getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->_parseErrorFromGlobalService()Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected _getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 118
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    invoke-static {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator;->toErrorCode(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator;->toErrorCode(Ljava/lang/Exception;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_1
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method protected _getErrorMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    const/16 v0, 0x193

    iget v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->_parseErrorFromGlobalService()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 132
    :cond_0
    const/16 v0, 0x1f4

    iget v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 136
    :cond_1
    const/16 v0, 0x190

    iget v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    if-eqz v0, :cond_2

    .line 138
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mAppError:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_2
    const/16 v0, 0x1f6

    iget v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    if-eqz v0, :cond_3

    .line 141
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _parseErrorFromGlobalService()Ljava/lang/String;
    .locals 10

    .prologue
    .line 158
    const/4 v5, 0x0

    .line 160
    .local v5, "ret":Ljava/lang/String;
    iget-object v7, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    if-nez v7, :cond_0

    move-object v6, v5

    .line 194
    .end local v5    # "ret":Ljava/lang/String;
    .local v6, "ret":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 163
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    sget-object v8, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;->JSON:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    if-ne v7, v8, :cond_2

    .line 165
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 166
    .local v4, "respData":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, "rdata":Lorg/json/JSONObject;
    const-string v7, "error"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    const-string v7, "error_text"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "rdata":Lorg/json/JSONObject;
    .end local v4    # "respData":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v6, v5

    .line 194
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v6    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "ex":Lorg/json/JSONException;
    const-string v7, "MMApiWSResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_parseErrorFromMMService(): got JSON exception trying to parse error for data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    .end local v2    # "ex":Lorg/json/JSONException;
    :cond_2
    iget-object v7, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    sget-object v8, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;->GPB:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    if-ne v7, v8, :cond_1

    .line 176
    :try_start_1
    iget-object v7, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-static {v7}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->parseFrom([B)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v1

    .line 179
    .local v1, "errorResp":Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-virtual {v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getError()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    move-result-object v0

    .line 181
    .local v0, "error":Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-virtual {v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorText()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 184
    invoke-virtual {v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getErrorText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 186
    .end local v0    # "error":Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    .end local v1    # "errorResp":Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    :catch_1
    move-exception v2

    .line 187
    .local v2, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v7, "MMApiWSResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_parseErrorFromMMService(): got GPB exception trying to parse error for data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected _readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, "dataLen":I
    if-eqz v0, :cond_0

    .line 100
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    .line 101
    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 105
    :goto_0
    iput-object v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->fromValue(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorMsg:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mOffset:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mReqKey:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mIntentCategory:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mAppError:I

    .line 112
    return-void

    .line 103
    :cond_0
    iput-object v2, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    goto :goto_0
.end method

.method protected _writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mReqKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mIntentCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mAppError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public checkBodyHash(Ljava/lang/String;)Z
    .locals 7
    .param p1, "payloadHash"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v4, 0x1

    .line 214
    .local v4, "ret":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 216
    iget-object v5, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    if-eqz v5, :cond_0

    .line 219
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 220
    .local v3, "messageDigest":Ljava/security/MessageDigest;
    iget-object v5, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 221
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 222
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/motorola/blur/service/blur/SRPUtil;->tob64([B)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "hash":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 224
    const-string v5, "MMApiWSResponse"

    const-string v6, "body hash doesn\'t match!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v4, 0x0

    .line 233
    .end local v0    # "bytes":[B
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "messageDigest":Ljava/security/MessageDigest;
    .end local v4    # "ret":Z
    :cond_0
    :goto_0
    return v4

    .line 227
    .restart local v4    # "ret":Z
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "MMApiWSResponse"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract getAction()Ljava/lang/String;
.end method

.method public getAppError()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mAppError:I

    return v0
.end method

.method public getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->setError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->_getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorMsg:Ljava/lang/String;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorMsg:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->_getErrorText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getIntentCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mIntentCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageFormat(Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;)Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;
    .locals 1
    .param p1, "theFormat"    # Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mOffset:I

    return v0
.end method

.method public getRawMsgData()[B
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    return-object v0
.end method

.method public getReqKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mReqKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mStatusCode:I

    return v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mIsOk:Z

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V
    .locals 1
    .param p1, "error"    # Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 251
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq p1, v0, :cond_0

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mIsOk:Z

    .line 253
    :cond_0
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 241
    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    .line 242
    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 244
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 245
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorMsg:Ljava/lang/String;

    .line 247
    :cond_0
    return-void
.end method

.method public setMessageFormat(Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;)V
    .locals 0
    .param p1, "theFormat"    # Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mMessageFormat:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    .line 201
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mOffset:I

    .line 351
    return-void
.end method

.method public setReqKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqKey"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mReqKey:Ljava/lang/String;

    .line 363
    return-void
.end method
