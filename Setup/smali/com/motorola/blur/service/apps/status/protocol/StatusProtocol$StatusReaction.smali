.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusReaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final PROVIDERPARAMS_FIELD_NUMBER:I = 0x3

.field public static final USERPARAMS_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;


# instance fields
.field private hasName:Z

.field private hasProviderParams:Z

.field private hasVersion:Z

.field private name_:Ljava/lang/String;

.field private providerParams_:Ljava/lang/String;

.field private userParams_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4979
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    .line 4980
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 4981
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->initFields()V

    .line 4982
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4347
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4685
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->version_:I

    .line 4692
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->name_:Ljava/lang/String;

    .line 4699
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->providerParams_:Ljava/lang/String;

    .line 4705
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;

    .line 4348
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->initFields()V

    .line 4349
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 4344
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 4350
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4685
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->version_:I

    .line 4692
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->name_:Ljava/lang/String;

    .line 4699
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->providerParams_:Ljava/lang/String;

    .line 4705
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;

    .line 4350
    return-void
.end method

.method static synthetic access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    .prologue
    .line 4344
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 4344
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .param p1, "x1"    # Z

    .prologue
    .line 4344
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasVersion:Z

    return p1
.end method

.method static synthetic access$19202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .param p1, "x1"    # I

    .prologue
    .line 4344
    iput p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->version_:I

    return p1
.end method

.method static synthetic access$19302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .param p1, "x1"    # Z

    .prologue
    .line 4344
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasName:Z

    return p1
.end method

.method static synthetic access$19402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4344
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .param p1, "x1"    # Z

    .prologue
    .line 4344
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasProviderParams:Z

    return p1
.end method

.method static synthetic access$19602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4344
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->providerParams_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1

    .prologue
    .line 4354
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4363
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4716
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 1

    .prologue
    .line 4784
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18800()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    .prologue
    .line 4787
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4753
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    .line 4754
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4755
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v1

    .line 4757
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4764
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    .line 4765
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4766
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v1

    .line 4768
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4720
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4726
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4774
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4780
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4742
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4748
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4731
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4737
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4344
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4344
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1

    .prologue
    .line 4358
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4694
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4701
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->providerParams_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserParams(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4712
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    return-object v0
.end method

.method public getUserParamsCount()I
    .locals 1

    .prologue
    .line 4710
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4708
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 4687
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->version_:I

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4693
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasName:Z

    return v0
.end method

.method public hasProviderParams()Z
    .locals 1

    .prologue
    .line 4700
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasProviderParams:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 4686
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4368
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4344
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4344
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 1

    .prologue
    .line 4785
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4344
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4344
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 1

    .prologue
    .line 4789
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method
