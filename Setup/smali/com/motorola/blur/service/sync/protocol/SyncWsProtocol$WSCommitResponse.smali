.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WSCommitResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FORMAT_FIELD_NUMBER:I = 0x65

.field public static final EXTENDED_STATUS_FIELD_NUMBER:I = 0x3

.field public static final LAST_CLIENT_ANCHOR_FIELD_NUMBER:I = 0x4

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x64

.field public static final MESSAGE_VERSION_FIELD_NUMBER:I = 0x1

.field public static final NEW_SERVER_ANCHOR_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;


# instance fields
.field private dataFormat_:Ljava/lang/String;

.field private extendedStatus_:Ljava/lang/String;

.field private hasDataFormat:Z

.field private hasExtendedStatus:Z

.field private hasLastClientAnchor:Z

.field private hasMessageType:Z

.field private hasMessageVersion:Z

.field private hasNewServerAnchor:Z

.field private hasStatus:Z

.field private lastClientAnchor_:Ljava/lang/String;

.field private messageType_:Ljava/lang/String;

.field private messageVersion_:I

.field private newServerAnchor_:Ljava/lang/String;

.field private status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1987
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    .line 1988
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 1989
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->initFields()V

    .line 1990
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1647
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageVersion_:I

    .line 1661
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->extendedStatus_:Ljava/lang/String;

    .line 1668
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->lastClientAnchor_:Ljava/lang/String;

    .line 1675
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newServerAnchor_:Ljava/lang/String;

    .line 1682
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageType_:Ljava/lang/String;

    .line 1689
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->dataFormat_:Ljava/lang/String;

    .line 1621
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->initFields()V

    .line 1622
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 1617
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1623
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1647
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageVersion_:I

    .line 1661
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->extendedStatus_:Ljava/lang/String;

    .line 1668
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->lastClientAnchor_:Ljava/lang/String;

    .line 1675
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newServerAnchor_:Ljava/lang/String;

    .line 1682
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageType_:Ljava/lang/String;

    .line 1689
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->dataFormat_:Ljava/lang/String;

    .line 1623
    return-void
.end method

.method static synthetic access$7102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageVersion:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # I

    .prologue
    .line 1617
    iput p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageVersion_:I

    return p1
.end method

.method static synthetic access$7302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasStatus:Z

    return p1
.end method

.method static synthetic access$7402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasExtendedStatus:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->extendedStatus_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasLastClientAnchor:Z

    return p1
.end method

.method static synthetic access$7802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->lastClientAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasNewServerAnchor:Z

    return p1
.end method

.method static synthetic access$8002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newServerAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageType:Z

    return p1
.end method

.method static synthetic access$8202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasDataFormat:Z

    return p1
.end method

.method static synthetic access$8402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->dataFormat_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1

    .prologue
    .line 1627
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1636
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$6600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1694
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 1695
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 1

    .prologue
    .line 1763
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6900()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    .prologue
    .line 1766
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1732
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    .line 1733
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1734
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v1

    .line 1736
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1743
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    .line 1744
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1745
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v1

    .line 1747
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1699
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1705
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1753
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1759
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1721
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1727
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1710
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1716
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->dataFormat_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1

    .prologue
    .line 1631
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    return-object v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->extendedStatus_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastClientAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->lastClientAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageType_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageVersion()I
    .locals 1

    .prologue
    .line 1649
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageVersion_:I

    return v0
.end method

.method public getNewServerAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newServerAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object v0
.end method

.method public hasDataFormat()Z
    .locals 1

    .prologue
    .line 1690
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasDataFormat:Z

    return v0
.end method

.method public hasExtendedStatus()Z
    .locals 1

    .prologue
    .line 1662
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasExtendedStatus:Z

    return v0
.end method

.method public hasLastClientAnchor()Z
    .locals 1

    .prologue
    .line 1669
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasLastClientAnchor:Z

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 1683
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageType:Z

    return v0
.end method

.method public hasMessageVersion()Z
    .locals 1

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageVersion:Z

    return v0
.end method

.method public hasNewServerAnchor()Z
    .locals 1

    .prologue
    .line 1676
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasNewServerAnchor:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 1655
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasStatus:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1641
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$6700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 1

    .prologue
    .line 1764
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 1

    .prologue
    .line 1768
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method
