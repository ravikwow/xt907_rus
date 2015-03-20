.class public final Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LegalProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/legal/protocol/LegalProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;,
        Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final TEXT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

.field private hasError:Z

.field private hasText:Z

.field private text_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 642
    new-instance v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    .line 643
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->internalForceInit()V

    .line 644
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->initFields()V

    .line 645
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 446
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->text_:Ljava/lang/String;

    .line 344
    invoke-direct {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->initFields()V

    .line 345
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$1;

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 446
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->text_:Ljava/lang/String;

    .line 346
    return-void
.end method

.method static synthetic access$1402(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->error_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasText:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->text_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 359
    # getter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->internal_static_TextResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->error_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    .line 452
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 1

    .prologue
    .line 520
    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->create()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1200()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    .prologue
    .line 523
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    .line 490
    .local v0, "builder":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v1

    .line 493
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    .line 501
    .local v0, "builder":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v1

    .line 504
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    # invokes: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->defaultInstance:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->error_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasError:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasText:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 364
    # getter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->internal_static_TextResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilderForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilderForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->toBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->toBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 1

    .prologue
    .line 525
    invoke-static {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->newBuilder(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method
