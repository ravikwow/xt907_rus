.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoginCloudRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x2

.field public static final EMAIL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;


# instance fields
.field private deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

.field private email_:Ljava/lang/String;

.field private hasDeviceInfo:Z

.field private hasEmail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1013
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    .line 1014
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internalForceInit()V

    .line 1015
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->initFields()V

    .line 1016
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 794
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->email_:Ljava/lang/String;

    .line 768
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->initFields()V

    .line 769
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 794
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->email_:Ljava/lang/String;

    .line 770
    return-void
.end method

.method static synthetic access$3102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasEmail:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->email_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1

    .prologue
    .line 774
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 783
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 806
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 807
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 1

    .prologue
    .line 875
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2900()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    .prologue
    .line 878
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    .line 845
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v1

    .line 848
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    .line 856
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v1

    .line 859
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 822
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1

    .prologue
    .line 778
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasEmail:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 788
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 1

    .prologue
    .line 880
    invoke-static {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method
