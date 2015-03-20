.class public Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "ResetPasswordAltEmailWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.resetpasswordaltemail.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 100
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 101
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Response;->expand()V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$1;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordAltEmailWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 5

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v2

    .line 130
    .local v2, "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    move-result-object v0

    .line 132
    .local v0, "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 133
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    if-ne v3, v0, :cond_2

    .line 134
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v0    # "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    .end local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 135
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    .restart local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->INTERNAL_ERROR:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    if-ne v3, v0, :cond_3

    .line 136
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 137
    :cond_3
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->MAX_PASSWORD_RESETS_EXCEEDED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    if-ne v3, v0, :cond_4

    .line 138
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->TooManyError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 139
    :cond_4
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->INVALID_EMAIL:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    if-ne v3, v0, :cond_0

    .line 140
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidEmailError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "com.motorola.blur.service.blur.devicesetup.resetpasswordaltemail.resp"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    return-void
.end method
