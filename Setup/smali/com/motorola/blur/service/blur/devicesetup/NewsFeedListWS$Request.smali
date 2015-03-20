.class public Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "NewsFeedListWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS;
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
            "Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final ID:Ljava/lang/String; = "newssetup/1/newsfeedlist"

.field private static final MY_URL:Ljava/lang/String; = "/ws/newssetup/1/newsfeedlist"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "listType"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 79
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    .line 80
    .local v0, "req":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->setVersion(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->setType(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    .line 84
    :cond_0
    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->setCompressionType(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    .line 85
    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 86
    return-void
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 90
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/NewsFeedListWS$Response;-><init>(I[B)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "com.motorola.blur.service.ws.request.aidl"

    return-object v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "/ws/newssetup/1/newsfeedlist"

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "newssetup/1/newsfeedlist"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    return-void
.end method
