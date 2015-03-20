.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleUpdateResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    }
.end annotation


# static fields
.field public static final APP_DATA_FIELD_NUMBER:I = 0x6

.field public static final CHANGES_SINCE_ANCHOR_FIELD_NUMBER:I = 0x4

.field public static final CURRENT_SERVER_ANCHOR_FIELD_NUMBER:I = 0x5

.field public static final DATA_FORMAT_FIELD_NUMBER:I = 0x65

.field public static final EXTENDED_STATUS_FIELD_NUMBER:I = 0x3

.field public static final IS_MORE_FIELD_NUMBER:I = 0x7

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final SYNC_APP_ID_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;


# instance fields
.field private appData_:Lcom/google/protobuf/ByteString;

.field private changesSinceAnchor_:Ljava/lang/String;

.field private currentServerAnchor_:Ljava/lang/String;

.field private dataFormat_:Ljava/lang/String;

.field private extendedStatus_:Ljava/lang/String;

.field private hasAppData:Z

.field private hasChangesSinceAnchor:Z

.field private hasCurrentServerAnchor:Z

.field private hasDataFormat:Z

.field private hasExtendedStatus:Z

.field private hasIsMore:Z

.field private hasStatus:Z

.field private hasSyncAppId:Z

.field private isMore_:Z

.field private status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field private syncAppId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2602
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    .line 2603
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 2604
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->initFields()V

    .line 2605
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2210
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2244
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->extendedStatus_:Ljava/lang/String;

    .line 2251
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;

    .line 2258
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->currentServerAnchor_:Ljava/lang/String;

    .line 2265
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;

    .line 2272
    iput-boolean v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->isMore_:Z

    .line 2279
    iput v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->syncAppId_:I

    .line 2286
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->dataFormat_:Ljava/lang/String;

    .line 2211
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->initFields()V

    .line 2212
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 2207
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2213
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2244
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->extendedStatus_:Ljava/lang/String;

    .line 2251
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;

    .line 2258
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->currentServerAnchor_:Ljava/lang/String;

    .line 2265
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;

    .line 2272
    iput-boolean v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->isMore_:Z

    .line 2279
    iput v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->syncAppId_:I

    .line 2286
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->dataFormat_:Ljava/lang/String;

    .line 2213
    return-void
.end method

.method static synthetic access$10002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->extendedStatus_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2207
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasChangesSinceAnchor:Z

    return p1
.end method

.method static synthetic access$10202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2207
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasCurrentServerAnchor:Z

    return p1
.end method

.method static synthetic access$10402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->currentServerAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2207
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasAppData:Z

    return p1
.end method

.method static synthetic access$10602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2207
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasIsMore:Z

    return p1
.end method

.method static synthetic access$10802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2207
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->isMore_:Z

    return p1
.end method

.method static synthetic access$10902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2207
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasSyncAppId:Z

    return p1
.end method

.method static synthetic access$11002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # I

    .prologue
    .line 2207
    iput p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->syncAppId_:I

    return p1
.end method

.method static synthetic access$11102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2207
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasDataFormat:Z

    return p1
.end method

.method static synthetic access$11202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->dataFormat_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2207
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasStatus:Z

    return p1
.end method

.method static synthetic access$9802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2207
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasExtendedStatus:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1

    .prologue
    .line 2217
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2226
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$9200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2291
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 2292
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 2360
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9500()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    .prologue
    .line 2363
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2329
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    .line 2330
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2331
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v1

    .line 2333
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2340
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    .line 2341
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2342
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v1

    .line 2344
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2296
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2302
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2350
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2356
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2318
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2324
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2307
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2313
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChangesSinceAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentServerAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->currentServerAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->dataFormat_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2207
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2207
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1

    .prologue
    .line 2221
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    return-object v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->extendedStatus_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMore()Z
    .locals 1

    .prologue
    .line 2274
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->isMore_:Z

    return v0
.end method

.method public getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object v0
.end method

.method public getSyncAppId()I
    .locals 1

    .prologue
    .line 2281
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->syncAppId_:I

    return v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 2266
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasAppData:Z

    return v0
.end method

.method public hasChangesSinceAnchor()Z
    .locals 1

    .prologue
    .line 2252
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasChangesSinceAnchor:Z

    return v0
.end method

.method public hasCurrentServerAnchor()Z
    .locals 1

    .prologue
    .line 2259
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasCurrentServerAnchor:Z

    return v0
.end method

.method public hasDataFormat()Z
    .locals 1

    .prologue
    .line 2287
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasDataFormat:Z

    return v0
.end method

.method public hasExtendedStatus()Z
    .locals 1

    .prologue
    .line 2245
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasExtendedStatus:Z

    return v0
.end method

.method public hasIsMore()Z
    .locals 1

    .prologue
    .line 2273
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasIsMore:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 2238
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasStatus:Z

    return v0
.end method

.method public hasSyncAppId()Z
    .locals 1

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasSyncAppId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2231
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$9300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2207
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2207
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 2361
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2207
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2207
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 2365
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method
