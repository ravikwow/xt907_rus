.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewPasswordResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

.field private hasError:Z

.field private hasVersion:Z

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 577
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    .line 578
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 579
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->initFields()V

    .line 580
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->version_:I

    .line 280
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->initFields()V

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->version_:I

    .line 282
    return-void
.end method

.method static synthetic access$1602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasVersion:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .param p1, "x1"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->version_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 295
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;->CURRENT_PASSWORD_MISMATCH:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    .line 390
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 458
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1400()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    .prologue
    .line 461
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    .line 428
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v1

    .line 431
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    .line 439
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v1

    .line 442
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->version_:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasError:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 300
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 459
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 463
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method
