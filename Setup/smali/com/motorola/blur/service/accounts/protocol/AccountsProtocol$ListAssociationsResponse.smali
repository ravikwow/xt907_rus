.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListAssociationsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;
    }
.end annotation


# static fields
.field public static final ASSOCIATIONS_FIELD_NUMBER:I = 0x2

.field public static final CAPTCHAINFO_FIELD_NUMBER:I = 0x3

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;


# instance fields
.field private associations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

.field private hasCaptchaInfo:Z

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5553
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    .line 5554
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 5555
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->initFields()V

    .line 5556
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5164
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;

    .line 5165
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->initFields()V

    .line 5166
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 5161
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 5167
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;

    .line 5167
    return-void
.end method

.method static synthetic access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    .prologue
    .line 5161
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 5161
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 5161
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$17702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    .prologue
    .line 5161
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    return-object p1
.end method

.method static synthetic access$17802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 5161
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasCaptchaInfo:Z

    return p1
.end method

.method static synthetic access$17900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    .prologue
    .line 5161
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method static synthetic access$17902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 5161
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1

    .prologue
    .line 5171
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5180
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$17000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5290
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    .line 5291
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 5292
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 1

    .prologue
    .line 5360
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    .prologue
    .line 5363
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5329
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    .line 5330
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5331
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v1

    .line 5333
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5340
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    .line 5341
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5342
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v1

    .line 5344
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5296
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5302
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5350
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5356
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5318
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5324
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5307
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5313
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAssociations(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5279
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    return-object v0
.end method

.method public getAssociationsCount()I
    .locals 1

    .prologue
    .line 5277
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAssociationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5275
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;

    return-object v0
.end method

.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 5287
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5161
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5161
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1

    .prologue
    .line 5175
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;
    .locals 1

    .prologue
    .line 5268
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 5286
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasCaptchaInfo:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 5267
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5185
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$17100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5161
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5161
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 1

    .prologue
    .line 5361
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5161
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5161
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 1

    .prologue
    .line 5365
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method
