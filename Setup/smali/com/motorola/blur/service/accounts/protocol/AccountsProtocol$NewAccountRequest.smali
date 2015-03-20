.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewAccountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTINFO_FIELD_NUMBER:I = 0x2

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x3

.field public static final NEWACCOUNTSIGNATURE_FIELD_NUMBER:I = 0x5

.field public static final RESTOREFROMDEVICE_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;


# instance fields
.field private accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

.field private hasAccountInfo:Z

.field private hasDeviceInfo:Z

.field private hasNewAccountSignature:Z

.field private hasRestoreFromDevice:Z

.field private hasVersion:Z

.field private newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

.field private restoreFromDevice_:Z

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2011
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    .line 2012
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 2013
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->initFields()V

    .line 2014
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1653
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1680
    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->version_:I

    .line 1701
    iput-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->restoreFromDevice_:Z

    .line 1654
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->initFields()V

    .line 1655
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 1650
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1656
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1680
    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->version_:I

    .line 1701
    iput-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->restoreFromDevice_:Z

    .line 1656
    return-void
.end method

.method static synthetic access$5902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1650
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasVersion:Z

    return p1
.end method

.method static synthetic access$6002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # I

    .prologue
    .line 1650
    iput p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->version_:I

    return p1
.end method

.method static synthetic access$6102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1650
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasAccountInfo:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1650
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1650
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasRestoreFromDevice:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1650
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->restoreFromDevice_:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1650
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasNewAccountSignature:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1

    .prologue
    .line 1660
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1669
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$5400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1713
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 1714
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1715
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 1716
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 1

    .prologue
    .line 1784
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5700()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    .prologue
    .line 1787
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1753
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    .line 1754
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1755
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v1

    .line 1757
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1764
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    .line 1765
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1766
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v1

    .line 1768
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1720
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1726
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1774
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1780
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1742
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1748
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1731
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1737
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1

    .prologue
    .line 1664
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method public getNewAccountSignature()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    return-object v0
.end method

.method public getRestoreFromDevice()Z
    .locals 1

    .prologue
    .line 1703
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->restoreFromDevice_:Z

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1682
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->version_:I

    return v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasAccountInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 1695
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasNewAccountSignature()Z
    .locals 1

    .prologue
    .line 1709
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasNewAccountSignature:Z

    return v0
.end method

.method public hasRestoreFromDevice()Z
    .locals 1

    .prologue
    .line 1702
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasRestoreFromDevice:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1681
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1674
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$5500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 1

    .prologue
    .line 1789
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method
