.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;
    }
.end annotation


# static fields
.field public static final CLEARPORT_FIELD_NUMBER:I = 0x5

.field public static final HOSTNAME_FIELD_NUMBER:I = 0x3

.field public static final NETWORKID_FIELD_NUMBER:I = 0x1

.field public static final SECUREPORT_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;


# instance fields
.field private clearPort_:I

.field private hasClearPort:Z

.field private hasHostname:Z

.field private hasNetworkid:Z

.field private hasSecurePort:Z

.field private hasType:Z

.field private hostname_:Ljava/lang/String;

.field private networkid_:I

.field private securePort_:I

.field private type_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2001
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    .line 2002
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internalForceInit()V

    .line 2003
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->initFields()V

    .line 2004
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1629
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1723
    iput v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->networkid_:I

    .line 1737
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hostname_:Ljava/lang/String;

    .line 1744
    iput v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->securePort_:I

    .line 1751
    iput v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->clearPort_:I

    .line 1630
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->initFields()V

    .line 1631
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1632
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1723
    iput v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->networkid_:I

    .line 1737
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hostname_:Ljava/lang/String;

    .line 1744
    iput v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->securePort_:I

    .line 1751
    iput v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->clearPort_:I

    .line 1632
    return-void
.end method

.method static synthetic access$5702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1626
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasNetworkid:Z

    return p1
.end method

.method static synthetic access$5802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1626
    iput p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->networkid_:I

    return p1
.end method

.method static synthetic access$5902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1626
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasType:Z

    return p1
.end method

.method static synthetic access$6002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->type_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1626
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasHostname:Z

    return p1
.end method

.method static synthetic access$6202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hostname_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1626
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasSecurePort:Z

    return p1
.end method

.method static synthetic access$6402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1626
    iput p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->securePort_:I

    return p1
.end method

.method static synthetic access$6502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1626
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasClearPort:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1626
    iput p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->clearPort_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1

    .prologue
    .line 1636
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1645
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NetworkInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$5200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1756
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;->PUBLIC:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->type_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    .line 1757
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 1

    .prologue
    .line 1825
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5500()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    .prologue
    .line 1828
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1794
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    .line 1795
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1796
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v1

    .line 1798
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1805
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    .line 1806
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1807
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v1

    .line 1809
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1761
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1767
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1815
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1821
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1783
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1789
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1772
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1778
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClearPort()I
    .locals 1

    .prologue
    .line 1753
    iget v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->clearPort_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1

    .prologue
    .line 1640
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hostname_:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkid()I
    .locals 1

    .prologue
    .line 1725
    iget v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->networkid_:I

    return v0
.end method

.method public getSecurePort()I
    .locals 1

    .prologue
    .line 1746
    iget v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->securePort_:I

    return v0
.end method

.method public getType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->type_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    return-object v0
.end method

.method public hasClearPort()Z
    .locals 1

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasClearPort:Z

    return v0
.end method

.method public hasHostname()Z
    .locals 1

    .prologue
    .line 1738
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasHostname:Z

    return v0
.end method

.method public hasNetworkid()Z
    .locals 1

    .prologue
    .line 1724
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasNetworkid:Z

    return v0
.end method

.method public hasSecurePort()Z
    .locals 1

    .prologue
    .line 1745
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasSecurePort:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1731
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1650
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NetworkInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$5300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 1

    .prologue
    .line 1826
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 1

    .prologue
    .line 1830
    invoke-static {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method
