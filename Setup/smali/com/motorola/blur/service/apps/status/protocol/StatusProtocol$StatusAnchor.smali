.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusAnchor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    }
.end annotation


# static fields
.field public static final FRIENDID_FIELD_NUMBER:I = 0x3

.field public static final HASMOOD_FIELD_NUMBER:I = 0x5

.field public static final ISME_FIELD_NUMBER:I = 0x2

.field public static final PROVIDERID_FIELD_NUMBER:I = 0x1

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;


# instance fields
.field private friendId_:Ljava/lang/String;

.field private hasFriendId:Z

.field private hasHasMood:Z

.field private hasIsMe:Z

.field private hasMood_:Z

.field private hasProviderId:Z

.field private hasSyncAnchor:Z

.field private isMe_:Z

.field private providerId_:I

.field private syncAnchor_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2056
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    .line 2057
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 2058
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->initFields()V

    .line 2059
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1752
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1779
    iput v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->providerId_:I

    .line 1786
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->isMe_:Z

    .line 1793
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->friendId_:Ljava/lang/String;

    .line 1800
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->syncAnchor_:Ljava/lang/String;

    .line 1807
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasMood_:Z

    .line 1753
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->initFields()V

    .line 1754
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 1749
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1755
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1779
    iput v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->providerId_:I

    .line 1786
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->isMe_:Z

    .line 1793
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->friendId_:Ljava/lang/String;

    .line 1800
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->syncAnchor_:Ljava/lang/String;

    .line 1807
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasMood_:Z

    .line 1755
    return-void
.end method

.method static synthetic access$4702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 1749
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasProviderId:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # I

    .prologue
    .line 1749
    iput p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->providerId_:I

    return p1
.end method

.method static synthetic access$4902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 1749
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasIsMe:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 1749
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->isMe_:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 1749
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasFriendId:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->friendId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 1749
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$5402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 1749
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasHasMood:Z

    return p1
.end method

.method static synthetic access$5602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 1749
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasMood_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1

    .prologue
    .line 1759
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1768
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1812
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 1

    .prologue
    .line 1880
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4500()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    .prologue
    .line 1883
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1849
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    .line 1850
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1851
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v1

    .line 1853
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1860
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    .line 1861
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1862
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v1

    .line 1864
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1816
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1822
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1870
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1876
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1838
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1844
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1827
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1833
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1

    .prologue
    .line 1763
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->friendId_:Ljava/lang/String;

    return-object v0
.end method

.method public getHasMood()Z
    .locals 1

    .prologue
    .line 1809
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasMood_:Z

    return v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 1788
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->isMe_:Z

    return v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 1781
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->providerId_:I

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 1794
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasFriendId:Z

    return v0
.end method

.method public hasHasMood()Z
    .locals 1

    .prologue
    .line 1808
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasHasMood:Z

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 1787
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasIsMe:Z

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 1780
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasProviderId:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 1801
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasSyncAnchor:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1773
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$4300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 1

    .prologue
    .line 1881
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 1

    .prologue
    .line 1885
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method
