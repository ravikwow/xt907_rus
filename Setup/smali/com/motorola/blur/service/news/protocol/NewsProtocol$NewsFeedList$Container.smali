.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Container"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    }
.end annotation


# static fields
.field public static final BANNERURL_FIELD_NUMBER:I = 0x6

.field public static final CONTAINER_FIELD_NUMBER:I = 0x4

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final DISPLAYNAME_FIELD_NUMBER:I = 0x2

.field public static final FAVICONURL_FIELD_NUMBER:I = 0x7

.field public static final FEEDDESC_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;


# instance fields
.field private bannerUrl_:Ljava/lang/String;

.field private container_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;",
            ">;"
        }
    .end annotation
.end field

.field private description_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private favIconUrl_:Ljava/lang/String;

.field private feedDesc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;",
            ">;"
        }
    .end annotation
.end field

.field private hasBannerUrl:Z

.field private hasDescription:Z

.field private hasDisplayName:Z

.field private hasFavIconUrl:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2069
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .line 2070
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 2071
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->initFields()V

    .line 2072
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1270
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1649
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->name_:Ljava/lang/String;

    .line 1656
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->displayName_:Ljava/lang/String;

    .line 1663
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->description_:Ljava/lang/String;

    .line 1669
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;

    .line 1681
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;

    .line 1694
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->bannerUrl_:Ljava/lang/String;

    .line 1701
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->favIconUrl_:Ljava/lang/String;

    .line 1271
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->initFields()V

    .line 1272
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 1267
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1273
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1649
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->name_:Ljava/lang/String;

    .line 1656
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->displayName_:Ljava/lang/String;

    .line 1663
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->description_:Ljava/lang/String;

    .line 1669
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;

    .line 1681
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;

    .line 1694
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->bannerUrl_:Ljava/lang/String;

    .line 1701
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->favIconUrl_:Ljava/lang/String;

    .line 1273
    return-void
.end method

.method static synthetic access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Z

    .prologue
    .line 1267
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasName:Z

    return p1
.end method

.method static synthetic access$7002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Z

    .prologue
    .line 1267
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDisplayName:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->displayName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Z

    .prologue
    .line 1267
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDescription:Z

    return p1
.end method

.method static synthetic access$7402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->description_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Z

    .prologue
    .line 1267
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasBannerUrl:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->bannerUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Z

    .prologue
    .line 1267
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasFavIconUrl:Z

    return p1
.end method

.method static synthetic access$7802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->favIconUrl_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1

    .prologue
    .line 1277
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1286
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1706
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 1

    .prologue
    .line 1774
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6500()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .prologue
    .line 1777
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1743
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    .line 1744
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1745
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    .line 1747
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1754
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    .line 1755
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1756
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    .line 1758
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1710
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1716
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1764
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1770
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1732
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1738
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1721
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1727
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->bannerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    return-object v0
.end method

.method public getContainerCount()I
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContainerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1

    .prologue
    .line 1281
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getFavIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->favIconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedDesc(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    return-object v0
.end method

.method public getFeedDescCount()I
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeedDescList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBannerUrl()Z
    .locals 1

    .prologue
    .line 1695
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasBannerUrl:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 1664
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDescription:Z

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 1657
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDisplayName:Z

    return v0
.end method

.method public hasFavIconUrl()Z
    .locals 1

    .prologue
    .line 1702
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasFavIconUrl:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1650
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1291
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 1

    .prologue
    .line 1775
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 1

    .prologue
    .line 1779
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method
