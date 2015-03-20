.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoodAnchor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    }
.end annotation


# static fields
.field public static final FRIENDID_FIELD_NUMBER:I = 0x3

.field public static final ISME_FIELD_NUMBER:I = 0x2

.field public static final PROVIDERID_FIELD_NUMBER:I = 0x1

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;


# instance fields
.field private friendId_:Ljava/lang/String;

.field private hasFriendId:Z

.field private hasIsMe:Z

.field private hasProviderId:Z

.field private hasSyncAnchor:Z

.field private isMe_:Z

.field private providerId_:I

.field private syncAnchor_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2346
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    .line 2347
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 2348
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->initFields()V

    .line 2349
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2067
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2094
    iput v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->providerId_:I

    .line 2101
    iput-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->isMe_:Z

    .line 2108
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->friendId_:Ljava/lang/String;

    .line 2115
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->syncAnchor_:Ljava/lang/String;

    .line 2068
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->initFields()V

    .line 2069
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 2064
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2070
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2094
    iput v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->providerId_:I

    .line 2101
    iput-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->isMe_:Z

    .line 2108
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->friendId_:Ljava/lang/String;

    .line 2115
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->syncAnchor_:Ljava/lang/String;

    .line 2070
    return-void
.end method

.method static synthetic access$6202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 2064
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasProviderId:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .param p1, "x1"    # I

    .prologue
    .line 2064
    iput p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->providerId_:I

    return p1
.end method

.method static synthetic access$6402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 2064
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasIsMe:Z

    return p1
.end method

.method static synthetic access$6502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 2064
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->isMe_:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 2064
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasFriendId:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->friendId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .param p1, "x1"    # Z

    .prologue
    .line 2064
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$6902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1

    .prologue
    .line 2074
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2083
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$5700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2120
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 1

    .prologue
    .line 2188
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$6000()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    .prologue
    .line 2191
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2157
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    .line 2158
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2159
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v1

    .line 2161
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2168
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    .line 2169
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2170
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v1

    .line 2172
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2124
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2130
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2178
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2184
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2146
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2152
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2135
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2141
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1

    .prologue
    .line 2078
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->friendId_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 2103
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->isMe_:Z

    return v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 2096
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->providerId_:I

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 2109
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasFriendId:Z

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 2102
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasIsMe:Z

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 2095
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasProviderId:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 2116
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasSyncAnchor:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2088
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$5800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 1

    .prologue
    .line 2189
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 1

    .prologue
    .line 2193
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method
