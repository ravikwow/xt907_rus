.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    }
.end annotation


# static fields
.field public static final CLOUDID_FIELD_NUMBER:I = 0x1

.field public static final NETWORKS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;


# instance fields
.field private cloudid_:I

.field private hasCloudid:Z

.field private networks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1618
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1619
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internalForceInit()V

    .line 1620
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->initFields()V

    .line 1621
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1380
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->cloudid_:I

    .line 1386
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;

    .line 1354
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->initFields()V

    .line 1355
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1380
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->cloudid_:I

    .line 1386
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;

    .line 1356
    return-void
.end method

.method static synthetic access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1350
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->hasCloudid:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1350
    iput p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->cloudid_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 1360
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1369
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$4400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1397
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 1

    .prologue
    .line 1465
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4700()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 1468
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1434
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    .line 1435
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    .line 1438
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1445
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    .line 1446
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1447
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    .line 1449
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1401
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1407
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1455
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1461
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1423
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1429
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1412
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1418
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCloudid()I
    .locals 1

    .prologue
    .line 1382
    iget v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->cloudid_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 1364
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method public getNetworks(I)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    return-object v0
.end method

.method public getNetworksCount()I
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNetworksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;

    return-object v0
.end method

.method public hasCloudid()Z
    .locals 1

    .prologue
    .line 1381
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->hasCloudid:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1374
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$4500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 1

    .prologue
    .line 1466
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 1

    .prologue
    .line 1470
    invoke-static {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method
