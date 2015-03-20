.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidateNonceResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8283
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    .line 8284
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 8285
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->initFields()V

    .line 8286
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8012
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8013
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->initFields()V

    .line 8014
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 8009
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 8015
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$27302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 8009
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$27402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    .prologue
    .line 8009
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1

    .prologue
    .line 8019
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8028
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$26800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8113
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    .line 8114
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 1

    .prologue
    .line 8182
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27100()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    .prologue
    .line 8185
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8151
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    .line 8152
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8153
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v1

    .line 8155
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8162
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    .line 8163
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8164
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v1

    .line 8166
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8118
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8124
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8172
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8178
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8140
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8146
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8129
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8135
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1

    .prologue
    .line 8023
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;
    .locals 1

    .prologue
    .line 8110
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 8109
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 8033
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$26900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 1

    .prologue
    .line 8183
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 1

    .prologue
    .line 8187
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method
