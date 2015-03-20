.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusChanges"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    }
.end annotation


# static fields
.field public static final ADDS_FIELD_NUMBER:I = 0x1

.field public static final DELETES_FIELD_NUMBER:I = 0x3

.field public static final MODS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;


# instance fields
.field private adds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;"
        }
    .end annotation
.end field

.field private deletes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;"
        }
    .end annotation
.end field

.field private mods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 731
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 732
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 733
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->initFields()V

    .line 734
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 383
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;

    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;

    .line 407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;

    .line 358
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->initFields()V

    .line 359
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 383
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;

    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;

    .line 407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;

    .line 360
    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 373
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 1

    .prologue
    .line 486
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1200()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .prologue
    .line 489
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    .line 456
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v1

    .line 459
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    .line 467
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v1

    .line 470
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdds(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    return-object v0
.end method

.method public getDeletes(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    return-object v0
.end method

.method public getDeletesCount()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeletesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 378
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 1

    .prologue
    .line 491
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method
