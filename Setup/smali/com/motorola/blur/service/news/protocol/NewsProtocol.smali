.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.super Ljava/lang/Object;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedEntries_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedEntries_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedEntry_Content_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedEntry_Content_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedEntry_Link_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedEntry_Link_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedEntry_Text_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedEntry_Text_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedInfoList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedInfoList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedListResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedListResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedListResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedList_Container_FeedDescription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedList_Container_FeedDescription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedList_Container_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedList_Container_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewsFeedList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewsFeedList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SubscriptionList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SubscriptionList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SubscriptionRequest_DeleteSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SubscriptionRequest_DeleteSubscriptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SubscriptionRequest_NewSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SubscriptionRequest_NewSubscriptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SubscriptionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SubscriptionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SubscriptionResponse_ErrorDetailList_ErrorDetail_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SubscriptionResponse_ErrorDetailList_ErrorDetail_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SubscriptionResponse_ErrorDetailList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SubscriptionResponse_ErrorDetailList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SubscriptionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SubscriptionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Subscription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7128
    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0013news_protocol.proto\"\u00f8\u0001\n\u0005Error\u0012\u0019\n\u0004type\u0018\u0001 \u0002(\u000e2\u000b.Error.Type\"\u00d3\u0001\n\u0004Type\u0012\u000f\n\u000bBAD_REQUEST\u0010\u0001\u0012\u0019\n\u0015INTERNAL_SERVER_ERROR\u0010\u0002\u0012\u0017\n\u0013SERVICE_UNAVAILABLE\u0010\u0003\u0012\u0010\n\u000cUNAUTHORIZED\u0010\u0004\u0012\r\n\tFORBIDDEN\u0010\u0005\u0012\r\n\tNOT_FOUND\u0010\u0006\u0012\u0013\n\u000fMULTIPLE_ERRORS\u0010\u0007\u0012\u000f\n\nOVER_LIMIT\u0010\u00c8\u0001\u0012\u0017\n\u0012ALREADY_SUBSCRIBED\u0010\u00c9\u0001\u0012\u0017\n\u0012UNSUPPORTED_FORMAT\u0010\u00ca\u0001\"_\n\u0013NewsFeedListRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004type\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008language\u0018\u0003 \u0001(\t\u0012\u0017\n\u000fcompressionType\u0018\u0004 \u0001(\t\"\u00d4\u0001\n\u0014NewsFeedListResponse\u0012\u000f\n\u0007ve"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "rsion\u0018\u0001 \u0002(\r\u0012\u0015\n\u0005error\u0018\u0002 \u0001(\u000b2\u0006.Error\u0012(\n\u0004data\u0018\u0003 \u0001(\u000b2\u001a.NewsFeedListResponse.Data\u001aj\n\u0004Data\u0012\u000c\n\u0004type\u0018\u0001 \u0003(\t\u0012\u001f\n\u0008feedList\u0018\u0002 \u0001(\u000b2\r.NewsFeedList\u0012\u0017\n\u000fcompressionType\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012compressedFeedList\u0018\u0004 \u0001(\u000c\"\u0092\u0004\n\u000cNewsFeedList\u0012\u0014\n\u000clastModified\u0018\u0001 \u0002(\u0003\u0012\u000c\n\u0004name\u0018\u0002 \u0002(\t\u0012\u0013\n\u000bdisplayName\u0018\u0003 \u0002(\t\u0012\u0013\n\u000bdescription\u0018\u0004 \u0002(\t\u0012\u0011\n\tbannerUrl\u0018\u0005 \u0001(\t\u0012\u0012\n\nfavIconUrl\u0018\u0006 \u0001(\t\u0012*\n\tcontainer\u0018\u0007 \u0003(\u000b2\u0017.NewsFeedList.Container\u0012\u0010\n\u0008isBundle\u0018\u0008 \u0001(\u0008\u001a\u00ce\u0002\n\tContainer\u0012\u000c\n\u0004na"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "me\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bdisplayName\u0018\u0002 \u0002(\t\u0012\u0013\n\u000bdescription\u0018\u0003 \u0001(\t\u0012*\n\tcontainer\u0018\u0004 \u0003(\u000b2\u0017.NewsFeedList.Container\u00129\n\u0008feedDesc\u0018\u0005 \u0003(\u000b2\'.NewsFeedList.Container.FeedDescription\u0012\u0011\n\tbannerUrl\u0018\u0006 \u0001(\t\u0012\u0012\n\nfavIconUrl\u0018\u0007 \u0001(\t\u001a{\n\u000fFeedDescription\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\u000e\n\u0006xmlUrl\u0018\u0002 \u0002(\t\u0012\u000f\n\u0007htmlUrl\u0018\u0003 \u0002(\t\u0012\u0013\n\u000bdescription\u0018\u0004 \u0001(\t\u0012\u0010\n\u0008imageUrl\u0018\u0005 \u0001(\t\u0012\u0012\n\nblurFeedId\u0018\u0006 \u0001(\t\"\u00ae\u0002\n\u0013SubscriptionRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\'\n\u0004type\u0018\u0002 \u0002(\u000e2\u0019.SubscriptionRequest.Type\u0012"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "6\n\u0007newSubs\u0018\u0003 \u0001(\u000b2%.SubscriptionRequest.NewSubscriptions\u0012<\n\ndeleteSubs\u0018\u0004 \u0001(\u000b2(.SubscriptionRequest.DeleteSubscriptions\u001a\u001f\n\u0010NewSubscriptions\u0012\u000b\n\u0003url\u0018\u0001 \u0003(\t\u001a)\n\u0013DeleteSubscriptions\u0012\u0012\n\nblurFeedId\u0018\u0001 \u0003(\u0003\"\u001b\n\u0004Type\u0012\u0007\n\u0003ADD\u0010\u0001\u0012\n\n\u0006DELETE\u0010\u0002\"\u00ba\u0002\n\u0014SubscriptionResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u0015\n\u0005error\u0018\u0002 \u0001(\u000b2\u0006.Error\u0012\"\n\u0007subList\u0018\u0003 \u0001(\u000b2\u0011.SubscriptionList\u0012>\n\u000ferrorDetailList\u0018\u0004 \u0001(\u000b2%.SubscriptionResponse.ErrorDetailList\u001a\u0095\u0001\n\u000fErrorDet"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ailList\u0012F\n\u000berrorDetail\u0018\u0001 \u0003(\u000b21.SubscriptionResponse.ErrorDetailList.ErrorDetail\u001a:\n\u000bErrorDetail\u0012\u000b\n\u0003url\u0018\u0001 \u0002(\t\u0012\u001e\n\terrorType\u0018\u0002 \u0002(\u000e2\u000b.Error.Type\"\u00bb\u0001\n\u000cNewsFeedInfo\u0012\u000e\n\u0006xmlUrl\u0018\u0001 \u0002(\t\u0012\u0012\n\nblurFeedId\u0018\u0002 \u0001(\u0003\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0004 \u0001(\t\u0012\u0010\n\u0008language\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008imageUrl\u0018\u0006 \u0001(\t\u0012\u000b\n\u0003ttl\u0018\u0007 \u0001(\u0005\u0012\u000c\n\u0004etag\u0018\u0008 \u0001(\t\u0012\u0014\n\u000clastModified\u0018\t \u0001(\t\u0012\u000f\n\u0007htmlUrl\u0018\n \u0001(\t\"/\n\u0010NewsFeedInfoList\u0012\u001b\n\u0004info\u0018\u0001 \u0003(\u000b2\r.NewsFeedInfo\"+\n\u000cSubscription\u0012\u001b\n\u0004in"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "fo\u0018\u0001 \u0002(\u000b2\r.NewsFeedInfo\"7\n\u0010SubscriptionList\u0012#\n\u000csubscription\u0018\u0001 \u0003(\u000b2\r.Subscription\"\u00b6\u0003\n\rNewsFeedEntry\u0012\u0012\n\nblurFeedId\u0018\u0001 \u0002(\u0003\u0012\u000f\n\u0007entryId\u0018\u0002 \u0002(\t\u0012\"\n\u0005title\u0018\u0003 \u0002(\u000b2\u0013.NewsFeedEntry.Text\u0012\u0011\n\ttimeStamp\u0018\u0004 \u0002(\u0003\u0012\'\n\u0007content\u0018\u0005 \u0001(\u000b2\u0016.NewsFeedEntry.Content\u0012!\n\u0004link\u0018\u0006 \u0003(\u000b2\u0013.NewsFeedEntry.Link\u0012$\n\u0007summary\u0018\u0007 \u0001(\u000b2\u0013.NewsFeedEntry.Text\u001a\"\n\u0004Text\u0012\u000c\n\u0004data\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004type\u0018\u0002 \u0001(\t\u001a2\n\u0007Content\u0012\u000c\n\u0004data\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003src\u0018\u0003 \u0001(\t\u001a\u007f\n\u0004Link"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0012\u000c\n\u0004href\u0018\u0001 \u0002(\t\u0012\u000b\n\u0003rel\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008hreflang\u0018\u0004 \u0001(\t\u0012\r\n\u0005title\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006length\u0018\u0006 \u0001(\t\u0012\r\n\u0005width\u0018\u0007 \u0001(\u0005\u0012\u000e\n\u0006height\u0018\u0008 \u0001(\u0005\"0\n\u000fNewsFeedEntries\u0012\u001d\n\u0005entry\u0018\u0001 \u0003(\u000b2\u000e.NewsFeedEntryB+\n\'com.motorola.blur.service.news.protocolH\u0002"

    aput-object v3, v1, v2

    .line 7196
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;-><init>()V

    .line 7380
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 7384
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_NewSubscriptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_NewSubscriptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$10500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_DeleteSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_DeleteSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$10600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_DeleteSubscriptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_DeleteSubscriptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$12200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$12300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$12400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$12500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$12600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_ErrorDetail_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_ErrorDetail_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$12700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_ErrorDetail_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_ErrorDetail_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$15000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$15100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$15102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$17500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfoList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$17502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfoList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$17600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfoList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfoList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$18100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$18102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$18200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Subscription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$18202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Subscription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$18800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$18802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$18900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$18902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$19400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$19402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$19500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$19502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$19600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Text_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$19602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Text_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$19700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Text_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$19702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Text_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$20500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Content_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$20502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Content_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$20600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Content_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$20602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Content_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$21600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Link_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$21602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Link_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$21700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Link_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$21702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Link_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$25300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntries_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$25302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntries_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$25400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntries_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$25402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntries_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$25902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$4300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_FeedDescription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_FeedDescription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_FeedDescription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_FeedDescription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_NewSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_NewSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 7123
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 7386
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
