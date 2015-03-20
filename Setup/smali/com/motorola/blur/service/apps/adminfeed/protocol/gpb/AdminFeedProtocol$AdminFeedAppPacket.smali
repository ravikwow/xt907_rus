.class public final Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AdminFeedProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdminFeedAppPacket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;


# instance fields
.field private data_:Lcom/google/protobuf/ByteString;

.field private hasData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    .line 362
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internalForceInit()V

    .line 363
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->initFields()V

    .line 364
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 187
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->data_:Lcom/google/protobuf/ByteString;

    .line 161
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->initFields()V

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 187
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->data_:Lcom/google/protobuf/ByteString;

    .line 163
    return-void
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->hasData:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 176
    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internal_static_AdminFeedAppPacket_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 1

    .prologue
    .line 260
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$300()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    .prologue
    .line 263
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    .line 230
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    .line 241
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v1

    .line 244
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->hasData:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 181
    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internal_static_AdminFeedAppPacket_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 1

    .prologue
    .line 265
    invoke-static {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method
