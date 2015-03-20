.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    }
.end annotation


# static fields
.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;


# instance fields
.field private hasType:Z

.field private type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 300
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 301
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->initFields()V

    .line 302
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->hasType:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->BAD_REQUEST:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 130
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 1

    .prologue
    .line 198
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$300()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .prologue
    .line 201
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    .line 168
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    .line 179
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 1

    .prologue
    .line 203
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method
