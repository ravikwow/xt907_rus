.class public Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "NewNameWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewNameWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.newname.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "NewNameWS.Response"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Response;->expand()V

    .line 136
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 116
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Response;->expand()V

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$1;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewNameWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 6

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v2

    .line 146
    .local v2, "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 147
    const-string v3, "NewNameWS.Response"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got back wrong version in response, expecting: 1 got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v3, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    invoke-direct {v3}, Lcom/motorola/blur/service/blur/ProtocolErrorException;-><init>()V

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 150
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 169
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 154
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;

    move-result-object v0

    .line 156
    .local v0, "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 157
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;

    if-ne v3, v0, :cond_3

    .line 158
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 159
    :cond_3
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;

    if-ne v3, v0, :cond_4

    .line 160
    const-string v3, "NewNameWS.Response"

    const-string v4, "parse error - should never happen!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 162
    :cond_4
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;->INTERNAL_ERROR:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;

    if-ne v3, v0, :cond_0

    .line 163
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newname.resp"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    return-void
.end method
