.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetStatusResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final SAM_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;


# instance fields
.field private error_:I

.field private hasError:Z

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5255
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    .line 5256
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 5257
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->initFields()V

    .line 5258
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4990
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5017
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->error_:I

    .line 5023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;

    .line 4991
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->initFields()V

    .line 4992
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 4987
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 4993
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5017
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->error_:I

    .line 5023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;

    .line 4993
    return-void
.end method

.method static synthetic access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    .prologue
    .line 4987
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 4987
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 4987
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$20402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .param p1, "x1"    # I

    .prologue
    .line 4987
    iput p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->error_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1

    .prologue
    .line 4997
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5006
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_SetStatusResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$19700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 5034
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 1

    .prologue
    .line 5102
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$20000()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    .prologue
    .line 5105
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5071
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    .line 5072
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5073
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v1

    .line 5075
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5082
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    .line 5083
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5084
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v1

    .line 5086
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5038
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5044
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5092
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5098
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5060
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5066
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5049
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5055
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4987
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4987
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1

    .prologue
    .line 5001
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 5019
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->error_:I

    return v0
.end method

.method public getSam(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5030
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    return-object v0
.end method

.method public getSamCount()I
    .locals 1

    .prologue
    .line 5028
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;

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
    .line 5026
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 5018
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5011
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_SetStatusResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$19800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4987
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4987
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 1

    .prologue
    .line 5103
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4987
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4987
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 1

    .prologue
    .line 5107
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method
