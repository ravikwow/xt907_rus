.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TakeAccountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;


# instance fields
.field private data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

.field private hasData:Z

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7211
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    .line 7212
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 7213
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->initFields()V

    .line 7214
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6576
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6577
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->initFields()V

    .line 6578
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 6573
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 6579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$23702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 6573
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$23802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    .prologue
    .line 6573
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    return-object p1
.end method

.method static synthetic access$23902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 6573
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasData:Z

    return p1
.end method

.method static synthetic access$24000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    .prologue
    .line 6573
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    return-object v0
.end method

.method static synthetic access$24002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .prologue
    .line 6573
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1

    .prologue
    .line 6583
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6592
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$22100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7003
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    .line 7004
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 7005
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 1

    .prologue
    .line 7073
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23500()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    .prologue
    .line 7076
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7042
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    .line 7043
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7044
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v1

    .line 7046
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7053
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    .line 7054
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7055
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v1

    .line 7057
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7009
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7015
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7063
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7069
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7031
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7037
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7020
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7026
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1

    .prologue
    .line 7000
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1

    .prologue
    .line 6587
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;
    .locals 1

    .prologue
    .line 6993
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 6999
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasData:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 6992
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6597
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$22200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 1

    .prologue
    .line 7074
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 1

    .prologue
    .line 7078
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method
