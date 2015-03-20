.class public Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "ResetPasswordWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.resetpassword.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ResetPasswordWS.Resp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 178
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 158
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 159
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;->expand()V

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 6

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v2

    .line 188
    .local v2, "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 189
    const-string v3, "ResetPasswordWS.Resp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got back wrong version in response, expecting: 1 got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v3, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    invoke-direct {v3}, Lcom/motorola/blur/service/blur/ProtocolErrorException;-><init>()V

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 192
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    :catch_0
    move-exception v1

    .line 211
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 212
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 196
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    move-result-object v0

    .line 198
    .local v0, "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 199
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    if-ne v3, v0, :cond_3

    .line 200
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 201
    :cond_3
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->INTERNAL_ERROR:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    if-ne v3, v0, :cond_4

    .line 202
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 203
    :cond_4
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->MAX_PASSWORD_RESETS_EXCEEDED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    if-ne v3, v0, :cond_5

    .line 204
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->TooManyError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 205
    :cond_5
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->INVALID_EMAIL:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    if-ne v3, v0, :cond_0

    .line 206
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountNotFound:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "com.motorola.blur.service.blur.devicesetup.resetpassword.resp"

    return-object v0
.end method

.method public setError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V
    .locals 2
    .param p1, "error"    # Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .prologue
    .line 219
    sget-object v0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    invoke-super {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->setError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    .line 226
    :goto_0
    return-void

    .line 221
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountNotFound:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-super {p0, v0}, Lcom/motorola/blur/service/blur/WSResponse;->setError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    return-void
.end method
