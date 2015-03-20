.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleCommitRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    }
.end annotation


# static fields
.field public static final APP_DATA_FIELD_NUMBER:I = 0x2

.field public static final IS_FULL_SYNC_FOR_RECOVERY_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;


# instance fields
.field private appData_:Lcom/google/protobuf/ByteString;

.field private hasAppData:Z

.field private hasIsFullSyncForRecovery:Z

.field private isFullSyncForRecovery_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2839
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    .line 2840
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 2841
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->initFields()V

    .line 2842
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2613
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2640
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->appData_:Lcom/google/protobuf/ByteString;

    .line 2647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->isFullSyncForRecovery_:Z

    .line 2614
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->initFields()V

    .line 2615
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 2610
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2616
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2640
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->appData_:Lcom/google/protobuf/ByteString;

    .line 2647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->isFullSyncForRecovery_:Z

    .line 2616
    return-void
.end method

.method static synthetic access$11802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2610
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasAppData:Z

    return p1
.end method

.method static synthetic access$11902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2610
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->appData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2610
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasIsFullSyncForRecovery:Z

    return p1
.end method

.method static synthetic access$12102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2610
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->isFullSyncForRecovery_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1

    .prologue
    .line 2620
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2629
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$11300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2652
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 1

    .prologue
    .line 2720
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11600()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    .prologue
    .line 2723
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2689
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    .line 2690
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2691
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v1

    .line 2693
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2700
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    .line 2701
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2702
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v1

    .line 2704
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2656
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2662
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2710
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2716
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2678
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2684
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2667
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2673
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->appData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2610
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2610
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1

    .prologue
    .line 2624
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    return-object v0
.end method

.method public getIsFullSyncForRecovery()Z
    .locals 1

    .prologue
    .line 2649
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->isFullSyncForRecovery_:Z

    return v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 2641
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasAppData:Z

    return v0
.end method

.method public hasIsFullSyncForRecovery()Z
    .locals 1

    .prologue
    .line 2648
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasIsFullSyncForRecovery:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2634
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$11400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2610
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2610
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 1

    .prologue
    .line 2721
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2610
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2610
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 1

    .prologue
    .line 2725
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method
