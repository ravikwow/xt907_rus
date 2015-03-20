.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncPushData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    }
.end annotation


# static fields
.field public static final CHANNEL_FIELD_NUMBER:I = 0x2

.field public static final SERVER_ANCHOR_FIELD_NUMBER:I = 0x3

.field public static final SYNC_APP_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;


# instance fields
.field private channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

.field private hasChannel:Z

.field private hasServerAnchor:Z

.field private hasSyncAppId:Z

.field private serverAnchor_:J

.field private syncAppId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3443
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    .line 3444
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 3445
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->initFields()V

    .line 3446
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 3175
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3202
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->syncAppId_:I

    .line 3216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->serverAnchor_:J

    .line 3176
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->initFields()V

    .line 3177
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 3172
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 3178
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3202
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->syncAppId_:I

    .line 3216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->serverAnchor_:J

    .line 3178
    return-void
.end method

.method static synthetic access$14202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .param p1, "x1"    # Z

    .prologue
    .line 3172
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasSyncAppId:Z

    return p1
.end method

.method static synthetic access$14302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .param p1, "x1"    # I

    .prologue
    .line 3172
    iput p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->syncAppId_:I

    return p1
.end method

.method static synthetic access$14402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .param p1, "x1"    # Z

    .prologue
    .line 3172
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasChannel:Z

    return p1
.end method

.method static synthetic access$14500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    return-object v0
.end method

.method static synthetic access$14502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .param p1, "x1"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .prologue
    .line 3172
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    return-object p1
.end method

.method static synthetic access$14602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .param p1, "x1"    # Z

    .prologue
    .line 3172
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasServerAnchor:Z

    return p1
.end method

.method static synthetic access$14702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .param p1, "x1"    # J

    .prologue
    .line 3172
    iput-wide p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->serverAnchor_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1

    .prologue
    .line 3182
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3191
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncPushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$13700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3221
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3222
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 1

    .prologue
    .line 3290
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$14000()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    .prologue
    .line 3293
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3259
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    .line 3260
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3261
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v1

    .line 3263
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3270
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    .line 3271
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3272
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v1

    .line 3274
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3226
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3232
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3280
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3286
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3248
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3254
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3237
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3243
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChannel()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1

    .prologue
    .line 3211
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1

    .prologue
    .line 3186
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    return-object v0
.end method

.method public getServerAnchor()J
    .locals 2

    .prologue
    .line 3218
    iget-wide v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->serverAnchor_:J

    return-wide v0
.end method

.method public getSyncAppId()I
    .locals 1

    .prologue
    .line 3204
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->syncAppId_:I

    return v0
.end method

.method public hasChannel()Z
    .locals 1

    .prologue
    .line 3210
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasChannel:Z

    return v0
.end method

.method public hasServerAnchor()Z
    .locals 1

    .prologue
    .line 3217
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasServerAnchor:Z

    return v0
.end method

.method public hasSyncAppId()Z
    .locals 1

    .prologue
    .line 3203
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasSyncAppId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3196
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncPushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$13800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 1

    .prologue
    .line 3291
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 1

    .prologue
    .line 3295
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method
