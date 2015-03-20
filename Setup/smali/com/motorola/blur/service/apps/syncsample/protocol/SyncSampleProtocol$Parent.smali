.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    }
.end annotation


# static fields
.field public static final FIELD_BIGINT_FIELD_NUMBER:I = 0x3

.field public static final FIELD_BLOB_FIELD_NUMBER:I = 0x5

.field public static final FIELD_CHILDREN_FIELD_NUMBER:I = 0x6

.field public static final FIELD_INT_FIELD_NUMBER:I = 0x2

.field public static final FIELD_STRING_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;


# instance fields
.field private fieldBigint_:J

.field private fieldBlob_:Lcom/google/protobuf/ByteString;

.field private fieldChildren_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fieldInt_:I

.field private fieldString_:Ljava/lang/String;

.field private hasFieldBigint:Z

.field private hasFieldBlob:Z

.field private hasFieldInt:Z

.field private hasFieldString:Z

.field private hasId:Z

.field private id_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2657
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .line 2658
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internalForceInit()V

    .line 2659
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->initFields()V

    .line 2660
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2294
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2321
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->id_:Ljava/lang/String;

    .line 2328
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldInt_:I

    .line 2335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBigint_:J

    .line 2342
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldString_:Ljava/lang/String;

    .line 2349
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBlob_:Lcom/google/protobuf/ByteString;

    .line 2355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;

    .line 2295
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->initFields()V

    .line 2296
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;

    .prologue
    .line 2291
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 2297
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2321
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->id_:Ljava/lang/String;

    .line 2328
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldInt_:I

    .line 2335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBigint_:J

    .line 2342
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldString_:Ljava/lang/String;

    .line 2349
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBlob_:Lcom/google/protobuf/ByteString;

    .line 2355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;

    .line 2297
    return-void
.end method

.method static synthetic access$7000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # Z

    .prologue
    .line 2291
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasId:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->id_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # Z

    .prologue
    .line 2291
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldInt:Z

    return p1
.end method

.method static synthetic access$7402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # I

    .prologue
    .line 2291
    iput p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldInt_:I

    return p1
.end method

.method static synthetic access$7502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # Z

    .prologue
    .line 2291
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBigint:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # J

    .prologue
    .line 2291
    iput-wide p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBigint_:J

    return-wide p1
.end method

.method static synthetic access$7702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # Z

    .prologue
    .line 2291
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldString:Z

    return p1
.end method

.method static synthetic access$7802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldString_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # Z

    .prologue
    .line 2291
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBlob:Z

    return p1
.end method

.method static synthetic access$8002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBlob_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1

    .prologue
    .line 2301
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2310
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_Parent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$6500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2366
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 1

    .prologue
    .line 2434
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6800()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .prologue
    .line 2437
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2403
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    .line 2404
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2405
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    .line 2407
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2414
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    .line 2415
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2416
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    .line 2418
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2370
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2376
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2424
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2430
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2392
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2398
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2381
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2387
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1

    .prologue
    .line 2305
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    return-object v0
.end method

.method public getFieldBigint()J
    .locals 2

    .prologue
    .line 2337
    iget-wide v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBigint_:J

    return-wide v0
.end method

.method public getFieldBlob()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBlob_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFieldChildren(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFieldChildrenCount()I
    .locals 1

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFieldChildrenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;

    return-object v0
.end method

.method public getFieldInt()I
    .locals 1

    .prologue
    .line 2330
    iget v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldInt_:I

    return v0
.end method

.method public getFieldString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldString_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFieldBigint()Z
    .locals 1

    .prologue
    .line 2336
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBigint:Z

    return v0
.end method

.method public hasFieldBlob()Z
    .locals 1

    .prologue
    .line 2350
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBlob:Z

    return v0
.end method

.method public hasFieldInt()Z
    .locals 1

    .prologue
    .line 2329
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldInt:Z

    return v0
.end method

.method public hasFieldString()Z
    .locals 1

    .prologue
    .line 2343
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldString:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2322
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2315
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_Parent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$6600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 1

    .prologue
    .line 2435
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 1

    .prologue
    .line 2439
    invoke-static {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method
