.class public Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;
.super Ljava/lang/Object;
.source "TwoWaySyncProtocolMediator.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolMediator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;,
        Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolMediator",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CLIENT_OUT_OF_DATE_RETRIES:I = 0x5

.field private static final MAX_CLIENT_PAGE_COUNT:I = 0x32

.field private static final MAX_COMMIT_WS_RETRIES:I = 0x2

.field private static final MAX_GET_ADAPTER_CHANGES_RETRIES:I = 0x5

.field private static final MAX_UPDATE_ADAPTER_RETRIES:I = 0x5

.field private static final MAX_UPDATE_WS_RETRIES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "2WySncPrtclMdtr"


# instance fields
.field private mAdapterGetChangesRetryCount:I

.field private mAdapterUpdateRetryCount:I

.field private mAreClientChangelistsPaged:Z

.field private mClientAnchor:J

.field private mClientChangelistPageSize:I

.field private mClientData:[B

.field private mClientOutOfDateCount:I

.field private mClientPageCount:I

.field private mConflictResolver:Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;

.field private mConflictStrategyType:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

.field private mConflicts:[B

.field private mDescription:Ljava/lang/String;

.field private mFormat:Ljava/lang/String;

.field private mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

.field private mInitialAnchor:J

.field private mIsBatchingProhibited:Z

.field private mIsForced:Z

.field private mIsMoreDataOnServer:Z

.field private mNewServerAnchor:J

.field private mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

.field private mServerChanges:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

.field private mServiceName:Ljava/lang/String;

.field private mShouldOverwriteServerData:Z

.field private mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field private mSyncAppId:I

.field private mValues:Landroid/content/ContentValues;

.field private mWsCommitRetryCount:I

.field private mWsUpdateRetryCount:I


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;ZZ)V
    .locals 2
    .param p1, "helper"    # Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;
    .param p2, "isForced"    # Z
    .param p3, "isBatchingProhibited"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsUpdateRetryCount:I

    .line 47
    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterUpdateRetryCount:I

    .line 48
    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterGetChangesRetryCount:I

    .line 49
    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsCommitRetryCount:I

    .line 50
    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientOutOfDateCount:I

    .line 51
    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientPageCount:I

    .line 56
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mIsMoreDataOnServer:Z

    .line 57
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mShouldOverwriteServerData:Z

    .line 58
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAreClientChangelistsPaged:Z

    .line 61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mValues:Landroid/content/ContentValues;

    .line 65
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    .line 67
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->serviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServiceName:Ljava/lang/String;

    .line 68
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->initialAnchor()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mInitialAnchor:J

    .line 69
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->syncAppID()I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mSyncAppId:I

    .line 70
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->conflictResolver()Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mConflictResolver:Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;

    .line 71
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->conflictStrategyType()Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mConflictStrategyType:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    .line 72
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->description()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    .line 73
    iput-boolean p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mIsForced:Z

    .line 74
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->dataFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mFormat:Ljava/lang/String;

    .line 75
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->areCommitsPaged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAreClientChangelistsPaged:Z

    .line 76
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->defaultCommitPageSize()I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientChangelistPageSize:I

    .line 77
    iput-boolean p3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mIsBatchingProhibited:Z

    .line 78
    return-void

    .line 72
    :cond_0
    invoke-interface {p1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    .locals 1
    .param p1, "code"    # Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 752
    if-nez p2, :cond_0

    .line 753
    const-string p2, "Error occured, but no message provided."

    .line 755
    :cond_0
    invoke-static {p1, p2}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->create(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v0

    return-object v0
.end method

.method private handleAreClientChanges2(Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;)V
    .locals 7
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;

    .prologue
    .line 513
    iget v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientPageCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientPageCount:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 514
    const-string v0, "Too many client changelist pages.  Bailing to avoid looping any further."

    .line 515
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 516
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->WARNING:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 517
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_WARNING:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v2, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 548
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;

    move-result-object v1

    .line 521
    .local v1, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CheckAdapterForChangesColleague$Result:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 539
    const-string v2, "2WySncPrtclMdtr"

    const-string v3, "%s: Error with unconsidered are-client-changes return type."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 544
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 523
    :pswitch_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->areClientChanges()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    const-string v2, "2WySncPrtclMdtr"

    const-string v3, "Client has changes."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CHANGES_FROM_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 527
    :cond_1
    const-string v2, "2WySncPrtclMdtr"

    const-string v3, "No client changes."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->SUCCESS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 533
    :pswitch_1
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 534
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleCheckAdapterForChangesIfUnforced(Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;)V
    .locals 3
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;

    move-result-object v0

    .line 260
    .local v0, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CheckAdapterForChangesColleague$Result:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 272
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 273
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 277
    :goto_0
    return-void

    .line 262
    :pswitch_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->areClientChanges()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "2WySncPrtclMdtr"

    const-string v2, "Client has changes, so executing sync."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 266
    :cond_0
    const-string v1, "2WySncPrtclMdtr"

    const-string v2, "No client changes, so aborting sync."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->SUCCESS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCommitAdapter(Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague;)V
    .locals 6
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague;

    .prologue
    const/4 v5, 0x0

    .line 691
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague$Result;

    move-result-object v0

    .line 692
    .local v0, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague$Result;
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CommitAdapterColleague$Result:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 708
    const-string v1, "2WySncPrtclMdtr"

    const-string v2, "%s: Error with unconsidered commit-adapter return type."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 711
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 715
    :goto_0
    return-void

    .line 694
    :pswitch_0
    const-string v1, "2WySncPrtclMdtr"

    const-string v2, "Commit to adapter successful"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iput-boolean v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mShouldOverwriteServerData:Z

    .line 696
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ACK_CLIENT_ANCHOR_CHANGE_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 697
    iget-wide v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mNewServerAnchor:J

    iput-wide v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientAnchor:J

    goto :goto_0

    .line 701
    :pswitch_1
    const-string v1, "2WySncPrtclMdtr"

    const-string v2, "Commit to adapter error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 703
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleGetChangesFromAdapter(Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;)V
    .locals 9
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;

    .prologue
    const/4 v8, 0x1

    .line 551
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;

    move-result-object v2

    .line 552
    .local v2, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;
    const/4 v1, 0x1

    .line 554
    .local v1, "resetRetryCount":Z
    :try_start_0
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetChangesFromAdapterColleague$Result:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v3, :pswitch_data_0

    .line 591
    :goto_0
    if-eqz v1, :cond_0

    .line 592
    iput v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterGetChangesRetryCount:I

    .line 595
    :cond_0
    return-void

    .line 556
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->getClientData()[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientData:[B

    .line 557
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->SEND_COMMIT_TO_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 592
    iput v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterGetChangesRetryCount:I

    :cond_1
    throw v3

    .line 561
    :pswitch_1
    :try_start_2
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 562
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 567
    :pswitch_2
    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterGetChangesRetryCount:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 569
    const-string v4, "%s: Getting changes from adapter failed, and max number of retries reached. %s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_1
    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "2WySncPrtclMdtr"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 575
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_UPDATE_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v3, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 569
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 578
    :cond_3
    const-string v4, "2WySncPrtclMdtr"

    const-string v5, "%s: Getting changes from adapter failed, but will retry. %s"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_2
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterUpdateRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterUpdateRetryCount:I

    .line 583
    const/4 v1, 0x0

    .line 585
    goto/16 :goto_0

    .line 578
    :cond_4
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->extendedStatus()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_2

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleGetClientAnchor(Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;)V
    .locals 5
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;

    move-result-object v0

    .line 281
    .local v0, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetClientAnchorColleague$Result:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 290
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 291
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 296
    :goto_0
    return-void

    .line 283
    :pswitch_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->getAnchor()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientAnchor:J

    .line 284
    const-string v1, "2WySncPrtclMdtr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client is at anchor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientAnchor:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_UPDATE_FROM_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleGetUpdateFromWS(Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;)V
    .locals 9
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 299
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    move-result-object v2

    .line 300
    .local v2, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;
    const/4 v1, 0x1

    .line 302
    .local v1, "resetRetryCount":Z
    :try_start_0
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 369
    const-string v3, "2WySncPrtclMdtr"

    const-string v4, "%s: Error with unconsidered ws-update return type."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 372
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :goto_0
    if-eqz v1, :cond_0

    .line 378
    iput v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsUpdateRetryCount:I

    .line 381
    :cond_0
    return-void

    .line 304
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->getServerDiffs()Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServerChanges:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    .line 305
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->UPDATE_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 306
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mIsMoreDataOnServer:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 378
    iput v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsUpdateRetryCount:I

    :cond_1
    throw v3

    .line 310
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->getServerDiffs()Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServerChanges:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    .line 311
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->UPDATE_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 312
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mIsMoreDataOnServer:Z

    goto :goto_0

    .line 317
    :pswitch_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mShouldOverwriteServerData:Z

    .line 318
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESET_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 324
    :pswitch_3
    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v3}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->getSyncType()Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper$SyncType;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper$SyncType;->ONE_WAY_SERVER_TO_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper$SyncType;

    if-ne v3, v4, :cond_2

    .line 325
    const-string v3, "2WySncPrtclMdtr"

    const-string v4, "This handler only gets data from the server, so we\'ll just reset the client."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mShouldOverwriteServerData:Z

    .line 328
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESET_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 330
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mShouldOverwriteServerData:Z

    .line 331
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CHANGES_FROM_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 339
    :pswitch_4
    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsUpdateRetryCount:I

    if-lt v3, v5, :cond_4

    .line 341
    const-string v4, "%s: WS update failed, and max number of retries reached. %s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_1
    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "2WySncPrtclMdtr"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 347
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_UPDATE_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v3, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 341
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 350
    :cond_4
    const-string v4, "2WySncPrtclMdtr"

    const-string v5, "%s: WS update failed, but will retry. %s"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, ""

    :goto_2
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsUpdateRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsUpdateRetryCount:I

    .line 354
    const/4 v1, 0x0

    .line 356
    goto/16 :goto_0

    .line 350
    :cond_5
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 359
    :pswitch_5
    const-string v4, "2WySncPrtclMdtr"

    const-string v5, "%s: Server reports that the client is in an inconsistent sync state in response to update WS call.  Only recourse is to reset client.  More info: %s"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, ""

    :goto_3
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESET_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto/16 :goto_0

    .line 359
    :cond_6
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;->extendedStatus()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_3

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleResetAdapter(Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;)V
    .locals 6
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;

    .prologue
    .line 467
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;

    move-result-object v0

    .line 468
    .local v0, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResetAdapterColleague$Result:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 480
    const-string v1, "2WySncPrtclMdtr"

    const-string v2, "%s: Error with unconsidered reset-adapter return type."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 483
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 487
    :goto_0
    return-void

    .line 470
    :pswitch_0
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 474
    :pswitch_1
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 475
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleResolveConflicts(Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;)V
    .locals 6
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;

    .prologue
    .line 490
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    move-result-object v0

    .line 491
    .local v0, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResolveConflictsColleague$Result:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 503
    const-string v1, "2WySncPrtclMdtr"

    const-string v2, "%s: Error with unconsidered resolve-conflicts return type."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 506
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 510
    :goto_0
    return-void

    .line 493
    :pswitch_0
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->UPDATE_ADAPTER_AFTER_CONFLICT_RESOLUTION:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 497
    :pswitch_1
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 498
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSendCommitToWS(Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;)V
    .locals 10
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    .line 598
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    move-result-object v3

    .line 599
    .local v3, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;
    const/4 v2, 0x1

    .line 600
    .local v2, "resetWsRetryCount":Z
    const/4 v1, 0x1

    .line 602
    .local v1, "resetOutOfDateClientRetryCount":Z
    :try_start_0
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 673
    const-string v4, "2WySncPrtclMdtr"

    const-string v5, "%s: Error with unconsidered ws-commit return type."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 676
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    :goto_0
    if-eqz v2, :cond_0

    .line 682
    iput v9, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsCommitRetryCount:I

    .line 684
    :cond_0
    if-eqz v1, :cond_1

    .line 685
    iput v9, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientOutOfDateCount:I

    .line 688
    :cond_1
    return-void

    .line 604
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->getNewServerAnchor()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_4

    .line 605
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 606
    const-string v4, "%s: Commit response did not return the new server anchor.  Internal server error?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "msg":Ljava/lang/String;
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_COMMIT_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v4, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 681
    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 682
    iput v9, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsCommitRetryCount:I

    .line 684
    :cond_2
    if-eqz v1, :cond_3

    .line 685
    iput v9, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientOutOfDateCount:I

    :cond_3
    throw v4

    .line 612
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->getNewServerAnchor()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mNewServerAnchor:J

    .line 613
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->COMMIT_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 618
    :pswitch_1
    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientOutOfDateCount:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 620
    const-string v5, "%s: Send commit failed as the client is out-of-date, and needs to be updated.  However, the max number of retries has been reached. %s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, ""

    :goto_1
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 624
    .restart local v0    # "msg":Ljava/lang/String;
    const-string v4, "2WySncPrtclMdtr"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 626
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_COMMIT_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v4, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 620
    .end local v0    # "msg":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 628
    :cond_6
    const-string v4, "2WySncPrtclMdtr"

    const-string v5, "%s: The server has been updated by another client since this client was last updated.  Attempt %d."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientOutOfDateCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_UPDATE_FROM_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 634
    const/4 v1, 0x0

    .line 635
    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientOutOfDateCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientOutOfDateCount:I

    goto/16 :goto_0

    .line 643
    :pswitch_2
    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsCommitRetryCount:I

    if-ne v4, v6, :cond_8

    .line 645
    const-string v5, "%s: WS commit failed, and max number of retries reached. %s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v4, ""

    :goto_2
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .restart local v0    # "msg":Ljava/lang/String;
    const-string v4, "2WySncPrtclMdtr"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 651
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_COMMIT_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v4, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto/16 :goto_0

    .line 645
    .end local v0    # "msg":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 654
    :cond_8
    const-string v5, "2WySncPrtclMdtr"

    const-string v6, "%s: WS commit failed, but will retry. %s"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v8, v7, v4

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const-string v4, ""

    :goto_3
    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsCommitRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsCommitRetryCount:I

    .line 658
    const/4 v2, 0x0

    .line 660
    goto/16 :goto_0

    .line 654
    :cond_9
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 663
    :pswitch_3
    const-string v5, "2WySncPrtclMdtr"

    const-string v6, "%s: Server reports that the client is in an inconsistent sync state in response to commit WS call.  Only recourse is to reset client.  More info: %s"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v8, v7, v4

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_4
    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-object v4, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESET_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto/16 :goto_0

    .line 663
    :cond_a
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->extendedStatus()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_4

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleUpdateAdapter(Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;)V
    .locals 9
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;

    .prologue
    const/4 v8, 0x1

    .line 406
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    move-result-object v2

    .line 407
    .local v2, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;
    const/4 v1, 0x1

    .line 409
    .local v1, "resetRetryCount":Z
    :try_start_0
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$UpdateAdapterColleague$Result:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 450
    const-string v3, "2WySncPrtclMdtr"

    const-string v4, "%s: Error with unconsidered adapter-update return type."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 455
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :goto_0
    if-eqz v1, :cond_0

    .line 461
    iput v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterUpdateRetryCount:I

    .line 464
    :cond_0
    return-void

    .line 411
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->getNewClientAnchor()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientAnchor:J

    .line 412
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ACK_CLIENT_ANCHOR_CHANGE_1:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 461
    iput v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterUpdateRetryCount:I

    :cond_1
    throw v3

    .line 416
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->getConflicts()[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mConflicts:[B

    .line 417
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESOLVE_CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 421
    :pswitch_2
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 424
    :pswitch_3
    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterUpdateRetryCount:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 426
    const-string v4, "%s: Adapter update failed, and max number of retries reached. %s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_1
    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "2WySncPrtclMdtr"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->REPORT_BAD_UPDATE:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 432
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_UPDATE_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v3, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    goto :goto_0

    .line 426
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 435
    :cond_3
    const-string v4, "2WySncPrtclMdtr"

    const-string v5, "%s: adapter update failed, but will retry. %s"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_2
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterUpdateRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterUpdateRetryCount:I

    .line 439
    const/4 v1, 0x0

    .line 441
    goto :goto_0

    .line 435
    :cond_4
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 444
    :pswitch_4
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 445
    sget-object v3, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private logSyncMsg(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 761
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mValues:Landroid/content/ContentValues;

    const-string v2, "tag"

    const-string v3, "prot"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mValues:Landroid/content/ContentValues;

    const-string v2, "details"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/blur/service/blur/sync/provider/BlurSyncActivity$SyncLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to broadcast a sync message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleAckClientAnchor1(Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;)V
    .locals 5
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;

    .prologue
    .line 384
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;

    move-result-object v0

    .line 385
    .local v0, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$AckClientAnchorChangeColleague$Result:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 396
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 397
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 402
    :goto_0
    return-void

    .line 387
    :pswitch_0
    const-string v1, "2WySncPrtclMdtr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acknowledged that client anchor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientAnchor:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-boolean v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mIsMoreDataOnServer:Z

    if-eqz v1, :cond_0

    .line 389
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 391
    :cond_0
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->CHECK_ADAPTER_FOR_CHANGES_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleAckClientAnchor2(Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;)V
    .locals 5
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;

    .prologue
    .line 718
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;

    move-result-object v0

    .line 719
    .local v0, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$AckClientAnchorChangeColleague$Result:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 726
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 727
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 732
    :goto_0
    return-void

    .line 721
    :pswitch_0
    const-string v1, "2WySncPrtclMdtr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acknowledged that client anchor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientAnchor:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->CHECK_ADAPTER_FOR_CHANGES_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleBadUpdate(Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;)V
    .locals 3
    .param p1, "colleague"    # Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;

    .prologue
    .line 735
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    move-result-object v0

    .line 736
    .local v0, "result":Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$HandleBadUpdateColleague$Result:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 743
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 744
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;->extendedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 749
    :goto_0
    return-void

    .line 738
    :pswitch_0
    const-string v1, "2WySncPrtclMdtr"

    const-string v2, "Reported that update was invalid to ws handler."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    goto :goto_0

    .line 736
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public runProtocol()Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    .locals 13

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "proxy":Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->acquireSyncAdapter()Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    move-result-object v9

    .line 88
    .local v9, "adapter":Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;
    :try_start_0
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;->getInstance()Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;->getBlurSyncWSProxy(Landroid/content/Context;)Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    move-result-object v2

    .line 89
    const/4 v11, 0x0

    .line 91
    .local v11, "isProxyInit":Z
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->START:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 94
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const-string v0, "2WySncPrtclMdtr"

    const-string v1, "Terminating blur sync due to interruption."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_CANCELED:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "%s: Canceled."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->create(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 242
    if-eqz v2, :cond_1

    .line 243
    :try_start_1
    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->releaseSyncAdapter()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 254
    .end local v11    # "isProxyInit":Z
    :goto_2
    return-object v0

    .line 245
    .restart local v11    # "isProxyInit":Z
    :catch_0
    move-exception v10

    .line 246
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The proxy may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 251
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 252
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The sync adapter may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 99
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    const-string v0, "%s: State %s has not been handled."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, "msg":Ljava/lang/String;
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v0, v12}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 230
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    if-eqz v2, :cond_3

    .line 243
    :try_start_4
    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    .line 250
    :cond_3
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->releaseSyncAdapter()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 251
    :catch_2
    move-exception v10

    .line 252
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The sync adapter may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 101
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "msg":Ljava/lang/String;
    :pswitch_0
    :try_start_6
    const-string v0, "%s: Starting sync"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mIsForced:Z

    if-eqz v0, :cond_5

    .line 103
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 234
    .end local v11    # "isProxyInit":Z
    :catch_3
    move-exception v10

    .line 235
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v0, "%s: Exception thrown during handler\'s execution of the sync protocol while in the %s state: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 238
    .restart local v12    # "msg":Ljava/lang/String;
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v0, v12}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    .line 239
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 242
    if-eqz v2, :cond_4

    .line 243
    :try_start_8
    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    .line 250
    :cond_4
    :goto_4
    :try_start_9
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->releaseSyncAdapter()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    .line 251
    :catch_4
    move-exception v10

    .line 252
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The sync adapter may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 105
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "msg":Ljava/lang/String;
    .restart local v11    # "isProxyInit":Z
    :cond_5
    :try_start_a
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->CHECK_ADAPTER_FOR_CHANGES_IF_UNFORCED:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mState:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 241
    .end local v11    # "isProxyInit":Z
    :catchall_0
    move-exception v0

    .line 242
    if-eqz v2, :cond_6

    .line 243
    :try_start_b
    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    .line 250
    :cond_6
    :goto_5
    :try_start_c
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->releaseSyncAdapter()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    .line 254
    :goto_6
    throw v0

    .line 110
    .restart local v11    # "isProxyInit":Z
    :pswitch_1
    :try_start_d
    const-string v0, "%s: Checking adapter for client changes since sync is unforced"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServiceName:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleCheckAdapterForChangesIfUnforced(Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;)V

    goto/16 :goto_0

    .line 118
    :pswitch_2
    const-string v0, "%s: Getting the client\'s last anchor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServiceName:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleGetClientAnchor(Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;)V

    .line 122
    if-nez v11, :cond_0

    .line 123
    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->init()Z

    move-result v11

    goto/16 :goto_0

    .line 128
    :pswitch_3
    const-string v0, "%s: Calling Blur ws update through proxy.  Attempt %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsUpdateRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;

    iget v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsUpdateRetryCount:I

    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mSyncAppId:I

    iget-wide v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientAnchor:J

    iget-boolean v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mIsBatchingProhibited:Z

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;-><init>(ILcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;IJZ)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleGetUpdateFromWS(Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;)V

    goto/16 :goto_0

    .line 136
    :pswitch_4
    const-string v0, "%s: Updating adapter with server changes.  Attempt %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterUpdateRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServerChanges:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    new-instance v4, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mConflictStrategyType:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    invoke-direct {v4, v5}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;)V

    invoke-direct {v0, v9, v1, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleUpdateAdapter(Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;)V

    goto/16 :goto_0

    .line 144
    :pswitch_5
    const-string v0, "%s: Acking change in the client\'s anchor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;

    iget v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mSyncAppId:I

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientAnchor:J

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;-><init>(Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;IJ)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleAckClientAnchor1(Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;)V

    goto/16 :goto_0

    .line 151
    :pswitch_6
    const-string v0, "%s: Resetting the client adapter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServiceName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mInitialAnchor:J

    invoke-direct {v0, v9, v1, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleResetAdapter(Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;)V

    goto/16 :goto_0

    .line 157
    :pswitch_7
    const-string v0, "%s: Resolving conflicts using the provided conflict resolver"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mConflictResolver:Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mConflicts:[B

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;-><init>(Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;[B)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleResolveConflicts(Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;)V

    goto/16 :goto_0

    .line 165
    :pswitch_8
    const-string v0, "%s: Updating adapter with server changes after conflict resolution.  Attempt %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mWsUpdateRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServerChanges:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    new-instance v4, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    sget-object v5, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;->CLIENT_ALWAYS_WINS:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;

    invoke-direct {v4, v5}, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy$Types;)V

    invoke-direct {v0, v9, v1, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleUpdateAdapter(Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;)V

    goto/16 :goto_0

    .line 174
    :pswitch_9
    const-string v0, "%s: Checking for local changes"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServiceName:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleAreClientChanges2(Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;)V

    goto/16 :goto_0

    .line 180
    :pswitch_a
    const-string v0, "%s: Getting client changes from the adapter.  Attempt %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterGetChangesRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 183
    new-instance v3, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServiceName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mShouldOverwriteServerData:Z

    iget-boolean v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAreClientChangelistsPaged:Z

    iget v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientChangelistPageSize:I

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;ZZI)V

    invoke-direct {p0, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleGetChangesFromAdapter(Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;)V

    goto/16 :goto_0

    .line 189
    :pswitch_b
    const-string v0, "%s: Calling Blur ws commit through proxy.  Attempt %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mAdapterGetChangesRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;

    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mSyncAppId:I

    iget-wide v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientAnchor:J

    iget-object v6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mClientData:[B

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mFormat:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mShouldOverwriteServerData:Z

    invoke-direct/range {v1 .. v8}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;-><init>(Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;IJ[BLjava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleSendCommitToWS(Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;)V

    goto/16 :goto_0

    .line 197
    :pswitch_c
    const-string v0, "%s: Committing to adapter."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mServiceName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mNewServerAnchor:J

    invoke-direct {v0, v9, v1, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague;-><init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleCommitAdapter(Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague;)V

    goto/16 :goto_0

    .line 203
    :pswitch_d
    const-string v0, "%s: Acking change in the client\'s anchor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;

    iget v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mSyncAppId:I

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mNewServerAnchor:J

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;-><init>(Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;IJ)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleAckClientAnchor2(Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;)V

    goto/16 :goto_0

    .line 210
    :pswitch_e
    const-string v0, "%s: Reporting bad update."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;

    iget v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mSyncAppId:I

    invoke-direct {v0, v2, v1}, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;-><init>(Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->handleBadUpdate(Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;)V

    goto/16 :goto_0

    .line 215
    :pswitch_f
    const-string v0, "%s: Error."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 242
    if-eqz v2, :cond_7

    .line 243
    :try_start_e
    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 250
    :cond_7
    :goto_7
    :try_start_f
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->releaseSyncAdapter()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_2

    .line 251
    :catch_5
    move-exception v10

    .line 252
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The sync adapter may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 245
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v10

    .line 246
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The proxy may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 219
    .end local v10    # "e":Ljava/lang/Exception;
    :pswitch_10
    :try_start_10
    const-string v0, "%s: Success."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_OK:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "Success."

    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->create(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v0

    .line 242
    if-eqz v2, :cond_8

    .line 243
    :try_start_11
    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 250
    :cond_8
    :goto_8
    :try_start_12
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->releaseSyncAdapter()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_2

    .line 251
    :catch_7
    move-exception v10

    .line 252
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The sync adapter may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 245
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v10

    .line 246
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The proxy may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 223
    .end local v10    # "e":Ljava/lang/Exception;
    :pswitch_11
    :try_start_13
    const-string v0, "%s: Warning."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mDescription:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->logSyncMsg(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mOutput:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 242
    if-eqz v2, :cond_9

    .line 243
    :try_start_14
    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->release()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    .line 250
    :cond_9
    :goto_9
    :try_start_15
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->releaseSyncAdapter()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_2

    .line 251
    :catch_9
    move-exception v10

    .line 252
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The sync adapter may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 245
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v10

    .line 246
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The proxy may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 245
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "msg":Ljava/lang/String;
    :catch_b
    move-exception v10

    .line 246
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The proxy may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 245
    .end local v11    # "isProxyInit":Z
    :catch_c
    move-exception v10

    .line 246
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The proxy may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 245
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "msg":Ljava/lang/String;
    :catch_d
    move-exception v10

    .line 246
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The proxy may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 251
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v10

    .line 252
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "2WySncPrtclMdtr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The sync adapter may have leaked due to exception on release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public bridge synthetic runProtocol()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;->runProtocol()Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v0

    return-object v0
.end method
