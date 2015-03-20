.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewNameRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;


# instance fields
.field private hasName:Z

.field private hasVersion:Z

.field private name_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 814
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    .line 815
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 816
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->initFields()V

    .line 817
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 615
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->version_:I

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->name_:Ljava/lang/String;

    .line 589
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->initFields()V

    .line 590
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 615
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->version_:I

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->name_:Ljava/lang/String;

    .line 591
    return-void
.end method

.method static synthetic access$2502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasVersion:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .param p1, "x1"    # I

    .prologue
    .line 585
    iput p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->version_:I

    return p1
.end method

.method static synthetic access$2702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasName:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->name_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1

    .prologue
    .line 595
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 604
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$2000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 1

    .prologue
    .line 695
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    .prologue
    .line 698
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    .line 665
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v1

    .line 668
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    .line 676
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v1

    .line 679
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1

    .prologue
    .line 599
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->version_:I

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasName:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 609
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$2100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 1

    .prologue
    .line 696
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method
