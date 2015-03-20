.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewsFeedListResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;


# instance fields
.field private data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

.field private error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

.field private hasData:Z

.field private hasError:Z

.field private hasVersion:Z

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1232
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    .line 1233
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 1234
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->initFields()V

    .line 1235
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 971
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->version_:I

    .line 604
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->initFields()V

    .line 605
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 971
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->version_:I

    .line 606
    return-void
.end method

.method static synthetic access$3702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasVersion:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .param p1, "x1"    # I

    .prologue
    .line 600
    iput p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->version_:I

    return p1
.end method

.method static synthetic access$3902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasData:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1

    .prologue
    .line 610
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 619
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 990
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 991
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 992
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 1

    .prologue
    .line 1060
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3500()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    .prologue
    .line 1063
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    .line 1030
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v1

    .line 1033
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1040
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    .line 1041
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v1

    .line 1044
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 996
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1002
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1050
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1013
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1

    .prologue
    .line 614
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->version_:I

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasData:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasError:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 624
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 1

    .prologue
    .line 1061
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 1

    .prologue
    .line 1065
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method
