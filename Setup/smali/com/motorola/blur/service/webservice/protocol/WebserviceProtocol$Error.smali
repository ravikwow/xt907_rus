.class public final Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
.super Lcom/google/protobuf/GeneratedMessage;
.source "WebserviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;,
        Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    }
.end annotation


# static fields
.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;


# instance fields
.field private hasType:Z

.field private hasVersion:Z

.field private type_:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->defaultInstance:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    .line 345
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internalForceInit()V

    .line 346
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->defaultInstance:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    invoke-direct {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->initFields()V

    .line 347
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->version_:I

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->version_:I

    .line 17
    return-void
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasVersion:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->version_:I

    return p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasType:Z

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .param p1, "x1"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->type_:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->defaultInstance:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_URI:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    iput-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->type_:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 157
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 1

    .prologue
    .line 225
    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->create()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$300()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    .prologue
    .line 228
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    .line 195
    .local v0, "builder":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    .line 206
    .local v0, "builder":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->getDefaultInstanceForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->getDefaultInstanceForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->defaultInstance:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->type_:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->version_:I

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasType:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilderForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilderForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->toBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->toBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 1

    .prologue
    .line 230
    invoke-static {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->newBuilder(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method
