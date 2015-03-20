.class public Lcom/motorola/blur/service/blur/ErrorTranslator;
.super Ljava/lang/Object;
.source "ErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;,
        Lcom/motorola/blur/service/blur/ErrorTranslator$HTTP_STATUS_CODES;
    }
.end annotation


# static fields
.field private static final EXCEPTION_TO_CODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    .line 87
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ProtocolError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/io/UnsupportedEncodingException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Lorg/apache/http/conn/ConnectTimeoutException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceDownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Lorg/apache/http/conn/HttpHostConnectException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceDownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/net/UnknownHostException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceDownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/io/IOException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->IOError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/net/SocketTimeoutException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SocketTimeoutError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/lang/NullPointerException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NoServerResponseError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/io/UnsupportedEncodingException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ProtocolError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Lcom/motorola/blur/service/blur/BlurOAuthException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->OAuthError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/io/FileNotFoundException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NotFoundError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/CancellationException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->CancelledError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Lcom/motorola/blur/service/blur/BlurBadSignatureException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SignatureMismatch:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljavax/net/ssl/SSLException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SSLError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/net/SocketException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->IOError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Ljava/security/InvalidParameterException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    const-class v1, Lcom/motorola/blur/service/blur/BlurIllegalLengthException;

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->IllegalLengthError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static toErrorCode(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 3
    .param p0, "statusCode"    # I

    .prologue
    .line 119
    sparse-switch p0, :sswitch_data_0

    .line 135
    const-string v0, "ErrorTranslator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown error code mapping for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    :goto_0
    return-object v0

    .line 121
    :sswitch_0
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 123
    :sswitch_1
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ForbiddenError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 125
    :sswitch_2
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->BadRequestError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 127
    :sswitch_3
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 129
    :sswitch_4
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->BadGatewayError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 131
    :sswitch_5
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceUnavailableError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 133
    :sswitch_6
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->TooLongError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xca -> :sswitch_6
        0x190 -> :sswitch_2
        0x193 -> :sswitch_1
        0x1f4 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x1f7 -> :sswitch_5
    .end sparse-switch
.end method

.method public static toErrorCode(Ljava/lang/Exception;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 4
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 109
    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator;->EXCEPTION_TO_CODE:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 110
    .local v0, "code":Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    if-nez v0, :cond_0

    .line 111
    const-string v1, "ErrorTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown exception mapping for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 114
    .end local v0    # "code":Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :cond_0
    return-object v0
.end method
