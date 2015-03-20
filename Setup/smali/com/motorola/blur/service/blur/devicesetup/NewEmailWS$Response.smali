.class public Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "NewEmailWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.newemail.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "NewEmailWS.Response"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 134
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;->expand()V

    .line 135
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
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$1;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 143
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v2

    .line 145
    .local v2, "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    move-result-object v0

    .line 147
    .local v0, "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 149
    sget-object v3, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$1;->$SwitchMap$com$motorola$blur$service$accounts$protocol$AccountsProtocol$ResetEmailAndPasswordResponse$Error:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0    # "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    .end local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 170
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 154
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    .restart local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    :pswitch_1
    :try_start_1
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceDownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 157
    :pswitch_2
    const-string v3, "NewEmailWS.Response"

    const-string v4, "current email doesn\'t exist!  Should never happen!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NotFoundError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 162
    :pswitch_3
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AlreadyExists:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newemail.resp"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    return-void
.end method
