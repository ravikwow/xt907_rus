.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.super Ljava/lang/Object;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;,
        Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_ModuleCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ModuleCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ModuleCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ModuleCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ModuleUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ModuleUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ModuleUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ModuleUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SyncChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SyncChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SyncChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SyncChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SyncPushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SyncPushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_WSBatchedUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_WSBatchedUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_WSBatchedUpdateRequests_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_WSBatchedUpdateRequests_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_WSCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_WSCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_WSCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_WSCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_WSUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_WSUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_WSUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_WSUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3987
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0016sync_ws_protocol.proto\"]\n\u0017WSBatchedUpdateRequests\u0012\u0017\n\u000fmessage_version\u0018\u0001 \u0002(\r\u0012)\n\u0008requests\u0018\u0002 \u0003(\u000b2\u0017.WSBatchedUpdateRequest\"o\n\u0016WSBatchedUpdateRequest\u0012\u0013\n\u000bsync_app_id\u0018\u0002 \u0001(\r\u0012\u0013\n\u000bsync_anchor\u0018\u0003 \u0001(\u0004\u0012\u0018\n\u0010sync_data_format\u0018\u0004 \u0001(\t\u0012\u0011\n\tpage_size\u0018\u0005 \u0001(\r\"(\n\u000fWSUpdateRequest\u0012\u0015\n\roptional_data\u0018\u0002 \u0001(\u000c\"\u0087\u0002\n\u0010WSUpdateResponse\u0012\u0017\n\u000fmessage_version\u0018\u0001 \u0002(\r\u0012!\n\u0006status\u0018\u0002 \u0002(\u000e2\u0011.SyncWSStatusCode\u0012\u0017\n\u000fextended_status\u0018\u0003 \u0001(\t\u0012\u001c\n\u0014changes_since_an"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "chor\u0018\u0004 \u0001(\t\u0012\u001d\n\u0015current_server_anchor\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008app_data\u0018\u0006 \u0001(\u000c\u0012\u000f\n\u0007is_more\u0018\u0007 \u0001(\u0008\u0012\u0013\n\u000bsync_app_id\u0018\u0008 \u0001(\r\u0012\u0014\n\u000cmessage_type\u0018d \u0001(\t\u0012\u0013\n\u000bdata_format\u0018e \u0001(\t\"u\n\u000fWSCommitRequest\u0012\u0017\n\u000fmessage_version\u0018\u0001 \u0002(\r\u0012\u0010\n\u0008app_data\u0018\u0002 \u0001(\u000c\u0012!\n\u0019is_full_sync_for_recovery\u0018\u0003 \u0001(\u0008\u0012\u0014\n\u000cmessage_type\u0018d \u0001(\t\"\u00c9\u0001\n\u0010WSCommitResponse\u0012\u0017\n\u000fmessage_version\u0018\u0001 \u0002(\r\u0012!\n\u0006status\u0018\u0002 \u0002(\u000e2\u0011.SyncWSStatusCode\u0012\u0017\n\u000fextended_status\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012last_client_anchor\u0018\u0004 \u0001(\t\u0012\u0019\n\u0011new"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "_server_anchor\u0018\u0005 \u0001(\t\u0012\u0014\n\u000cmessage_type\u0018d \u0001(\t\u0012\u0013\n\u000bdata_format\u0018e \u0001(\t\",\n\u0013ModuleUpdateRequest\u0012\u0015\n\roptional_data\u0018\u0002 \u0001(\u000c\"\u00dc\u0001\n\u0014ModuleUpdateResponse\u0012!\n\u0006status\u0018\u0002 \u0002(\u000e2\u0011.SyncWSStatusCode\u0012\u0017\n\u000fextended_status\u0018\u0003 \u0001(\t\u0012\u001c\n\u0014changes_since_anchor\u0018\u0004 \u0001(\t\u0012\u001d\n\u0015current_server_anchor\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008app_data\u0018\u0006 \u0001(\u000c\u0012\u000f\n\u0007is_more\u0018\u0007 \u0001(\u0008\u0012\u0013\n\u000bsync_app_id\u0018\u0008 \u0001(\r\u0012\u0013\n\u000bdata_format\u0018e \u0001(\t\"J\n\u0013ModuleCommitRequest\u0012\u0010\n\u0008app_data\u0018\u0002 \u0001(\u000c\u0012!\n\u0019is_full_sync_for_recove"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ry\u0018\u0003 \u0001(\u0008\"\u009e\u0001\n\u0014ModuleCommitResponse\u0012!\n\u0006status\u0018\u0002 \u0002(\u000e2\u0011.SyncWSStatusCode\u0012\u0017\n\u000fextended_status\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012last_client_anchor\u0018\u0004 \u0001(\t\u0012\u0019\n\u0011new_server_anchor\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bdata_format\u0018e \u0001(\t\"Y\n\u000cSyncPushData\u0012\u0013\n\u000bsync_app_id\u0018\u0001 \u0002(\r\u0012\u001d\n\u0007channel\u0018\u0002 \u0001(\u000b2\u000c.SyncChannel\u0012\u0015\n\rserver_anchor\u0018\u0003 \u0001(\u0004\"\u001b\n\u000bSyncChannel\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\".\n\u000cSyncChannels\u0012\u001e\n\u0008channels\u0018\u0001 \u0003(\u000b2\u000c.SyncChannel*\u00c5\u0002\n\u0010SyncWSStatusCode\u0012\u0006\n\u0002OK\u0010\u0000\u0012\u0012\n\rERROR_UNKNOWN\u0010\u00e8\u0007\u0012 \n\u001bERROR_INTE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "RNAL_SERVER_ERROR\u0010\u00f2\u0007\u0012\u0010\n\u000bERROR_PARSE\u0010\u00fc\u0007\u0012\u0019\n\u0014ERROR_UNKNOWN_APP_ID\u0010\u00d0\u000f\u0012\u001a\n\u0015ERROR_INVALID_REQUEST\u0010\u00da\u000f\u0012\u001e\n\u0019ERROR_STALE_CLIENT_ANCHOR\u0010\u00b8\u0017\u0012\u0019\n\u0014ERROR_INVALID_ANCHOR\u0010\u00c2\u0017\u0012\"\n\u001dERROR_INCONSISTENT_SYNC_STATE\u0010\u00cc\u0017\u0012&\n!ERROR_CLIENT_ANCHOR_NOT_SUPPORTED\u0010\u00d6\u0017\u0012#\n\u001eERROR_SERVER_REQUESTS_RECOVERY\u0010\u00e0\u0017B+\n\'com.motorola.blur.service.sync.protocolH\u0002"

    aput-object v3, v1, v2

    .line 4037
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;-><init>()V

    .line 4149
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 4153
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequests_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequests_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequests_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequests_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$11300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$12200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$12300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$13700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncPushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncPushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$13800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncPushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncPushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$14800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$14900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$15500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$15600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$15602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$16102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$8500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$8600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 3982
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 4155
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
