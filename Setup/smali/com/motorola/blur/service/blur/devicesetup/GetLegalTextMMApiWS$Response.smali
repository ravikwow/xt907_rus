.class public Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;
.super Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;
.source "GetLegalTextMMApiWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS;
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
            "Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "GetLegalTextMMApiWS.Response"


# instance fields
.field private mText:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;-><init>(I[B)V

    .line 180
    iput-object p3, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;->mType:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;-><init>()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;->mType:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;->expand()V

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;-><init>(Landroid/os/Parcel;)V

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
    .locals 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->parseFrom([B)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v2

    .line 191
    .local v2, "resp":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-virtual {v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    invoke-virtual {v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getError()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    move-result-object v0

    .line 194
    .local v0, "err":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mErrorMsg:Ljava/lang/String;

    .line 195
    sget-object v3, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;->NOT_FOUND:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    if-ne v3, v0, :cond_2

    .line 196
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NotFoundError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v0    # "err":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    .end local v2    # "resp":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mException:Ljava/lang/Exception;

    .line 210
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 197
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "err":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    .restart local v2    # "resp":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    if-ne v3, v0, :cond_3

    .line 198
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 199
    :cond_3
    sget-object v3, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;->BAD_PARAM:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    if-ne v3, v0, :cond_0

    .line 200
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 206
    .end local v0    # "err":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    :cond_4
    invoke-virtual {v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasText()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getText()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;->mText:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    const-string v0, "GetLegalTextMMApiWS.Response"

    const-string v1, "action=com.motorola.blur.service.blur.devicesetup.getlegaltext.resp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "com.motorola.blur.service.blur.devicesetup.getlegaltext.resp"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextMMApiWS$Response;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return-void
.end method
