.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfirmationEmailResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4014
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    .line 4015
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 4016
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->initFields()V

    .line 4017
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3743
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3744
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->initFields()V

    .line 3745
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 3740
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 3746
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$12802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3740
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$12902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    .prologue
    .line 3740
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 3750
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3759
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ConfirmationEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$12300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3844
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    .line 3845
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 1

    .prologue
    .line 3913
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12600()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    .prologue
    .line 3916
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3882
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    .line 3883
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3884
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v1

    .line 3886
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3893
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    .line 3894
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3895
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v1

    .line 3897
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3849
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3855
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3903
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3909
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3871
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3877
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3860
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3866
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3740
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3740
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 3754
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;
    .locals 1

    .prologue
    .line 3841
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3840
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3764
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ConfirmationEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$12400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3740
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3740
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 1

    .prologue
    .line 3914
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3740
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3740
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 1

    .prologue
    .line 3918
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method
