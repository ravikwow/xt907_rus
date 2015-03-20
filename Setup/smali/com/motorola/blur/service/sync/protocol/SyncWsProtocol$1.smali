.class final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;
.super Ljava/lang/Object;
.source "SyncWsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 10
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4041
    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$16102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4042
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequests_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4044
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequests_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MessageVersion"

    aput-object v3, v2, v5

    const-string v3, "Requests"

    aput-object v3, v2, v6

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequests_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4050
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4052
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "SyncAppId"

    aput-object v3, v2, v5

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v6

    const-string v3, "SyncDataFormat"

    aput-object v3, v2, v7

    const-string v3, "PageSize"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSBatchedUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4058
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4060
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "OptionalData"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4066
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4068
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MessageVersion"

    aput-object v3, v2, v5

    const-string v3, "Status"

    aput-object v3, v2, v6

    const-string v3, "ExtendedStatus"

    aput-object v3, v2, v7

    const-string v3, "ChangesSinceAnchor"

    aput-object v3, v2, v8

    const-string v3, "CurrentServerAnchor"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "AppData"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "IsMore"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "SyncAppId"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "MessageType"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "DataFormat"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$2902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4074
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$5302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4076
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$5300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "MessageVersion"

    aput-object v3, v2, v5

    const-string v3, "AppData"

    aput-object v3, v2, v6

    const-string v3, "IsFullSyncForRecovery"

    aput-object v3, v2, v7

    const-string v3, "MessageType"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$5402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4082
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$6602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4084
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$6600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MessageVersion"

    aput-object v3, v2, v5

    const-string v3, "Status"

    aput-object v3, v2, v6

    const-string v3, "ExtendedStatus"

    aput-object v3, v2, v7

    const-string v3, "LastClientAnchor"

    aput-object v3, v2, v8

    const-string v3, "NewServerAnchor"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "MessageType"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DataFormat"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_WSCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$6702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4090
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$8502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4092
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$8500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "OptionalData"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$8602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4098
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$9202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4100
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$9200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Status"

    aput-object v3, v2, v5

    const-string v3, "ExtendedStatus"

    aput-object v3, v2, v6

    const-string v3, "ChangesSinceAnchor"

    aput-object v3, v2, v7

    const-string v3, "CurrentServerAnchor"

    aput-object v3, v2, v8

    const-string v3, "AppData"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "IsMore"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "SyncAppId"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DataFormat"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$9302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4106
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$11302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4108
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$11300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AppData"

    aput-object v3, v2, v5

    const-string v3, "IsFullSyncForRecovery"

    aput-object v3, v2, v6

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$11402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4114
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$12202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4116
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$12200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Status"

    aput-object v3, v2, v5

    const-string v3, "ExtendedStatus"

    aput-object v3, v2, v6

    const-string v3, "LastClientAnchor"

    aput-object v3, v2, v7

    const-string v3, "NewServerAnchor"

    aput-object v3, v2, v8

    const-string v3, "DataFormat"

    aput-object v3, v2, v9

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_ModuleCommitResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$12302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4122
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncPushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$13702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4124
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncPushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$13700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SyncAppId"

    aput-object v3, v2, v5

    const-string v3, "Channel"

    aput-object v3, v2, v6

    const-string v3, "ServerAnchor"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncPushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$13802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4130
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$14802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4132
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$14800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$14902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4138
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$15502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4140
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$15500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Channels"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    const-class v4, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->internal_static_SyncChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->access$15602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4146
    const/4 v0, 0x0

    return-object v0
.end method
