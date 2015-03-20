.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    }
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final VAL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;


# instance fields
.field private hasKey:Z

.field private hasVal:Z

.field private key_:Ljava/lang/String;

.field private val_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4674
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    .line 4675
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 4676
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->initFields()V

    .line 4677
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4445
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4472
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->key_:Ljava/lang/String;

    .line 4479
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->val_:Ljava/lang/String;

    .line 4446
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->initFields()V

    .line 4447
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 4442
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 4448
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4472
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->key_:Ljava/lang/String;

    .line 4479
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->val_:Ljava/lang/String;

    .line 4448
    return-void
.end method

.method static synthetic access$18302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .param p1, "x1"    # Z

    .prologue
    .line 4442
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasKey:Z

    return p1
.end method

.method static synthetic access$18402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4442
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->key_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$18502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .param p1, "x1"    # Z

    .prologue
    .line 4442
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasVal:Z

    return p1
.end method

.method static synthetic access$18602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4442
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->val_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1

    .prologue
    .line 4452
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4461
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4484
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 1

    .prologue
    .line 4552
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18100()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    .prologue
    .line 4555
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4521
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    .line 4522
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4523
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v1

    .line 4525
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4532
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    .line 4533
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4534
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v1

    .line 4536
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4488
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4494
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4542
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4548
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4510
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4516
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4499
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4505
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1

    .prologue
    .line 4456
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4474
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4481
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->val_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 4473
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasKey:Z

    return v0
.end method

.method public hasVal()Z
    .locals 1

    .prologue
    .line 4480
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasVal:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4466
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_UserParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 1

    .prologue
    .line 4553
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 1

    .prologue
    .line 4557
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method
