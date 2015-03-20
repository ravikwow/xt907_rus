.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    }
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;


# instance fields
.field private hasKey:Z

.field private hasValue:Z

.field private hasVersion:Z

.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1641
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    .line 1642
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internalForceInit()V

    .line 1643
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->initFields()V

    .line 1644
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1414
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->version_:I

    .line 1421
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->key_:Ljava/lang/String;

    .line 1428
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->value_:Ljava/lang/String;

    .line 1388
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->initFields()V

    .line 1389
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;

    .prologue
    .line 1384
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1414
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->version_:I

    .line 1421
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->key_:Ljava/lang/String;

    .line 1428
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->value_:Ljava/lang/String;

    .line 1390
    return-void
.end method

.method static synthetic access$4602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .param p1, "x1"    # Z

    .prologue
    .line 1384
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasVersion:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .param p1, "x1"    # I

    .prologue
    .line 1384
    iput p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->version_:I

    return p1
.end method

.method static synthetic access$4802(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .param p1, "x1"    # Z

    .prologue
    .line 1384
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasKey:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->key_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .param p1, "x1"    # Z

    .prologue
    .line 1384
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasValue:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->value_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1

    .prologue
    .line 1394
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1403
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$4100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1433
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 1

    .prologue
    .line 1501
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4400()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    .prologue
    .line 1504
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1470
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    .line 1471
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1472
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v1

    .line 1474
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    .line 1482
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1483
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v1

    .line 1485
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1443
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1491
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1497
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1459
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1465
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1448
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1454
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1

    .prologue
    .line 1398
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1416
    iget v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->version_:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 1422
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasKey:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 1429
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasValue:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1415
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1408
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_UserParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$4200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 1

    .prologue
    .line 1502
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 1

    .prologue
    .line 1506
    invoke-static {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method
