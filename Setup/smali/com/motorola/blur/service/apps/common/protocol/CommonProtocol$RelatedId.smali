.class public final Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CommonProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelatedId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;,
        Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;


# instance fields
.field private hasId:Z

.field private hasType:Z

.field private id_:Ljava/lang/String;

.field private type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 746
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    .line 747
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internalForceInit()V

    .line 748
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->initFields()V

    .line 749
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->id_:Ljava/lang/String;

    .line 450
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->initFields()V

    .line 451
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->id_:Ljava/lang/String;

    .line 452
    return-void
.end method

.method static synthetic access$1802(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .param p1, "x1"    # Z

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasType:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .param p1, "x1"    # Z

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasId:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->id_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 465
    # getter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_RelatedId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;->PARENT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    .line 556
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 1

    .prologue
    .line 624
    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->create()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1600()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    .prologue
    .line 627
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    .line 594
    .local v0, "builder":Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v1

    .line 597
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    .line 605
    .local v0, "builder":Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v1

    .line 608
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1

    .prologue
    .line 460
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasId:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 470
    # getter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_RelatedId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilderForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilderForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->toBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->toBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 1

    .prologue
    .line 629
    invoke-static {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->newBuilder(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method
