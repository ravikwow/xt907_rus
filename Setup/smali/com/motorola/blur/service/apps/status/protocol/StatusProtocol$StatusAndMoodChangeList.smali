.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusAndMoodChangeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    }
.end annotation


# static fields
.field public static final MAXANCHOR_FIELD_NUMBER:I = 0x2

.field public static final SAM_FIELD_NUMBER:I = 0x1

.field public static final SYNCSTATUS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;


# instance fields
.field private hasMaxAnchor:Z

.field private hasSyncStatus:Z

.field private maxAnchor_:Ljava/lang/String;

.field private sam_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;",
            ">;"
        }
    .end annotation
.end field

.field private syncStatus_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1741
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    .line 1742
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 1743
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->initFields()V

    .line 1744
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;

    .line 1484
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->maxAnchor_:Ljava/lang/String;

    .line 1491
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->syncStatus_:Ljava/lang/String;

    .line 1446
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->initFields()V

    .line 1447
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 1442
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1448
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;

    .line 1484
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->maxAnchor_:Ljava/lang/String;

    .line 1491
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->syncStatus_:Ljava/lang/String;

    .line 1448
    return-void
.end method

.method static synthetic access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .param p1, "x1"    # Z

    .prologue
    .line 1442
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasMaxAnchor:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->maxAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .param p1, "x1"    # Z

    .prologue
    .line 1442
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasSyncStatus:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->syncStatus_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1

    .prologue
    .line 1452
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1461
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$3200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1496
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 1

    .prologue
    .line 1564
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3500()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    .prologue
    .line 1567
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1533
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    .line 1534
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1535
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v1

    .line 1537
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1544
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    .line 1545
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1546
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v1

    .line 1548
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1500
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1506
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1554
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1560
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1528
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1511
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1517
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1

    .prologue
    .line 1456
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    return-object v0
.end method

.method public getMaxAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->maxAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getSam(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    return-object v0
.end method

.method public getSamCount()I
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;

    return-object v0
.end method

.method public getSyncStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->syncStatus_:Ljava/lang/String;

    return-object v0
.end method

.method public hasMaxAnchor()Z
    .locals 1

    .prologue
    .line 1485
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasMaxAnchor:Z

    return v0
.end method

.method public hasSyncStatus()Z
    .locals 1

    .prologue
    .line 1492
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasSyncStatus:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1466
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$3300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 1

    .prologue
    .line 1565
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 1

    .prologue
    .line 1569
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method
