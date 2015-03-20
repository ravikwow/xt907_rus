.class public Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "SubscriptionsWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "newssetup/1/subscriptions"

.field private static final MY_URL:Ljava/lang/String; = "/ws/newssetup/1/subscriptions"


# instance fields
.field private mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "setup"    # Z

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 101
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 102
    if-eqz p1, :cond_1

    sget-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->SETUP:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    :goto_1
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    .line 103
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->GET:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    goto :goto_1
.end method

.method public constructor <init>([J)V
    .locals 5
    .param p1, "ids"    # [J

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 123
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v2

    .line 124
    .local v2, "req":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->setVersion(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    .line 125
    sget-object v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->DELETE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    invoke-virtual {v2, v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->setType(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    .line 126
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    .line 128
    .local v0, "dels":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 129
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->addBlurFeedId(J)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v2, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->setDeleteSubs(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    .line 133
    invoke-virtual {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 134
    sget-object v3, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->DEL:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    .line 135
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 107
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v1

    .line 108
    .local v1, "req":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->setVersion(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    .line 109
    sget-object v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->ADD:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    invoke-virtual {v1, v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->setType(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    .line 110
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v2

    .line 112
    .local v2, "subs":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 113
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->addUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->setNewSubs(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    .line 117
    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 118
    sget-object v3, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->ADD:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    .line 119
    return-void
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 139
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    invoke-direct {v0, p1, p2, v1}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Response;-><init>(I[BLcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "/ws/newssetup/1/subscriptions"

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "serverBaseUrl"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "loadBalancerValue"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/motorola/blur/service/blur/WSRequest;->getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "url":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->SETUP:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    if-ne v1, v2, :cond_1

    .line 91
    const-string v1, "&default=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :cond_1
    sget-object v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->DEL:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    if-ne v1, v2, :cond_0

    .line 93
    const-string v1, "&action=delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "newssetup/1/subscriptions"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Request;->mType:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void
.end method
