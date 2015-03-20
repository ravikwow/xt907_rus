.class public final Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LegalProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/legal/protocol/LegalProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;,
        Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    }
.end annotation


# static fields
.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;


# instance fields
.field private deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

.field private hasDeviceInfo:Z

.field private hasType:Z

.field private type_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 332
    new-instance v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    .line 333
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->internalForceInit()V

    .line 334
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->initFields()V

    .line 335
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasType:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->type_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->internal_static_TextRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->EULA:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    iput-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->type_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 125
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 126
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 1

    .prologue
    .line 194
    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->create()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$300()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    .prologue
    .line 197
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    .line 164
    .local v0, "builder":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v1

    .line 167
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    .line 175
    .local v0, "builder":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->type_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    return-object v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->internal_static_TextRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilderForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilderForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->toBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->toBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-static {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method
