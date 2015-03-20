.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTINFO_FIELD_NUMBER:I = 0x1

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x2

.field public static final SESSIONINFO_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;


# instance fields
.field private accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

.field private hasAccountInfo:Z

.field private hasDeviceInfo:Z

.field private hasSessionInfo:Z

.field private sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1614
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1615
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internalForceInit()V

    .line 1616
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->initFields()V

    .line 1617
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1307
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->initFields()V

    .line 1308
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$5802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .param p1, "x1"    # Z

    .prologue
    .line 1303
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasAccountInfo:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .param p1, "x1"    # Z

    .prologue
    .line 1303
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .param p1, "x1"    # Z

    .prologue
    .line 1303
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasSessionInfo:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1

    .prologue
    .line 1313
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1322
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1352
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 1353
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1354
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 1355
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 1

    .prologue
    .line 1423
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5600()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .prologue
    .line 1426
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    .line 1393
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v1

    .line 1396
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1403
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    .line 1404
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1405
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v1

    .line 1407
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1359
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1419
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1381
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1370
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1376
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1

    .prologue
    .line 1317
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method public getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    return-object v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 1334
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasAccountInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasDeviceInfo:Z

    return v0
.end method

.method public hasSessionInfo()Z
    .locals 1

    .prologue
    .line 1348
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasSessionInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1327
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 1

    .prologue
    .line 1424
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 1

    .prologue
    .line 1428
    invoke-static {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method
