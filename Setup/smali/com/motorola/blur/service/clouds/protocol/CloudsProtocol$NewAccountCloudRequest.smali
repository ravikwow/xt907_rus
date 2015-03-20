.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewAccountCloudRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    }
.end annotation


# static fields
.field public static final CAPTCHAINFO_FIELD_NUMBER:I = 0x3

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x2

.field public static final EMAIL_FIELD_NUMBER:I = 0x1

.field public static final SCREENNAME_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;


# instance fields
.field private captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

.field private email_:Ljava/lang/String;

.field private hasCaptchaInfo:Z

.field private hasDeviceInfo:Z

.field private hasEmail:Z

.field private hasScreenName:Z

.field private screenName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    .line 334
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internalForceInit()V

    .line 335
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->initFields()V

    .line 336
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->email_:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->screenName_:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->email_:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->screenName_:Ljava/lang/String;

    .line 17
    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasScreenName:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->screenName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasEmail:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->email_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasCaptchaInfo:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 68
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 69
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 1

    .prologue
    .line 137
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$300()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    .prologue
    .line 140
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    .line 107
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    .line 118
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v1

    .line 121
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->screenName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasCaptchaInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasEmail:Z

    return v0
.end method

.method public hasScreenName()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasScreenName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 1

    .prologue
    .line 142
    invoke-static {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method
