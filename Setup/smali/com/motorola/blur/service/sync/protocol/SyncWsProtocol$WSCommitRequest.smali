.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WSCommitRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    }
.end annotation


# static fields
.field public static final APP_DATA_FIELD_NUMBER:I = 0x2

.field public static final IS_FULL_SYNC_FOR_RECOVERY_FIELD_NUMBER:I = 0x3

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x64

.field public static final MESSAGE_VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;


# instance fields
.field private appData_:Lcom/google/protobuf/ByteString;

.field private hasAppData:Z

.field private hasIsFullSyncForRecovery:Z

.field private hasMessageType:Z

.field private hasMessageVersion:Z

.field private isFullSyncForRecovery_:Z

.field private messageType_:Ljava/lang/String;

.field private messageVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1609
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    .line 1610
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 1611
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->initFields()V

    .line 1612
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1330
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1357
    iput v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageVersion_:I

    .line 1364
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->appData_:Lcom/google/protobuf/ByteString;

    .line 1371
    iput-boolean v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->isFullSyncForRecovery_:Z

    .line 1378
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageType_:Ljava/lang/String;

    .line 1331
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->initFields()V

    .line 1332
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1333
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1357
    iput v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageVersion_:I

    .line 1364
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->appData_:Lcom/google/protobuf/ByteString;

    .line 1371
    iput-boolean v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->isFullSyncForRecovery_:Z

    .line 1378
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageType_:Ljava/lang/String;

    .line 1333
    return-void
.end method

.method static synthetic access$5802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1327
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageVersion:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1327
    iput p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageVersion_:I

    return p1
.end method

.method static synthetic access$6002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1327
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasAppData:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->appData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1327
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasIsFullSyncForRecovery:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1327
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->isFullSyncForRecovery_:Z

    return p1
.end method

.method static synthetic access$6402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1327
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageType:Z

    return p1
.end method

.method static synthetic access$6502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageType_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1

    .prologue
    .line 1337
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1346
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$5300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1383
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 1

    .prologue
    .line 1451
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5600()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    .prologue
    .line 1454
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1420
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    .line 1421
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1422
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v1

    .line 1424
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1431
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    .line 1432
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v1

    .line 1435
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1393
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1447
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1409
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1415
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1398
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1404
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->appData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1

    .prologue
    .line 1341
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    return-object v0
.end method

.method public getIsFullSyncForRecovery()Z
    .locals 1

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->isFullSyncForRecovery_:Z

    return v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageType_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageVersion()I
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageVersion_:I

    return v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 1365
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasAppData:Z

    return v0
.end method

.method public hasIsFullSyncForRecovery()Z
    .locals 1

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasIsFullSyncForRecovery:Z

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 1379
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageType:Z

    return v0
.end method

.method public hasMessageVersion()Z
    .locals 1

    .prologue
    .line 1358
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1351
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$5400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 1

    .prologue
    .line 1456
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method
