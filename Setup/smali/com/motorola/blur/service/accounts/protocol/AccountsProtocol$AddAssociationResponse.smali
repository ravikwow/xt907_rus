.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddAssociationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4566
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    .line 4567
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 4568
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->initFields()V

    .line 4569
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4293
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4294
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->initFields()V

    .line 4295
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 4290
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 4296
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$14602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 4290
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$14702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    .prologue
    .line 4290
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1

    .prologue
    .line 4300
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4309
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$14100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4396
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;->CREDENTIAL_VERIFICATION_FAILURE:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    .line 4397
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 1

    .prologue
    .line 4465
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14400()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    .prologue
    .line 4468
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4434
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    .line 4435
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4436
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v1

    .line 4438
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4445
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    .line 4446
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4447
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v1

    .line 4449
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4401
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4407
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4455
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4461
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4423
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4429
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4412
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4418
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4290
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4290
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1

    .prologue
    .line 4304
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;
    .locals 1

    .prologue
    .line 4393
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 4392
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4314
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$14200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4290
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4290
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 1

    .prologue
    .line 4466
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4290
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4290
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 1

    .prologue
    .line 4470
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method