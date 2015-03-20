.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServicesChanges"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    }
.end annotation


# static fields
.field public static final ADDS_FIELD_NUMBER:I = 0x1

.field public static final DELETIONS_FIELD_NUMBER:I = 0x3

.field public static final MODS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;


# instance fields
.field private adds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;"
        }
    .end annotation
.end field

.field private deletions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;"
        }
    .end annotation
.end field

.field private mods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1690
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .line 1691
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internalForceInit()V

    .line 1692
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->initFields()V

    .line 1693
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;

    .line 1354
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;

    .line 1366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;

    .line 1317
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->initFields()V

    .line 1318
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1319
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;

    .line 1354
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;

    .line 1366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;

    .line 1319
    return-void
.end method

.method static synthetic access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1

    .prologue
    .line 1323
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1332
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$5200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1377
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 1

    .prologue
    .line 1445
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5500()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .prologue
    .line 1448
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    .line 1415
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1416
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v1

    .line 1418
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1425
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    .line 1426
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v1

    .line 1429
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1381
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1435
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1403
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1409
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1398
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdds(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1313
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1313
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1

    .prologue
    .line 1327
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    return-object v0
.end method

.method public getDeletions(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    return-object v0
.end method

.method public getDeletionsCount()I
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1337
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ServicesChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$5300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1313
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1313
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 1

    .prologue
    .line 1446
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1313
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1313
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 1

    .prologue
    .line 1450
    invoke-static {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method
