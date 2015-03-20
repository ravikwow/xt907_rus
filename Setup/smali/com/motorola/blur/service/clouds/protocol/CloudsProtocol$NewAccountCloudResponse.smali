.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewAccountCloudResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    }
.end annotation


# static fields
.field public static final CAPTCHAINFO_FIELD_NUMBER:I = 0x3

.field public static final CLOUD_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final NEWACCOUNTSIGNATURE_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;


# instance fields
.field private captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

.field private cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

.field private error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

.field private hasCaptchaInfo:Z

.field private hasCloud:Z

.field private hasError:Z

.field private hasNewAccountSignature:Z

.field private newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 756
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    .line 757
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internalForceInit()V

    .line 758
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->initFields()V

    .line 759
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 345
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->initFields()V

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$1802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCloud:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCaptchaInfo:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasNewAccountSignature:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 360
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 473
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 474
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 475
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 476
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 1

    .prologue
    .line 544
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1600()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    .prologue
    .line 547
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    .line 514
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v1

    .line 517
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    .line 525
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v1

    .line 528
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method public getCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    return-object v0
.end method

.method public getNewAccountSignature()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCaptchaInfo:Z

    return v0
.end method

.method public hasCloud()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCloud:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasError:Z

    return v0
.end method

.method public hasNewAccountSignature()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasNewAccountSignature:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 365
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 1

    .prologue
    .line 545
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 1

    .prologue
    .line 549
    invoke-static {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method
