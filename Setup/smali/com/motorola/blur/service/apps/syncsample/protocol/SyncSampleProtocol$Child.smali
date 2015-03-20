.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Child"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;
    }
.end annotation


# static fields
.field public static final FIELD_BIGINT_FIELD_NUMBER:I = 0x3

.field public static final FIELD_BLOB_FIELD_NUMBER:I = 0x5

.field public static final FIELD_INT_FIELD_NUMBER:I = 0x2

.field public static final FIELD_STRING_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;


# instance fields
.field private fieldBigint_:J

.field private fieldBlob_:Lcom/google/protobuf/ByteString;

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
    .line 2975
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    .line 2976
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internalForceInit()V

    .line 2977
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->initFields()V

    .line 2978
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2695
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->id_:Ljava/lang/String;

    .line 2702
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldInt_:I

    .line 2709
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldBigint_:J

    .line 2716
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldString_:Ljava/lang/String;

    .line 2723
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldBlob_:Lcom/google/protobuf/ByteString;

    .line 2669
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->initFields()V

    .line 2670
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;

    .prologue
    .line 2665
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 2671
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2695
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->id_:Ljava/lang/String;

    .line 2702
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldInt_:I

    .line 2709
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldBigint_:J

    .line 2716
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldString_:Ljava/lang/String;

    .line 2723
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldBlob_:Lcom/google/protobuf/ByteString;

    .line 2671
    return-void
.end method

.method static synthetic access$8602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # Z

    .prologue
    .line 2665
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasId:Z

    return p1
.end method

.method static synthetic access$8702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2665
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->id_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # Z

    .prologue
    .line 2665
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasFieldInt:Z

    return p1
.end method

.method static synthetic access$8902(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # I

    .prologue
    .line 2665
    iput p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldInt_:I

    return p1
.end method

.method static synthetic access$9002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # Z

    .prologue
    .line 2665
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasFieldBigint:Z

    return p1
.end method

.method static synthetic access$9102(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # J

    .prologue
    .line 2665
    iput-wide p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldBigint_:J

    return-wide p1
.end method

.method static synthetic access$9202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # Z

    .prologue
    .line 2665
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasFieldString:Z

    return p1
.end method

.method static synthetic access$9302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2665
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldString_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # Z

    .prologue
    .line 2665
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasFieldBlob:Z

    return p1
.end method

.method static synthetic access$9502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2665
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldBlob_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1

    .prologue
    .line 2675
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2684
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_Child_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$8100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2728
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;
    .locals 1

    .prologue
    .line 2796
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8400()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    .prologue
    .line 2799
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2765
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    .line 2766
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2767
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v1

    .line 2769
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2776
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    .line 2777
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2778
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v1

    .line 2780
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2732
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2738
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2786
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2792
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2754
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2760
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2743
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2749
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->access$8300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1

    .prologue
    .line 2679
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    return-object v0
.end method

.method public getFieldBigint()J
    .locals 2

    .prologue
    .line 2711
    iget-wide v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldBigint_:J

    return-wide v0
.end method

.method public getFieldBlob()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldBlob_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFieldInt()I
    .locals 1

    .prologue
    .line 2704
    iget v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldInt_:I

    return v0
.end method

.method public getFieldString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->fieldString_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFieldBigint()Z
    .locals 1

    .prologue
    .line 2710
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasFieldBigint:Z

    return v0
.end method

.method public hasFieldBlob()Z
    .locals 1

    .prologue
    .line 2724
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasFieldBlob:Z

    return v0
.end method

.method public hasFieldInt()Z
    .locals 1

    .prologue
    .line 2703
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasFieldInt:Z

    return v0
.end method

.method public hasFieldString()Z
    .locals 1

    .prologue
    .line 2717
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasFieldString:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2696
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->hasId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2689
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_Child_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$8200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;
    .locals 1

    .prologue
    .line 2797
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;
    .locals 1

    .prologue
    .line 2801
    invoke-static {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;->newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    move-result-object v0

    return-object v0
.end method
