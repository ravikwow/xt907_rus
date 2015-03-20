.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerifyEmailFromLocalAddedEmailResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3732
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    .line 3733
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 3734
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->initFields()V

    .line 3735
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3461
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3462
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->initFields()V

    .line 3463
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 3458
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 3464
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$12102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3458
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$12202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    .prologue
    .line 3458
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1

    .prologue
    .line 3468
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3477
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$11600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3562
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    .line 3563
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 1

    .prologue
    .line 3631
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11900()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    .prologue
    .line 3634
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3600
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    .line 3601
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3602
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v1

    .line 3604
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3611
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    .line 3612
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3613
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v1

    .line 3615
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3567
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3573
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3621
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3627
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3589
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3595
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3578
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3584
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3458
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3458
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1

    .prologue
    .line 3472
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;
    .locals 1

    .prologue
    .line 3559
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3558
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3482
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$11700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3458
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3458
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 1

    .prologue
    .line 3632
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3458
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3458
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 1

    .prologue
    .line 3636
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method
