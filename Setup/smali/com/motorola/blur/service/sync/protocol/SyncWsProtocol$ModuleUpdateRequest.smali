.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleUpdateRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    }
.end annotation


# static fields
.field public static final OPTIONAL_DATA_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;


# instance fields
.field private hasOptionalData:Z

.field private optionalData_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2199
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    .line 2200
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 2201
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->initFields()V

    .line 2202
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1998
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2025
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;

    .line 1999
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->initFields()V

    .line 2000
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 1995
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2001
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2025
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;

    .line 2001
    return-void
.end method

.method static synthetic access$9002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1995
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->hasOptionalData:Z

    return p1
.end method

.method static synthetic access$9102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1995
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1

    .prologue
    .line 2005
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2014
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$8500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2030
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 2098
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8800()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    .prologue
    .line 2101
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2067
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    .line 2068
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2069
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v1

    .line 2071
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2078
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    .line 2079
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2080
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v1

    .line 2082
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2034
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2040
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2088
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2094
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2056
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2062
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2045
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2051
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1

    .prologue
    .line 2009
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    return-object v0
.end method

.method public getOptionalData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasOptionalData()Z
    .locals 1

    .prologue
    .line 2026
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->hasOptionalData:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2019
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$8600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 2103
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method
