.class public final Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PhotosProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;,
        Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    }
.end annotation


# static fields
.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;


# instance fields
.field private hasType:Z

.field private type_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 720
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 721
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internalForceInit()V

    .line 722
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->initFields()V

    .line 723
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 438
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->initFields()V

    .line 439
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$2002(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .param p1, "x1"    # Z

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->hasType:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->type_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 453
    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->access$1500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 550
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->type_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 551
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 1

    .prologue
    .line 619
    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1800()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .prologue
    .line 622
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    .line 589
    .local v0, "builder":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v1

    .line 592
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    .line 600
    .local v0, "builder":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v1

    .line 603
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->type_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 458
    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilderForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilderForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 1

    .prologue
    .line 620
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->toBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->toBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-static {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method
