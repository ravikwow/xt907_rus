.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetEmailAndPasswordResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3238
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    .line 3239
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 3240
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->initFields()V

    .line 3241
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2965
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2966
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->initFields()V

    .line 2967
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 2962
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 2968
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$10702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2962
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$10802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .prologue
    .line 2962
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1

    .prologue
    .line 2972
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2981
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$10200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3068
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .line 3069
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 3137
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10500()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    .prologue
    .line 3140
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3106
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    .line 3107
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3108
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v1

    .line 3110
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3117
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    .line 3118
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3119
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v1

    .line 3121
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3073
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3079
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3127
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3133
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3095
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3101
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3084
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3090
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2962
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2962
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1

    .prologue
    .line 2976
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    .locals 1

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3064
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2986
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$10300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2962
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2962
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 3138
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2962
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2962
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 3142
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method
