.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTINFO_FIELD_NUMBER:I = 0x1

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x2

.field public static final SESSIONINFO_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;


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
    .line 6980
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 6981
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 6982
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->initFields()V

    .line 6983
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6672
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6673
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->initFields()V

    .line 6674
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 6669
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 6675
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$22802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .param p1, "x1"    # Z

    .prologue
    .line 6669
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasAccountInfo:Z

    return p1
.end method

.method static synthetic access$22900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .prologue
    .line 6669
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    return-object v0
.end method

.method static synthetic access$22902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .prologue
    .line 6669
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    return-object p1
.end method

.method static synthetic access$23002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .param p1, "x1"    # Z

    .prologue
    .line 6669
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$23100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .prologue
    .line 6669
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method static synthetic access$23102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 6669
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object p1
.end method

.method static synthetic access$23202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .param p1, "x1"    # Z

    .prologue
    .line 6669
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasSessionInfo:Z

    return p1
.end method

.method static synthetic access$23300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .prologue
    .line 6669
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    return-object v0
.end method

.method static synthetic access$23302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .prologue
    .line 6669
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1

    .prologue
    .line 6679
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6688
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$22300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6718
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 6719
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 6720
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 6721
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 1

    .prologue
    .line 6789
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22600()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .prologue
    .line 6792
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6758
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    .line 6759
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6760
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v1

    .line 6762
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6769
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    .line 6770
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6771
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v1

    .line 6773
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6725
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6731
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6779
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6785
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6747
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6753
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6736
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6742
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 1

    .prologue
    .line 6701
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6669
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6669
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1

    .prologue
    .line 6683
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 6708
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method public getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 6715
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    return-object v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 6700
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasAccountInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 6707
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasDeviceInfo:Z

    return v0
.end method

.method public hasSessionInfo()Z
    .locals 1

    .prologue
    .line 6714
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasSessionInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6693
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$22400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6669
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6669
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 1

    .prologue
    .line 6790
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6669
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6669
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 1

    .prologue
    .line 6794
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method
