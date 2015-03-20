.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;


# instance fields
.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3655
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3656
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 3657
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->initFields()V

    .line 3658
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3454
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3481
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->name_:Ljava/lang/String;

    .line 3455
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->initFields()V

    .line 3456
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 3451
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 3457
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3481
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->name_:Ljava/lang/String;

    .line 3457
    return-void
.end method

.method static synthetic access$15302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .param p1, "x1"    # Z

    .prologue
    .line 3451
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->hasName:Z

    return p1
.end method

.method static synthetic access$15402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3451
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->name_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1

    .prologue
    .line 3461
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3470
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$14800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 3486
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 1

    .prologue
    .line 3554
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15100()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .prologue
    .line 3557
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3523
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    .line 3524
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3525
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v1

    .line 3527
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3534
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    .line 3535
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3536
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v1

    .line 3538
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3490
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3496
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3544
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3550
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3512
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3518
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3501
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3507
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3451
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3451
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1

    .prologue
    .line 3465
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 3482
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->hasName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3475
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$14900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3451
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3451
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 1

    .prologue
    .line 3555
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3451
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3451
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 1

    .prologue
    .line 3559
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method
