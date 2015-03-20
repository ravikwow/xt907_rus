.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    }
.end annotation


# static fields
.field public static final HEIGHT_FIELD_NUMBER:I = 0x8

.field public static final HREFLANG_FIELD_NUMBER:I = 0x4

.field public static final HREF_FIELD_NUMBER:I = 0x1

.field public static final LENGTH_FIELD_NUMBER:I = 0x6

.field public static final REL_FIELD_NUMBER:I = 0x2

.field public static final TITLE_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final WIDTH_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;


# instance fields
.field private hasHeight:Z

.field private hasHref:Z

.field private hasHreflang:Z

.field private hasLength:Z

.field private hasRel:Z

.field private hasTitle:Z

.field private hasType:Z

.field private hasWidth:Z

.field private height_:I

.field private href_:Ljava/lang/String;

.field private hreflang_:Ljava/lang/String;

.field private length_:Ljava/lang/String;

.field private rel_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private type_:Ljava/lang/String;

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6314
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    .line 6315
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 6316
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->initFields()V

    .line 6317
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5923
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5950
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->href_:Ljava/lang/String;

    .line 5957
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->rel_:Ljava/lang/String;

    .line 5964
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->type_:Ljava/lang/String;

    .line 5971
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hreflang_:Ljava/lang/String;

    .line 5978
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->title_:Ljava/lang/String;

    .line 5985
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->length_:Ljava/lang/String;

    .line 5992
    iput v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->width_:I

    .line 5999
    iput v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->height_:I

    .line 5924
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->initFields()V

    .line 5925
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 5920
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5926
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5950
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->href_:Ljava/lang/String;

    .line 5957
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->rel_:Ljava/lang/String;

    .line 5964
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->type_:Ljava/lang/String;

    .line 5971
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hreflang_:Ljava/lang/String;

    .line 5978
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->title_:Ljava/lang/String;

    .line 5985
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->length_:Ljava/lang/String;

    .line 5992
    iput v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->width_:I

    .line 5999
    iput v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->height_:I

    .line 5926
    return-void
.end method

.method static synthetic access$22102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Z

    .prologue
    .line 5920
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHref:Z

    return p1
.end method

.method static synthetic access$22202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5920
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->href_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$22302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Z

    .prologue
    .line 5920
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasRel:Z

    return p1
.end method

.method static synthetic access$22402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5920
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->rel_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$22502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Z

    .prologue
    .line 5920
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasType:Z

    return p1
.end method

.method static synthetic access$22602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5920
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->type_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$22702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Z

    .prologue
    .line 5920
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHreflang:Z

    return p1
.end method

.method static synthetic access$22802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5920
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hreflang_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$22902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Z

    .prologue
    .line 5920
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasTitle:Z

    return p1
.end method

.method static synthetic access$23002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5920
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->title_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$23102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Z

    .prologue
    .line 5920
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasLength:Z

    return p1
.end method

.method static synthetic access$23202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5920
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->length_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$23302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Z

    .prologue
    .line 5920
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasWidth:Z

    return p1
.end method

.method static synthetic access$23402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # I

    .prologue
    .line 5920
    iput p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->width_:I

    return p1
.end method

.method static synthetic access$23502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # Z

    .prologue
    .line 5920
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHeight:Z

    return p1
.end method

.method static synthetic access$23602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .param p1, "x1"    # I

    .prologue
    .line 5920
    iput p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->height_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1

    .prologue
    .line 5930
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5939
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Link_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$21600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 6004
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 1

    .prologue
    .line 6072
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21900()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    .prologue
    .line 6075
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6041
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    .line 6042
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6043
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    .line 6045
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6052
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    .line 6053
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6054
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    .line 6056
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6008
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6014
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6062
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6068
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6030
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6036
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6019
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6025
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5920
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5920
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1

    .prologue
    .line 5934
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 6001
    iget v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->height_:I

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5952
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->href_:Ljava/lang/String;

    return-object v0
.end method

.method public getHreflang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5973
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hreflang_:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5987
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->length_:Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5959
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->rel_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5980
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5966
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 5994
    iget v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 6000
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHeight:Z

    return v0
.end method

.method public hasHref()Z
    .locals 1

    .prologue
    .line 5951
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHref:Z

    return v0
.end method

.method public hasHreflang()Z
    .locals 1

    .prologue
    .line 5972
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHreflang:Z

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 5986
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasLength:Z

    return v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 5958
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasRel:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 5979
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasTitle:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 5965
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasType:Z

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 5993
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasWidth:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5944
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Link_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$21700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5920
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5920
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 1

    .prologue
    .line 6073
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5920
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5920
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 1

    .prologue
    .line 6077
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method
