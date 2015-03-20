.class public final Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CommonProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetaItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;,
        Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x4

.field public static final END_FIELD_NUMBER:I = 0x3

.field public static final START_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;


# instance fields
.field private data_:Ljava/lang/String;

.field private end_:I

.field private hasData:Z

.field private hasEnd:Z

.field private hasStart:Z

.field private hasType:Z

.field private start_:I

.field private type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 438
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .line 439
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internalForceInit()V

    .line 440
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->initFields()V

    .line 441
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 192
    iput v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->start_:I

    .line 199
    iput v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->end_:I

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->data_:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->initFields()V

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 192
    iput v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->start_:I

    .line 199
    iput v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->end_:I

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->data_:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->end_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasData:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->data_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasType:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasStart:Z

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->start_:I

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasEnd:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 99
    # getter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_MetaItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->CONTACT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 212
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 1

    .prologue
    .line 280
    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->create()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$300()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .prologue
    .line 283
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    .line 250
    .local v0, "builder":Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v1

    .line 253
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    .line 261
    .local v0, "builder":Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v1

    .line 264
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    # invokes: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->defaultInstance:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->end_:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->start_:I

    return v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasData:Z

    return v0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasEnd:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasStart:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 104
    # getter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_MetaItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilderForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilderForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 1

    .prologue
    .line 281
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->toBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->toBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-static {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->newBuilder(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method
