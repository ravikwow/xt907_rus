.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WSUpdateRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    }
.end annotation


# static fields
.field public static final OPTIONAL_DATA_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;


# instance fields
.field private hasOptionalData:Z

.field private optionalData_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 863
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    .line 864
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 865
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->initFields()V

    .line 866
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 689
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;

    .line 663
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->initFields()V

    .line 664
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 689
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;

    .line 665
    return-void
.end method

.method static synthetic access$2602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->hasOptionalData:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1

    .prologue
    .line 669
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 678
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 762
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2400()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    .prologue
    .line 765
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    .line 732
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v1

    .line 735
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    .line 743
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v1

    .line 746
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1

    .prologue
    .line 673
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    return-object v0
.end method

.method public getOptionalData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasOptionalData()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->hasOptionalData:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 683
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 763
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 767
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method
