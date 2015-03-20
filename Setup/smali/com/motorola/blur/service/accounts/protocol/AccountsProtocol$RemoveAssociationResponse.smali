.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoveAssociationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7761
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    .line 7762
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 7763
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->initFields()V

    .line 7764
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7490
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7491
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->initFields()V

    .line 7492
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 7487
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 7493
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$25702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 7487
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$25802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    .prologue
    .line 7487
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1

    .prologue
    .line 7497
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7506
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$25200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7591
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    .line 7592
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 1

    .prologue
    .line 7660
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25500()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    .prologue
    .line 7663
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7629
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    .line 7630
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7631
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v1

    .line 7633
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7640
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    .line 7641
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7642
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v1

    .line 7644
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7596
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7602
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7650
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7656
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7618
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7624
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7607
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7613
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7487
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7487
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1

    .prologue
    .line 7501
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;
    .locals 1

    .prologue
    .line 7588
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 7587
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7511
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$25300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7487
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7487
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 1

    .prologue
    .line 7661
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7487
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7487
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 1

    .prologue
    .line 7665
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method
