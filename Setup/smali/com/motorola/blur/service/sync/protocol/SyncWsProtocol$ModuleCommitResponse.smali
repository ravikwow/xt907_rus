.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleCommitResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FORMAT_FIELD_NUMBER:I = 0x65

.field public static final EXTENDED_STATUS_FIELD_NUMBER:I = 0x3

.field public static final LAST_CLIENT_ANCHOR_FIELD_NUMBER:I = 0x4

.field public static final NEW_SERVER_ANCHOR_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;


# instance fields
.field private dataFormat_:Ljava/lang/String;

.field private extendedStatus_:Ljava/lang/String;

.field private hasDataFormat:Z

.field private hasExtendedStatus:Z

.field private hasLastClientAnchor:Z

.field private hasNewServerAnchor:Z

.field private hasStatus:Z

.field private lastClientAnchor_:Ljava/lang/String;

.field private newServerAnchor_:Ljava/lang/String;

.field private status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3164
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    .line 3165
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 3166
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->initFields()V

    .line 3167
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2850
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2884
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->extendedStatus_:Ljava/lang/String;

    .line 2891
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->lastClientAnchor_:Ljava/lang/String;

    .line 2898
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newServerAnchor_:Ljava/lang/String;

    .line 2905
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->dataFormat_:Ljava/lang/String;

    .line 2851
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->initFields()V

    .line 2852
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 2847
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2853
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2884
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->extendedStatus_:Ljava/lang/String;

    .line 2891
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->lastClientAnchor_:Ljava/lang/String;

    .line 2898
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newServerAnchor_:Ljava/lang/String;

    .line 2905
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->dataFormat_:Ljava/lang/String;

    .line 2853
    return-void
.end method

.method static synthetic access$12702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2847
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasStatus:Z

    return p1
.end method

.method static synthetic access$12802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object p1
.end method

.method static synthetic access$12902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2847
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasExtendedStatus:Z

    return p1
.end method

.method static synthetic access$13002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->extendedStatus_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2847
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasLastClientAnchor:Z

    return p1
.end method

.method static synthetic access$13202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->lastClientAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2847
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasNewServerAnchor:Z

    return p1
.end method

.method static synthetic access$13402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newServerAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2847
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasDataFormat:Z

    return p1
.end method

.method static synthetic access$13602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->dataFormat_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1

    .prologue
    .line 2857
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2866
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$12200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2910
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 2911
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 1

    .prologue
    .line 2979
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12500()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    .prologue
    .line 2982
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2948
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    .line 2949
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2950
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v1

    .line 2952
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2959
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    .line 2960
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2961
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v1

    .line 2963
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2915
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2921
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2969
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2975
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2937
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2943
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2926
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2932
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->dataFormat_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2847
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2847
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1

    .prologue
    .line 2861
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    return-object v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->extendedStatus_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastClientAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->lastClientAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getNewServerAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newServerAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object v0
.end method

.method public hasDataFormat()Z
    .locals 1

    .prologue
    .line 2906
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasDataFormat:Z

    return v0
.end method

.method public hasExtendedStatus()Z
    .locals 1

    .prologue
    .line 2885
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasExtendedStatus:Z

    return v0
.end method

.method public hasLastClientAnchor()Z
    .locals 1

    .prologue
    .line 2892
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasLastClientAnchor:Z

    return v0
.end method

.method public hasNewServerAnchor()Z
    .locals 1

    .prologue
    .line 2899
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasNewServerAnchor:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 2878
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasStatus:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2871
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$12300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2847
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2847
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 1

    .prologue
    .line 2980
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2847
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2847
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 1

    .prologue
    .line 2984
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method
