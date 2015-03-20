.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncChannels"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    }
.end annotation


# static fields
.field public static final CHANNELS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;


# instance fields
.field private channels_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3906
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    .line 3907
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 3908
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->initFields()V

    .line 3909
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3666
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;

    .line 3667
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->initFields()V

    .line 3668
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 3663
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 3669
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;

    .line 3669
    return-void
.end method

.method static synthetic access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 3663
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1

    .prologue
    .line 3673
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3682
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$15500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 3703
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 1

    .prologue
    .line 3771
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15800()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    .prologue
    .line 3774
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3740
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    .line 3741
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3742
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v1

    .line 3744
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3751
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    .line 3752
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3753
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v1

    .line 3755
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3707
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3713
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3761
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3767
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3729
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3735
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3718
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3724
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChannels(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    return-object v0
.end method

.method public getChannelsCount()I
    .locals 1

    .prologue
    .line 3697
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChannelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3695
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3663
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3663
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1

    .prologue
    .line 3677
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3687
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$15600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3663
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3663
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 1

    .prologue
    .line 3772
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3663
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3663
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 1

    .prologue
    .line 3776
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method
