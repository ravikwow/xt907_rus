.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    }
.end annotation


# static fields
.field public static final COMPRESSEDFEEDLIST_FIELD_NUMBER:I = 0x4

.field public static final COMPRESSIONTYPE_FIELD_NUMBER:I = 0x3

.field public static final FEEDLIST_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;


# instance fields
.field private compressedFeedList_:Lcom/google/protobuf/ByteString;

.field private compressionType_:Ljava/lang/String;

.field private feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

.field private hasCompressedFeedList:Z

.field private hasCompressionType:Z

.field private hasFeedList:Z

.field private type_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 960
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 961
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 962
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->initFields()V

    .line 963
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 656
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressionType_:Ljava/lang/String;

    .line 683
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressedFeedList_:Lcom/google/protobuf/ByteString;

    .line 631
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->initFields()V

    .line 632
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 656
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressionType_:Ljava/lang/String;

    .line 683
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressedFeedList_:Lcom/google/protobuf/ByteString;

    .line 633
    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .param p1, "x1"    # Z

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasFeedList:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .param p1, "x1"    # Z

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressionType:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressionType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .param p1, "x1"    # Z

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressedFeedList:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressedFeedList_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1

    .prologue
    .line 637
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 646
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 688
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 689
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 1

    .prologue
    .line 757
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2500()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .prologue
    .line 760
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    .line 727
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v1

    .line 730
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    .line 738
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v1

    .line 741
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCompressedFeedList()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressedFeedList_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCompressionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressionType_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1

    .prologue
    .line 641
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    return-object v0
.end method

.method public getFeedList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 663
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeCount()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;

    return-object v0
.end method

.method public hasCompressedFeedList()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressedFeedList:Z

    return v0
.end method

.method public hasCompressionType()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressionType:Z

    return v0
.end method

.method public hasFeedList()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasFeedList:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 651
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 1

    .prologue
    .line 758
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 1

    .prologue
    .line 762
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method
