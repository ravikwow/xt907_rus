.class public Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "RemoveProviderCredentialsWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.removeprovidercredentials.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "RmProvCredWS.Resp"


# instance fields
.field private mId:J

.field private mResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BJLjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p3, "id"    # J
    .param p5, "intentCategory"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 152
    iput-wide p3, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mId:J

    .line 153
    iput-object p5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mIntentCategory:Ljava/lang/String;

    .line 154
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 130
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mId:J

    .line 132
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->expand()V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private expand()V
    .locals 6

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 162
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->parseFrom([B)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    .line 164
    iget-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    invoke-virtual {v3}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 165
    const-string v3, "RmProvCredWS.Resp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got back wrong version in response, expecting: 1 got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    invoke-virtual {v5}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v3, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    invoke-direct {v3}, Lcom/motorola/blur/service/blur/ProtocolErrorException;-><init>()V

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 168
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 196
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 172
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    invoke-virtual {v3}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasSnpExtendedError()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    invoke-virtual {v3}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getSnpExtendedError()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->valueOf(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v2

    .line 174
    .local v2, "snpErr":Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    sget-object v3, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SUCCESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    if-eq v2, v3, :cond_0

    .line 175
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 176
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 178
    .end local v2    # "snpErr":Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    :cond_3
    iget-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    invoke-virtual {v3}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    invoke-virtual {v3}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;->getType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;

    move-result-object v0

    .line 180
    .local v0, "err":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 182
    sget-object v3, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;

    if-ne v3, v0, :cond_4

    .line 183
    const-string v3, "RmProvCredWS.Resp"

    const-string v4, "invalid arguments - should never happen!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 185
    :cond_4
    sget-object v3, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;

    if-ne v3, v0, :cond_5

    .line 186
    const-string v3, "RmProvCredWS.Resp"

    const-string v4, "request parse error - should never happen!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 188
    :cond_5
    sget-object v3, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;->INTERNAL_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;

    if-ne v3, v0, :cond_6

    .line 189
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 190
    :cond_6
    sget-object v3, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;->SNP_EXTENDED_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error$ErrorType;

    if-ne v3, v0, :cond_0

    .line 191
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidCredsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "com.motorola.blur.service.blur.devicesetup.removeprovidercredentials.resp"

    return-object v0
.end method

.method public getReqId()J
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mId:J

    return-wide v0
.end method

.method public getSNPResponse()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    iget-wide v0, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    return-void
.end method
