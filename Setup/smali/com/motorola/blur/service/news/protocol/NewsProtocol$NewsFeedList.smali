.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewsFeedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    }
.end annotation


# static fields
.field public static final BANNERURL_FIELD_NUMBER:I = 0x5

.field public static final CONTAINER_FIELD_NUMBER:I = 0x7

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x4

.field public static final DISPLAYNAME_FIELD_NUMBER:I = 0x3

.field public static final FAVICONURL_FIELD_NUMBER:I = 0x6

.field public static final ISBUNDLE_FIELD_NUMBER:I = 0x8

.field public static final LASTMODIFIED_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;


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

.field private hasBannerUrl:Z

.field private hasDescription:Z

.field private hasDisplayName:Z

.field private hasFavIconUrl:Z

.field private hasIsBundle:Z

.field private hasLastModified:Z

.field private hasName:Z

.field private isBundle_:Z

.field private lastModified_:J

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2483
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 2484
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 2485
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->initFields()V

    .line 2486
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2080
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->lastModified_:J

    .line 2087
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->name_:Ljava/lang/String;

    .line 2094
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->displayName_:Ljava/lang/String;

    .line 2101
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->description_:Ljava/lang/String;

    .line 2108
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->bannerUrl_:Ljava/lang/String;

    .line 2115
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->favIconUrl_:Ljava/lang/String;

    .line 2121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;

    .line 2134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->isBundle_:Z

    .line 1244
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->initFields()V

    .line 1245
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 1246
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2080
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->lastModified_:J

    .line 2087
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->name_:Ljava/lang/String;

    .line 2094
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->displayName_:Ljava/lang/String;

    .line 2101
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->description_:Ljava/lang/String;

    .line 2108
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->bannerUrl_:Ljava/lang/String;

    .line 2115
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->favIconUrl_:Ljava/lang/String;

    .line 2121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;

    .line 2134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->isBundle_:Z

    .line 1246
    return-void
.end method

.method static synthetic access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasLastModified:Z

    return p1
.end method

.method static synthetic access$8402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # J

    .prologue
    .line 1240
    iput-wide p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->lastModified_:J

    return-wide p1
.end method

.method static synthetic access$8502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasName:Z

    return p1
.end method

.method static synthetic access$8602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDisplayName:Z

    return p1
.end method

.method static synthetic access$8802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->displayName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDescription:Z

    return p1
.end method

.method static synthetic access$9002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->description_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasBannerUrl:Z

    return p1
.end method

.method static synthetic access$9202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->bannerUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasFavIconUrl:Z

    return p1
.end method

.method static synthetic access$9402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->favIconUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasIsBundle:Z

    return p1
.end method

.method static synthetic access$9602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .param p1, "x1"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->isBundle_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1

    .prologue
    .line 1250
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1259
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2139
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 1

    .prologue
    .line 2207
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$8000()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .prologue
    .line 2210
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2176
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    .line 2177
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2178
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    .line 2180
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2187
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    .line 2188
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2189
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    .line 2191
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2143
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2149
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2197
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2203
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2165
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2171
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2154
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2160
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->bannerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    return-object v0
.end method

.method public getContainerCount()I
    .locals 1

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;

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
    .line 2124
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1

    .prologue
    .line 1254
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getFavIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->favIconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBundle()Z
    .locals 1

    .prologue
    .line 2136
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->isBundle_:Z

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 2082
    iget-wide v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->lastModified_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBannerUrl()Z
    .locals 1

    .prologue
    .line 2109
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasBannerUrl:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 2102
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDescription:Z

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 2095
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDisplayName:Z

    return v0
.end method

.method public hasFavIconUrl()Z
    .locals 1

    .prologue
    .line 2116
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasFavIconUrl:Z

    return v0
.end method

.method public hasIsBundle()Z
    .locals 1

    .prologue
    .line 2135
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasIsBundle:Z

    return v0
.end method

.method public hasLastModified()Z
    .locals 1

    .prologue
    .line 2081
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasLastModified:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2088
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1264
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 1

    .prologue
    .line 2208
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 1

    .prologue
    .line 2212
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method
