.class public final Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ProvisioningProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEVICEID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;


# instance fields
.field private deviceID_:J

.field private hasDeviceID:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1501
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1502
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internalForceInit()V

    .line 1503
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->initFields()V

    .line 1504
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->deviceID_:J

    .line 1304
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->initFields()V

    .line 1305
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->deviceID_:J

    .line 1306
    return-void
.end method

.method static synthetic access$5302(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1300
    iput-boolean p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->hasDeviceID:Z

    return p1
.end method

.method static synthetic access$5402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .param p1, "x1"    # J

    .prologue
    .line 1300
    iput-wide p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->deviceID_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 1310
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1319
    # getter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerDeviceInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->access$4800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1335
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 1

    .prologue
    .line 1403
    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5100()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 1406
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1372
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    .line 1373
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1374
    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    .line 1376
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1383
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    .line 1384
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    .line 1387
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1339
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1345
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1393
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1399
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1361
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1367
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1356
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 1314
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method public getDeviceID()J
    .locals 2

    .prologue
    .line 1332
    iget-wide v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->deviceID_:J

    return-wide v0
.end method

.method public hasDeviceID()Z
    .locals 1

    .prologue
    .line 1331
    iget-boolean v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->hasDeviceID:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1324
    # getter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerDeviceInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->access$4900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilderForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilderForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 1

    .prologue
    .line 1404
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->toBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->toBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 1

    .prologue
    .line 1408
    invoke-static {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method
