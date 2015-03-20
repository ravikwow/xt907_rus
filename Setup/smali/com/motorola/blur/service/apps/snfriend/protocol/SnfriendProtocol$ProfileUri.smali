.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileUri"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;,
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;
    }
.end annotation


# static fields
.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final URI_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;


# instance fields
.field private hasType:Z

.field private hasUri:Z

.field private type_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

.field private uri_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2281
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    .line 2282
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internalForceInit()V

    .line 2283
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->initFields()V

    .line 2284
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1984
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2085
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->uri_:Ljava/lang/String;

    .line 1985
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->initFields()V

    .line 1986
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;

    .prologue
    .line 1981
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1987
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2085
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->uri_:Ljava/lang/String;

    .line 1987
    return-void
.end method

.method static synthetic access$6902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .param p1, "x1"    # Z

    .prologue
    .line 1981
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasType:Z

    return p1
.end method

.method static synthetic access$7002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    .prologue
    .line 1981
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->type_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .param p1, "x1"    # Z

    .prologue
    .line 1981
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasUri:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1981
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->uri_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1

    .prologue
    .line 1991
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2000
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ProfileUri_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$6400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2090
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;->APPLICATION_URI:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->type_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    .line 2091
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 1

    .prologue
    .line 2159
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6700()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    .prologue
    .line 2162
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2128
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    .line 2129
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2130
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v1

    .line 2132
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2139
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    .line 2140
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2141
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v1

    .line 2143
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2095
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2101
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2149
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2155
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2117
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2123
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2106
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2112
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1

    .prologue
    .line 1995
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->type_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2079
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasType:Z

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 2086
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasUri:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2005
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ProfileUri_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$6500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 1

    .prologue
    .line 2160
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 1

    .prologue
    .line 2164
    invoke-static {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method
