.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidgetAccessory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    }
.end annotation


# static fields
.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field public static final SIZE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;


# instance fields
.field private hasLabel:Z

.field private hasSize:Z

.field private label_:Ljava/lang/String;

.field private size_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1239
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    .line 1240
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internalForceInit()V

    .line 1241
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->initFields()V

    .line 1242
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1040
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->label_:Ljava/lang/String;

    .line 1047
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->size_:I

    .line 1014
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->initFields()V

    .line 1015
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1040
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->label_:Ljava/lang/String;

    .line 1047
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->size_:I

    .line 1016
    return-void
.end method

.method static synthetic access$3602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .param p1, "x1"    # Z

    .prologue
    .line 1010
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasLabel:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->label_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .param p1, "x1"    # Z

    .prologue
    .line 1010
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasSize:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .param p1, "x1"    # I

    .prologue
    .line 1010
    iput p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->size_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1

    .prologue
    .line 1020
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1029
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_WidgetAccessory_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$3100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1052
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 1

    .prologue
    .line 1120
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3400()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    .prologue
    .line 1123
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    .line 1090
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v1

    .line 1093
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1100
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    .line 1101
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1102
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v1

    .line 1104
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1062
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1110
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1084
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1067
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1

    .prologue
    .line 1024
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->size_:I

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasLabel:Z

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasSize:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1034
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_WidgetAccessory_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$3200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 1

    .prologue
    .line 1121
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 1

    .prologue
    .line 1125
    invoke-static {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method
