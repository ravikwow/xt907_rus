.class public Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "EmailProviderWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.emailprovider.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "EmailProvWS.Resp"


# instance fields
.field private mServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->mServerList:Ljava/util/List;

    .line 153
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->mServerList:Ljava/util/List;

    .line 133
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 134
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->expand()V

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 6

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 161
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->parseFrom([B)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v2

    .line 163
    .local v2, "resp":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    invoke-virtual {v2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 164
    const-string v3, "EmailProvWS.Resp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got back wrong version in response, expecting: 1 got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v3, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    invoke-direct {v3}, Lcom/motorola/blur/service/blur/ProtocolErrorException;-><init>()V

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 167
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v2    # "resp":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 191
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 171
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v2    # "resp":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    invoke-virtual {v2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getError()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;->getType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$ErrorType;

    move-result-object v0

    .line 173
    .local v0, "err":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$ErrorType;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 174
    sget-object v3, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$ErrorType;->INTERNAL_ERROR:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$ErrorType;

    if-ne v3, v0, :cond_3

    .line 175
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 176
    :cond_3
    sget-object v3, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$ErrorType;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$ErrorType;

    if-ne v3, v0, :cond_4

    .line 177
    const-string v3, "EmailProvWS.Resp"

    const-string v4, "invalid arguments - should never happen!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 179
    :cond_4
    sget-object v3, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$ErrorType;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$ErrorType;

    if-ne v3, v0, :cond_0

    .line 180
    const-string v3, "EmailProvWS.Resp"

    const-string v4, "parse error - should never happen!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 187
    .end local v0    # "err":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$ErrorType;
    :cond_5
    invoke-virtual {v2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getServersList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->mServerList:Ljava/util/List;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "com.motorola.blur.service.blur.devicesetup.emailprovider.resp"

    return-object v0
.end method

.method public getServerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->mServerList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    return-void
.end method
