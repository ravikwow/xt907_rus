.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Text"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;


# instance fields
.field private data_:Ljava/lang/String;

.field private hasData:Z

.field private hasType:Z

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5644
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 5645
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 5646
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->initFields()V

    .line 5647
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5415
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5442
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->data_:Ljava/lang/String;

    .line 5449
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->type_:Ljava/lang/String;

    .line 5416
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->initFields()V

    .line 5417
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 5412
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 5418
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5442
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->data_:Ljava/lang/String;

    .line 5449
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->type_:Ljava/lang/String;

    .line 5418
    return-void
.end method

.method static synthetic access$20102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .param p1, "x1"    # Z

    .prologue
    .line 5412
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasData:Z

    return p1
.end method

.method static synthetic access$20202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5412
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->data_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$20302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .param p1, "x1"    # Z

    .prologue
    .line 5412
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasType:Z

    return p1
.end method

.method static synthetic access$20402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5412
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->type_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1

    .prologue
    .line 5422
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5431
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Text_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 5454
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 1

    .prologue
    .line 5522
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19900()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .prologue
    .line 5525
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5491
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    .line 5492
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5493
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    .line 5495
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5502
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    .line 5503
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5504
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    .line 5506
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5458
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5464
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5512
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5518
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5480
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5486
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5469
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5475
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5444
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5412
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5412
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1

    .prologue
    .line 5426
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5451
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 5443
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasData:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 5450
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5436
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Text_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5412
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5412
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 1

    .prologue
    .line 5523
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5412
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5412
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 1

    .prologue
    .line 5527
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method
