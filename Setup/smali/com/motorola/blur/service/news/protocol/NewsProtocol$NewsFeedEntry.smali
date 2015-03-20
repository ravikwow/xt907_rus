.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewsFeedEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    }
.end annotation


# static fields
.field public static final BLURFEEDID_FIELD_NUMBER:I = 0x1

.field public static final CONTENT_FIELD_NUMBER:I = 0x5

.field public static final ENTRYID_FIELD_NUMBER:I = 0x2

.field public static final LINK_FIELD_NUMBER:I = 0x6

.field public static final SUMMARY_FIELD_NUMBER:I = 0x7

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;


# instance fields
.field private blurFeedId_:J

.field private content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

.field private entryId_:Ljava/lang/String;

.field private hasBlurFeedId:Z

.field private hasContent:Z

.field private hasEntryId:Z

.field private hasSummary:Z

.field private hasTimeStamp:Z

.field private hasTitle:Z

.field private link_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;",
            ">;"
        }
    .end annotation
.end field

.field private summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

.field private timeStamp_:J

.field private title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6751
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .line 6752
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 6753
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->initFields()V

    .line 6754
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 5388
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6325
    iput-wide v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->blurFeedId_:J

    .line 6332
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->entryId_:Ljava/lang/String;

    .line 6346
    iput-wide v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->timeStamp_:J

    .line 6359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;

    .line 5389
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->initFields()V

    .line 5390
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 5385
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const-wide/16 v1, 0x0

    .line 5391
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6325
    iput-wide v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->blurFeedId_:J

    .line 6332
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->entryId_:Ljava/lang/String;

    .line 6346
    iput-wide v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->timeStamp_:J

    .line 6359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;

    .line 5391
    return-void
.end method

.method static synthetic access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .prologue
    .line 5385
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$24002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 5385
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$24102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 5385
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasBlurFeedId:Z

    return p1
.end method

.method static synthetic access$24202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # J

    .prologue
    .line 5385
    iput-wide p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->blurFeedId_:J

    return-wide p1
.end method

.method static synthetic access$24302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 5385
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasEntryId:Z

    return p1
.end method

.method static synthetic access$24402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5385
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->entryId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$24502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 5385
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTitle:Z

    return p1
.end method

.method static synthetic access$24600(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .prologue
    .line 5385
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    return-object v0
.end method

.method static synthetic access$24602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .prologue
    .line 5385
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    return-object p1
.end method

.method static synthetic access$24702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 5385
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTimeStamp:Z

    return p1
.end method

.method static synthetic access$24802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # J

    .prologue
    .line 5385
    iput-wide p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->timeStamp_:J

    return-wide p1
.end method

.method static synthetic access$24902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 5385
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasContent:Z

    return p1
.end method

.method static synthetic access$25000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .prologue
    .line 5385
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    return-object v0
.end method

.method static synthetic access$25002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .prologue
    .line 5385
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    return-object p1
.end method

.method static synthetic access$25102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 5385
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasSummary:Z

    return p1
.end method

.method static synthetic access$25200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .prologue
    .line 5385
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    return-object v0
.end method

.method static synthetic access$25202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .prologue
    .line 5385
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1

    .prologue
    .line 5395
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5404
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6377
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6378
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .line 6379
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6380
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 1

    .prologue
    .line 6448
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23800()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .prologue
    .line 6451
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6417
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    .line 6418
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6419
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v1

    .line 6421
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6428
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    .line 6429
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6430
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v1

    .line 6432
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6384
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6390
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6438
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6444
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6406
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6412
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6395
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6401
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlurFeedId()J
    .locals 2

    .prologue
    .line 6327
    iget-wide v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->blurFeedId_:J

    return-wide v0
.end method

.method public getContent()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 1

    .prologue
    .line 6355
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5385
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5385
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1

    .prologue
    .line 5399
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    return-object v0
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6334
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->entryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLink(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6366
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    return-object v0
.end method

.method public getLinkCount()I
    .locals 1

    .prologue
    .line 6364
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6362
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;

    return-object v0
.end method

.method public getSummary()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1

    .prologue
    .line 6374
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 6348
    iget-wide v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->timeStamp_:J

    return-wide v0
.end method

.method public getTitle()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1

    .prologue
    .line 6341
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    return-object v0
.end method

.method public hasBlurFeedId()Z
    .locals 1

    .prologue
    .line 6326
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasBlurFeedId:Z

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 6354
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasContent:Z

    return v0
.end method

.method public hasEntryId()Z
    .locals 1

    .prologue
    .line 6333
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasEntryId:Z

    return v0
.end method

.method public hasSummary()Z
    .locals 1

    .prologue
    .line 6373
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasSummary:Z

    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    .prologue
    .line 6347
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTimeStamp:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 6340
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTitle:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5409
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5385
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5385
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 1

    .prologue
    .line 6449
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5385
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5385
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 1

    .prologue
    .line 6453
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method
