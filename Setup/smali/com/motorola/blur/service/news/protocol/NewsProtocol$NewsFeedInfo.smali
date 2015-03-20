.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewsFeedInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    }
.end annotation


# static fields
.field public static final BLURFEEDID_FIELD_NUMBER:I = 0x2

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x4

.field public static final ETAG_FIELD_NUMBER:I = 0x8

.field public static final HTMLURL_FIELD_NUMBER:I = 0xa

.field public static final IMAGEURL_FIELD_NUMBER:I = 0x6

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x5

.field public static final LASTMODIFIED_FIELD_NUMBER:I = 0x9

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final TTL_FIELD_NUMBER:I = 0x7

.field public static final XMLURL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;


# instance fields
.field private blurFeedId_:J

.field private description_:Ljava/lang/String;

.field private etag_:Ljava/lang/String;

.field private hasBlurFeedId:Z

.field private hasDescription:Z

.field private hasEtag:Z

.field private hasHtmlUrl:Z

.field private hasImageUrl:Z

.field private hasLanguage:Z

.field private hasLastModified:Z

.field private hasName:Z

.field private hasTtl:Z

.field private hasXmlUrl:Z

.field private htmlUrl_:Ljava/lang/String;

.field private imageUrl_:Ljava/lang/String;

.field private language_:Ljava/lang/String;

.field private lastModified_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private ttl_:I

.field private xmlUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4646
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 4647
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 4648
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->initFields()V

    .line 4649
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 4199
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4226
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->xmlUrl_:Ljava/lang/String;

    .line 4233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->blurFeedId_:J

    .line 4240
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->name_:Ljava/lang/String;

    .line 4247
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->description_:Ljava/lang/String;

    .line 4254
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->language_:Ljava/lang/String;

    .line 4261
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->imageUrl_:Ljava/lang/String;

    .line 4268
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->ttl_:I

    .line 4275
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->etag_:Ljava/lang/String;

    .line 4282
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->lastModified_:Ljava/lang/String;

    .line 4289
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->htmlUrl_:Ljava/lang/String;

    .line 4200
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->initFields()V

    .line 4201
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 4196
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 4202
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4226
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->xmlUrl_:Ljava/lang/String;

    .line 4233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->blurFeedId_:J

    .line 4240
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->name_:Ljava/lang/String;

    .line 4247
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->description_:Ljava/lang/String;

    .line 4254
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->language_:Ljava/lang/String;

    .line 4261
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->imageUrl_:Ljava/lang/String;

    .line 4268
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->ttl_:I

    .line 4275
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->etag_:Ljava/lang/String;

    .line 4282
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->lastModified_:Ljava/lang/String;

    .line 4289
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->htmlUrl_:Ljava/lang/String;

    .line 4202
    return-void
.end method

.method static synthetic access$15502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasXmlUrl:Z

    return p1
.end method

.method static synthetic access$15602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4196
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->xmlUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasBlurFeedId:Z

    return p1
.end method

.method static synthetic access$15802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # J

    .prologue
    .line 4196
    iput-wide p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->blurFeedId_:J

    return-wide p1
.end method

.method static synthetic access$15902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasName:Z

    return p1
.end method

.method static synthetic access$16002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4196
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasDescription:Z

    return p1
.end method

.method static synthetic access$16202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4196
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->description_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLanguage:Z

    return p1
.end method

.method static synthetic access$16402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4196
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->language_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasImageUrl:Z

    return p1
.end method

.method static synthetic access$16602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4196
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->imageUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasTtl:Z

    return p1
.end method

.method static synthetic access$16802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # I

    .prologue
    .line 4196
    iput p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->ttl_:I

    return p1
.end method

.method static synthetic access$16902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasEtag:Z

    return p1
.end method

.method static synthetic access$17002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4196
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->etag_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLastModified:Z

    return p1
.end method

.method static synthetic access$17202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4196
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->lastModified_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4196
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasHtmlUrl:Z

    return p1
.end method

.method static synthetic access$17402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4196
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->htmlUrl_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1

    .prologue
    .line 4206
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4215
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$15000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4294
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 1

    .prologue
    .line 4362
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15300()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .prologue
    .line 4365
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4331
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    .line 4332
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4333
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    .line 4335
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4342
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    .line 4343
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4344
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    .line 4346
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4298
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4304
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4352
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4358
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4320
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4326
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4309
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4315
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlurFeedId()J
    .locals 2

    .prologue
    .line 4235
    iget-wide v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->blurFeedId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4196
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4196
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1

    .prologue
    .line 4210
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4249
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4277
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->etag_:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4291
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->htmlUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4263
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4284
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->lastModified_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4242
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .prologue
    .line 4270
    iget v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->ttl_:I

    return v0
.end method

.method public getXmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->xmlUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBlurFeedId()Z
    .locals 1

    .prologue
    .line 4234
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasBlurFeedId:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 4248
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasDescription:Z

    return v0
.end method

.method public hasEtag()Z
    .locals 1

    .prologue
    .line 4276
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasEtag:Z

    return v0
.end method

.method public hasHtmlUrl()Z
    .locals 1

    .prologue
    .line 4290
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasHtmlUrl:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 4262
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasImageUrl:Z

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 4255
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLanguage:Z

    return v0
.end method

.method public hasLastModified()Z
    .locals 1

    .prologue
    .line 4283
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLastModified:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4241
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasName:Z

    return v0
.end method

.method public hasTtl()Z
    .locals 1

    .prologue
    .line 4269
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasTtl:Z

    return v0
.end method

.method public hasXmlUrl()Z
    .locals 1

    .prologue
    .line 4227
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasXmlUrl:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4220
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$15100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4196
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4196
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4196
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4196
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method
