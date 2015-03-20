.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WSUpdateResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    }
.end annotation


# static fields
.field public static final APP_DATA_FIELD_NUMBER:I = 0x6

.field public static final CHANGES_SINCE_ANCHOR_FIELD_NUMBER:I = 0x4

.field public static final CURRENT_SERVER_ANCHOR_FIELD_NUMBER:I = 0x5

.field public static final DATA_FORMAT_FIELD_NUMBER:I = 0x65

.field public static final EXTENDED_STATUS_FIELD_NUMBER:I = 0x3

.field public static final IS_MORE_FIELD_NUMBER:I = 0x7

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x64

.field public static final MESSAGE_VERSION_FIELD_NUMBER:I = 0x1

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final SYNC_APP_ID_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;


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

.field private hasMessageType:Z

.field private hasMessageVersion:Z

.field private hasStatus:Z

.field private hasSyncAppId:Z

.field private isMore_:Z

.field private messageType_:Ljava/lang/String;

.field private messageVersion_:I

.field private status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field private syncAppId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1319
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    .line 1320
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internalForceInit()V

    .line 1321
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->initFields()V

    .line 1322
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 874
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 901
    iput v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageVersion_:I

    .line 915
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->extendedStatus_:Ljava/lang/String;

    .line 922
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;

    .line 929
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->currentServerAnchor_:Ljava/lang/String;

    .line 936
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;

    .line 943
    iput-boolean v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->isMore_:Z

    .line 950
    iput v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->syncAppId_:I

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageType_:Ljava/lang/String;

    .line 964
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->dataFormat_:Ljava/lang/String;

    .line 875
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->initFields()V

    .line 876
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 877
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 901
    iput v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageVersion_:I

    .line 915
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->extendedStatus_:Ljava/lang/String;

    .line 922
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;

    .line 929
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->currentServerAnchor_:Ljava/lang/String;

    .line 936
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;

    .line 943
    iput-boolean v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->isMore_:Z

    .line 950
    iput v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->syncAppId_:I

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageType_:Ljava/lang/String;

    .line 964
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->dataFormat_:Ljava/lang/String;

    .line 877
    return-void
.end method

.method static synthetic access$3302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageVersion:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # I

    .prologue
    .line 871
    iput p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageVersion_:I

    return p1
.end method

.method static synthetic access$3502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasStatus:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasExtendedStatus:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->extendedStatus_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasChangesSinceAnchor:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasCurrentServerAnchor:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->currentServerAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasAppData:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasIsMore:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->isMore_:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasSyncAppId:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # I

    .prologue
    .line 871
    iput p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->syncAppId_:I

    return p1
.end method

.method static synthetic access$4902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageType:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasDataFormat:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->dataFormat_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1

    .prologue
    .line 881
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 890
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 969
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 970
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 1038
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3100()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    .prologue
    .line 1041
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    .line 1008
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v1

    .line 1011
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    .line 1019
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v1

    .line 1022
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 974
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 980
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1028
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1034
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 996
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 985
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 991
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChangesSinceAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentServerAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->currentServerAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->dataFormat_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1

    .prologue
    .line 885
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->defaultInstance:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    return-object v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->extendedStatus_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMore()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->isMore_:Z

    return v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageType_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageVersion()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageVersion_:I

    return v0
.end method

.method public getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object v0
.end method

.method public getSyncAppId()I
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->syncAppId_:I

    return v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasAppData:Z

    return v0
.end method

.method public hasChangesSinceAnchor()Z
    .locals 1

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasChangesSinceAnchor:Z

    return v0
.end method

.method public hasCurrentServerAnchor()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasCurrentServerAnchor:Z

    return v0
.end method

.method public hasDataFormat()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasDataFormat:Z

    return v0
.end method

.method public hasExtendedStatus()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasExtendedStatus:Z

    return v0
.end method

.method public hasIsMore()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasIsMore:Z

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageType:Z

    return v0
.end method

.method public hasMessageVersion()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageVersion:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 909
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasStatus:Z

    return v0
.end method

.method public hasSyncAppId()Z
    .locals 1

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasSyncAppId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 895
    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 1039
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 1043
    invoke-static {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method
