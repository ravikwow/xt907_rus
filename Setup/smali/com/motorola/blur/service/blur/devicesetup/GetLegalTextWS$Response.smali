.class public Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "GetLegalTextWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.getlegaltext.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 176
    iput-object p3, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->mType:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 154
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->mType:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->expand()V

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$1;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 5

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 185
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->parseFrom([B)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v2

    .line 187
    .local v2, "resp":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-virtual {v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    invoke-virtual {v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getError()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    move-result-object v0

    .line 190
    .local v0, "err":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 191
    sget-object v3, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;->NOT_FOUND:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    if-ne v3, v0, :cond_2

    .line 192
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NotFoundError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v0    # "err":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    .end local v2    # "resp":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 206
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 193
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "err":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    .restart local v2    # "resp":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    if-ne v3, v0, :cond_3

    .line 194
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 195
    :cond_3
    sget-object v3, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;->BAD_PARAM:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    if-ne v3, v0, :cond_0

    .line 196
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 202
    .end local v0    # "err":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    :cond_4
    invoke-virtual {v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasText()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getText()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->mText:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "com.motorola.blur.service.blur.devicesetup.getlegaltext.resp"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return-void
.end method
