.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WSBatchedUpdateRequests"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    }
.end annotation


# static fields
.field public static final MESSAGE_VERSION_FIELD_NUMBER:I = 0x1

.field public static final REQUESTS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;


# instance fields
.field private hasMessageVersion:Z

.field private messageVersion_:I

.field private requests_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 364
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    .line 365
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 366
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->initFields()V

    .line 367
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->messageVersion_:I

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;

    .line 100
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->initFields()V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->messageVersion_:I

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;

    .line 102
    return-void
.end method

.method static synthetic access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->hasMessageVersion:Z

    return p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->messageVersion_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 115
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequests_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 1

    .prologue
    .line 211
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$300()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    .prologue
    .line 214
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    .line 181
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v1

    .line 184
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    .line 192
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v1

    .line 195
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    return-object v0
.end method

.method public getMessageVersion()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->messageVersion_:I

    return v0
.end method

.method public getRequests(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    return-object v0
.end method

.method public getRequestsCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;

    return-object v0
.end method

.method public hasMessageVersion()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->hasMessageVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 120
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequests_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method
