.class public Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "NewsFeedListWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.newsfeedlist.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "NewsFeedListWS.Resp"


# instance fields
.field private mCompressedFeedList:Lcom/google/protobuf/ByteString;

.field private mCompressionType:Ljava/lang/String;

.field private mFeedList:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

.field private mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 108
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mTypeList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mFeedList:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 110
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mCompressionType:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mCompressedFeedList:Lcom/google/protobuf/ByteString;

    .line 145
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 108
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mTypeList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mFeedList:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 110
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mCompressionType:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mCompressedFeedList:Lcom/google/protobuf/ByteString;

    .line 125
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 126
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->expand()V

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 7

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v4

    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v4, v5, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v4, :cond_0

    .line 153
    :try_start_0
    iget-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v4}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v3

    .line 155
    .local v3, "resp":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-virtual {v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getVersion()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 156
    const-string v4, "NewsFeedListWS.Resp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got back wrong version in response, expecting: 1 got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v4, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    invoke-direct {v4}, Lcom/motorola/blur/service/blur/ProtocolErrorException;-><init>()V

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 159
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v3    # "resp":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    :catch_0
    move-exception v2

    .line 194
    .local v2, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 195
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 163
    .end local v2    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v3    # "resp":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasError()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 164
    invoke-virtual {v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    move-result-object v1

    .line 165
    .local v1, "err":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 167
    sget-object v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->BAD_REQUEST:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    if-ne v4, v1, :cond_3

    .line 168
    const-string v4, "NewsFeedListWS.Resp"

    const-string v5, "bad request - should never happen!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 170
    :cond_3
    sget-object v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    if-ne v4, v1, :cond_4

    .line 171
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 172
    :cond_4
    sget-object v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    if-ne v4, v1, :cond_0

    .line 173
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceDownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 179
    .end local v1    # "err":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    :cond_5
    invoke-virtual {v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getData()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    .line 181
    .local v0, "d":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getTypeList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mTypeList:Ljava/util/List;

    .line 182
    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressionType()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 183
    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getCompressionType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mCompressionType:Ljava/lang/String;

    .line 185
    :cond_6
    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasFeedList()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 186
    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getFeedList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mFeedList:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 188
    :cond_7
    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressedFeedList()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getCompressedFeedList()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mCompressedFeedList:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newsfeedlist.resp"

    return-object v0
.end method

.method public getCompressedFeedList()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mCompressedFeedList:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCompressionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mCompressionType:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mFeedList:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;->mTypeList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    return-void
.end method
