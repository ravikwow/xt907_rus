.class public Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;
.super Ljava/lang/Object;
.source "GetUpdateFromWSColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$1;,
        Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;,
        Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_ANCHOR_VALUE:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "GtUpdtFrmWSColl"


# instance fields
.field private mClientAnchor:J

.field private mExtendedStatus:Ljava/lang/String;

.field private mIsBatchingProhibited:Z

.field private mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

.field private mRetryCount:I

.field private mServerChanges:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

.field private mSyncAppId:I


# direct methods
.method public constructor <init>(ILcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;IJZ)V
    .locals 0
    .param p1, "retryCount"    # I
    .param p2, "proxy"    # Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;
    .param p3, "syncAppId"    # I
    .param p4, "clientAnchor"    # J
    .param p6, "isBatchingProhibited"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mRetryCount:I

    .line 34
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    .line 35
    iput p3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mSyncAppId:I

    .line 36
    iput-wide p4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mClientAnchor:J

    .line 37
    iput-boolean p6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mIsBatchingProhibited:Z

    .line 38
    return-void
.end method


# virtual methods
.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getServerDiffs()Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mServerChanges:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    return-object v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;
    .locals 8

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "updateResponse":Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    :try_start_0
    iget-boolean v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mIsBatchingProhibited:Z

    if-eqz v4, :cond_0

    .line 48
    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    iget v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mSyncAppId:I

    iget-wide v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mClientAnchor:J

    invoke-interface {v4, v5, v6, v7}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->getServerUpdateWithoutBatching(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v2

    .line 52
    :goto_0
    if-nez v2, :cond_1

    .line 53
    const-string v4, "Sync web-service proxy returned a null update response."

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    .line 54
    const-string v4, "GtUpdtFrmWSColl"

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    .line 117
    :goto_1
    return-object v4

    .line 50
    :cond_0
    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    iget v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mSyncAppId:I

    iget-wide v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mClientAnchor:J

    invoke-interface {v4, v5, v6, v7}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->getServerUpdate(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v2

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getWSErrorCode()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    .line 58
    .local v3, "wsErrorCode":Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_3

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    .line 62
    const-string v4, "GtUpdtFrmWSColl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync update request for app id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mSyncAppId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v4, "GtUpdtFrmWSColl"

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 77
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto :goto_1

    .line 60
    :cond_2
    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    goto :goto_2

    .line 70
    :pswitch_0
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto :goto_1

    .line 75
    :pswitch_1
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getStatus()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->valueOf(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    move-result-object v1

    .line 82
    .local v1, "syncStatus":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$1;->$SwitchMap$com$motorola$blur$service$sync$protocol$SyncWsProtocol$SyncWSStatusCode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 108
    const-string v4, "GtUpdtFrmWSColl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error code from cloud: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, ""

    :goto_3
    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    .line 111
    const-string v4, "GtUpdtFrmWSColl"

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto/16 :goto_1

    .line 85
    :pswitch_2
    new-instance v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;

    invoke-direct {v4, p0, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;-><init>(Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;)V

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mServerChanges:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    .line 86
    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getIsMore()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    const-string v4, "GtUpdtFrmWSColl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server indicates that there are more changes to fetch for app id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mSyncAppId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->OK_IS_MORE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto/16 :goto_1

    .line 92
    :cond_4
    const-string v4, "GtUpdtFrmWSColl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No further changes on server for app id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mSyncAppId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->OK_DONE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto/16 :goto_1

    .line 96
    :pswitch_3
    const-string v4, "GtUpdtFrmWSColl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server has requested recovery based on client data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mSyncAppId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->SERVER_RECOVERY_REQUIRED:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto/16 :goto_1

    .line 103
    :pswitch_4
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->RESET_REQUIRED_DUE_TO_INVALID_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto/16 :goto_1

    .line 106
    :pswitch_5
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto/16 :goto_1

    .line 109
    :cond_5
    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getExtendedStatus()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_3

    .line 114
    .end local v1    # "syncStatus":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .end local v3    # "wsErrorCode":Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    .line 116
    const-string v4, "GtUpdtFrmWSColl"

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    goto/16 :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 82
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    move-result-object v0

    return-object v0
.end method

.method public retryCount()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->mRetryCount:I

    return v0
.end method
