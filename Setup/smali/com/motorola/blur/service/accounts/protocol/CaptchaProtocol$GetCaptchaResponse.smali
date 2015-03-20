.class public final Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CaptchaProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCaptchaResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    }
.end annotation


# static fields
.field public static final CAPTCHAINFO_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;


# instance fields
.field private captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

.field private error_:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

.field private hasCaptchaInfo:Z

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 559
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    .line 560
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol;->internalForceInit()V

    .line 561
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->initFields()V

    .line 562
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 244
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->initFields()V

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$1;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$1202(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasCaptchaInfo:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 259
    # getter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol;->internal_static_GetCaptchaResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol;->access$700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    .line 352
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 353
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 1

    .prologue
    .line 421
    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$1000()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    .prologue
    .line 424
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    .line 391
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v1

    .line 394
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    .line 402
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v1

    .line 405
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasCaptchaInfo:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 264
    # getter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol;->internal_static_GetCaptchaResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol;->access$800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 1

    .prologue
    .line 426
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method
