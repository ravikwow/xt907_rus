.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListAssociationsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CAPTCHAINFO_FIELD_NUMBER:I = 0x2

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x1

.field public static final PROVIDERCREDENTIALSINFO_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;


# instance fields
.field private captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

.field private hasCaptchaInfo:Z

.field private hasDeviceInfo:Z

.field private hasProviderCredentialsInfo:Z

.field private providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4885
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    .line 4886
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 4887
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->initFields()V

    .line 4888
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4577
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4578
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->initFields()V

    .line 4579
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 4574
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 4580
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$15302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4574
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$15400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method static synthetic access$15402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 4574
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object p1
.end method

.method static synthetic access$15502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4574
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasCaptchaInfo:Z

    return p1
.end method

.method static synthetic access$15600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object v0
.end method

.method static synthetic access$15602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 4574
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object p1
.end method

.method static synthetic access$15702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4574
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasProviderCredentialsInfo:Z

    return p1
.end method

.method static synthetic access$15800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    return-object v0
.end method

.method static synthetic access$15802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .prologue
    .line 4574
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1

    .prologue
    .line 4584
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4593
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$14800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4623
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 4624
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 4625
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 4626
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 1

    .prologue
    .line 4694
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15100()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    .prologue
    .line 4697
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4663
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    .line 4664
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4665
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v1

    .line 4667
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4674
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    .line 4675
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4676
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v1

    .line 4678
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4630
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4636
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4684
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4690
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4652
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4658
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4641
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4647
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1

    .prologue
    .line 4613
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4574
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4574
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1

    .prologue
    .line 4588
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 4606
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method public getProviderCredentialsInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1

    .prologue
    .line 4620
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 4612
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasCaptchaInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 4605
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasProviderCredentialsInfo()Z
    .locals 1

    .prologue
    .line 4619
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasProviderCredentialsInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4598
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$14900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4574
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4574
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 1

    .prologue
    .line 4695
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4574
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4574
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 1

    .prologue
    .line 4699
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method
