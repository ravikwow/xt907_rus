.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeedDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    }
.end annotation


# static fields
.field public static final BLURFEEDID_FIELD_NUMBER:I = 0x6

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x4

.field public static final HTMLURL_FIELD_NUMBER:I = 0x3

.field public static final IMAGEURL_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final XMLURL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;


# instance fields
.field private blurFeedId_:Ljava/lang/String;

.field private description_:Ljava/lang/String;

.field private hasBlurFeedId:Z

.field private hasDescription:Z

.field private hasHtmlUrl:Z

.field private hasImageUrl:Z

.field private hasName:Z

.field private hasXmlUrl:Z

.field private htmlUrl_:Ljava/lang/String;

.field private imageUrl_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private xmlUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1638
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    .line 1639
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 1640
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->initFields()V

    .line 1641
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1297
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1324
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->name_:Ljava/lang/String;

    .line 1331
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->xmlUrl_:Ljava/lang/String;

    .line 1338
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->htmlUrl_:Ljava/lang/String;

    .line 1345
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->description_:Ljava/lang/String;

    .line 1352
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->imageUrl_:Ljava/lang/String;

    .line 1359
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->blurFeedId_:Ljava/lang/String;

    .line 1298
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->initFields()V

    .line 1299
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1324
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->name_:Ljava/lang/String;

    .line 1331
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->xmlUrl_:Ljava/lang/String;

    .line 1338
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->htmlUrl_:Ljava/lang/String;

    .line 1345
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->description_:Ljava/lang/String;

    .line 1352
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->imageUrl_:Ljava/lang/String;

    .line 1359
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->blurFeedId_:Ljava/lang/String;

    .line 1300
    return-void
.end method

.method static synthetic access$5202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 1294
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasName:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 1294
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasXmlUrl:Z

    return p1
.end method

.method static synthetic access$5502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->xmlUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 1294
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasHtmlUrl:Z

    return p1
.end method

.method static synthetic access$5702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->htmlUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 1294
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasDescription:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->description_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 1294
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasImageUrl:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->imageUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 1294
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasBlurFeedId:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->blurFeedId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1

    .prologue
    .line 1304
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1313
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_FeedDescription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1364
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 1

    .prologue
    .line 1432
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$5000()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    .prologue
    .line 1435
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1401
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    .line 1402
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1403
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    .line 1405
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1412
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    .line 1413
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1414
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    .line 1416
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1368
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1374
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1422
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1428
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1390
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1385
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlurFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->blurFeedId_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1

    .prologue
    .line 1308
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->htmlUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->xmlUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBlurFeedId()Z
    .locals 1

    .prologue
    .line 1360
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasBlurFeedId:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 1346
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasDescription:Z

    return v0
.end method

.method public hasHtmlUrl()Z
    .locals 1

    .prologue
    .line 1339
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasHtmlUrl:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 1353
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasImageUrl:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1325
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasName:Z

    return v0
.end method

.method public hasXmlUrl()Z
    .locals 1

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasXmlUrl:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1318
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_FeedDescription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 1

    .prologue
    .line 1433
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 1

    .prologue
    .line 1437
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method
