.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParentChanges"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    }
.end annotation


# static fields
.field public static final ADDS_FIELD_NUMBER:I = 0x1

.field public static final DELETIONS_FIELD_NUMBER:I = 0x3

.field public static final MODS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;


# instance fields
.field private adds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;"
        }
    .end annotation
.end field

.field private deletions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;"
        }
    .end annotation
.end field

.field private mods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1898
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1899
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internalForceInit()V

    .line 1900
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->initFields()V

    .line 1901
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1524
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1550
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;

    .line 1562
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;

    .line 1574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;

    .line 1525
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->initFields()V

    .line 1526
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;

    .prologue
    .line 1521
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1527
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1550
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;

    .line 1562
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;

    .line 1574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;

    .line 1527
    return-void
.end method

.method static synthetic access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1

    .prologue
    .line 1531
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1540
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_ParentChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$4900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1585
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 1

    .prologue
    .line 1653
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5200()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .prologue
    .line 1656
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1622
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    .line 1623
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v1

    .line 1626
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1633
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    .line 1634
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1635
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v1

    .line 1637
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1595
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1643
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1649
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1611
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1600
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1606
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdds(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1

    .prologue
    .line 1535
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    return-object v0
.end method

.method public getDeletions(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    return-object v0
.end method

.method public getDeletionsCount()I
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeletionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getModsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1545
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_ParentChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$5000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 1

    .prologue
    .line 1654
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 1

    .prologue
    .line 1658
    invoke-static {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method
