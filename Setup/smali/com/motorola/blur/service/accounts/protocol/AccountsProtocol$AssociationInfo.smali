.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssociationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    }
.end annotation


# static fields
.field public static final BLURVERSION_FIELD_NUMBER:I = 0x6

.field public static final CLOUDINFO_FIELD_NUMBER:I = 0x4

.field public static final CREATIONTIME_FIELD_NUMBER:I = 0x3

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x2

.field public static final LOGIN_FIELD_NUMBER:I = 0x1

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;


# instance fields
.field private blurVersion_:Ljava/lang/String;

.field private cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

.field private creationTime_:J

.field private deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

.field private hasBlurVersion:Z

.field private hasCloudInfo:Z

.field private hasCreationTime:Z

.field private hasDeviceInfo:Z

.field private hasLogin:Z

.field private hasSignature:Z

.field private login_:Ljava/lang/String;

.field private signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5953
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .line 5954
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 5955
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->initFields()V

    .line 5956
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 5564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5591
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->login_:Ljava/lang/String;

    .line 5605
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->creationTime_:J

    .line 5626
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->blurVersion_:Ljava/lang/String;

    .line 5565
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->initFields()V

    .line 5566
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 5561
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 5567
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5591
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->login_:Ljava/lang/String;

    .line 5605
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->creationTime_:J

    .line 5626
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->blurVersion_:Ljava/lang/String;

    .line 5567
    return-void
.end method

.method static synthetic access$18502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 5561
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasLogin:Z

    return p1
.end method

.method static synthetic access$18602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5561
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$18702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 5561
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$18800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .prologue
    .line 5561
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method static synthetic access$18802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 5561
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object p1
.end method

.method static synthetic access$18902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 5561
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCreationTime:Z

    return p1
.end method

.method static synthetic access$19002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # J

    .prologue
    .line 5561
    iput-wide p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->creationTime_:J

    return-wide p1
.end method

.method static synthetic access$19102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 5561
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCloudInfo:Z

    return p1
.end method

.method static synthetic access$19200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .prologue
    .line 5561
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method static synthetic access$19202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 5561
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object p1
.end method

.method static synthetic access$19302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 5561
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasSignature:Z

    return p1
.end method

.method static synthetic access$19400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .prologue
    .line 5561
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    return-object v0
.end method

.method static synthetic access$19402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .prologue
    .line 5561
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    return-object p1
.end method

.method static synthetic access$19502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 5561
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasBlurVersion:Z

    return p1
.end method

.method static synthetic access$19602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5561
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->blurVersion_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1

    .prologue
    .line 5571
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5580
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AssociationInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$18000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5631
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 5632
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 5633
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 5634
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 1

    .prologue
    .line 5702
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .prologue
    .line 5705
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5671
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    .line 5672
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5673
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v1

    .line 5675
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5682
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    .line 5683
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5684
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v1

    .line 5686
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5638
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5644
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5692
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5698
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5660
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5666
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5649
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5655
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlurVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5628
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->blurVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudInfo()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 5614
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 5607
    iget-wide v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->creationTime_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5561
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5561
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1

    .prologue
    .line 5575
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 5600
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5593
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1

    .prologue
    .line 5621
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    return-object v0
.end method

.method public hasBlurVersion()Z
    .locals 1

    .prologue
    .line 5627
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasBlurVersion:Z

    return v0
.end method

.method public hasCloudInfo()Z
    .locals 1

    .prologue
    .line 5613
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCloudInfo:Z

    return v0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 5606
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCreationTime:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 5599
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasDeviceInfo:Z

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 5592
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasLogin:Z

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 5620
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasSignature:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5585
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AssociationInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$18100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5561
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5561
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 1

    .prologue
    .line 5703
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5561
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5561
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 1

    .prologue
    .line 5707
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method
