.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WSBatchedUpdateRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    }
.end annotation


# static fields
.field public static final PAGE_SIZE_FIELD_NUMBER:I = 0x5

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x3

.field public static final SYNC_APP_ID_FIELD_NUMBER:I = 0x2

.field public static final SYNC_DATA_FORMAT_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;


# instance fields
.field private hasPageSize:Z

.field private hasSyncAnchor:Z

.field private hasSyncAppId:Z

.field private hasSyncDataFormat:Z

.field private pageSize_:I

.field private syncAnchor_:J

.field private syncAppId_:I

.field private syncDataFormat_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 651
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    .line 652
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 653
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->initFields()V

    .line 654
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 402
    iput v2, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAppId_:I

    .line 409
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAnchor_:J

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncDataFormat_:Ljava/lang/String;

    .line 423
    iput v2, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->pageSize_:I

    .line 376
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->initFields()V

    .line 377
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 402
    iput v2, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAppId_:I

    .line 409
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAnchor_:J

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncDataFormat_:Ljava/lang/String;

    .line 423
    iput v2, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->pageSize_:I

    .line 378
    return-void
.end method

.method static synthetic access$1302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAppId:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .param p1, "x1"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAppId_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .param p1, "x1"    # J

    .prologue
    .line 372
    iput-wide p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAnchor_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncDataFormat:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncDataFormat_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasPageSize:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .param p1, "x1"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->pageSize_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 391
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 496
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1100()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    .prologue
    .line 499
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    .line 466
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v1

    .line 469
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    .line 477
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v1

    .line 480
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->pageSize_:I

    return v0
.end method

.method public getSyncAnchor()J
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAnchor_:J

    return-wide v0
.end method

.method public getSyncAppId()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAppId_:I

    return v0
.end method

.method public getSyncDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncDataFormat_:Ljava/lang/String;

    return-object v0
.end method

.method public hasPageSize()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasPageSize:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAnchor:Z

    return v0
.end method

.method public hasSyncAppId()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAppId:Z

    return v0
.end method

.method public hasSyncDataFormat()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncDataFormat:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 396
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 497
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 501
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method
