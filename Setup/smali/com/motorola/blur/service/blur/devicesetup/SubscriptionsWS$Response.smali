.class public Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "SubscriptionsWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.subscriptions.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SubsWS.Resp"


# instance fields
.field private mErrorDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mSubError:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BLcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p3, "type"    # Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 152
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mSubscriptions:Ljava/util/List;

    .line 153
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mErrorDetails:Ljava/util/List;

    .line 154
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mSubError:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 191
    iput-object p3, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    .line 192
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 152
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mSubscriptions:Ljava/util/List;

    .line 153
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mErrorDetails:Ljava/util/List;

    .line 154
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mSubError:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 169
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    .line 171
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->expand()V

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$1;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 5

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v2, v3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v2, :cond_0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v1

    .line 202
    .local v1, "resp":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 203
    const-string v2, "SubsWS.Resp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got back wrong version in response, expecting: 1 got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v2, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    invoke-direct {v2}, Lcom/motorola/blur/service/blur/ProtocolErrorException;-><init>()V

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 206
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v1    # "resp":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 225
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 210
    .end local v0    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v1    # "resp":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mSubError:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 212
    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mSubError:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 213
    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 216
    :cond_3
    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasSubList()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getSubList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->getSubscriptionList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mSubscriptions:Ljava/util/List;

    .line 219
    :cond_4
    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasErrorDetailList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getErrorDetailList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->getErrorDetailList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mErrorDetails:Ljava/util/List;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "com.motorola.blur.service.blur.devicesetup.subscriptions.resp"

    return-object v0
.end method

.method public getErrorDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mErrorDetails:Ljava/util/List;

    return-object v0
.end method

.method public getSubError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mSubError:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    return-object v0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mSubscriptions:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    return-void
.end method
