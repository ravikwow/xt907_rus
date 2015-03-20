.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TakeAccountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTINFO_FIELD_NUMBER:I = 0x1

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x2

.field public static final TAKEACCOUNTSIGNATURE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;


# instance fields
.field private accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

.field private hasAccountInfo:Z

.field private hasDeviceInfo:Z

.field private hasTakeAccountSignature:Z

.field private takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6565
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    .line 6566
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 6567
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->initFields()V

    .line 6568
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6257
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6258
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->initFields()V

    .line 6259
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 6254
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 6260
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$21502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6254
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasAccountInfo:Z

    return p1
.end method

.method static synthetic access$21600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    .prologue
    .line 6254
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    return-object v0
.end method

.method static synthetic access$21602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .prologue
    .line 6254
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    return-object p1
.end method

.method static synthetic access$21702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6254
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$21800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    .prologue
    .line 6254
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method static synthetic access$21802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 6254
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object p1
.end method

.method static synthetic access$21902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6254
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasTakeAccountSignature:Z

    return p1
.end method

.method static synthetic access$22000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    .prologue
    .line 6254
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    return-object v0
.end method

.method static synthetic access$22002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .prologue
    .line 6254
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1

    .prologue
    .line 6264
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6273
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$21000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6303
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 6304
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 6305
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6306
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 1

    .prologue
    .line 6374
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    .prologue
    .line 6377
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6343
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    .line 6344
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6345
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v1

    .line 6347
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6354
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    .line 6355
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6356
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v1

    .line 6358
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6310
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6316
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6364
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6370
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6332
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6338
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6321
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6327
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .locals 1

    .prologue
    .line 6286
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6254
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6254
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1

    .prologue
    .line 6268
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 6293
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method public getTakeAccountSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1

    .prologue
    .line 6300
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    return-object v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 6285
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasAccountInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 6292
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasTakeAccountSignature()Z
    .locals 1

    .prologue
    .line 6299
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasTakeAccountSignature:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6278
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$21100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6254
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6254
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 1

    .prologue
    .line 6375
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6254
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6254
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 1

    .prologue
    .line 6379
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method
