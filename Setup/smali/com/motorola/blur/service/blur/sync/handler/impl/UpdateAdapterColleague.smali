.class public Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;
.super Ljava/lang/Object;
.source "UpdateAdapterColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$1;,
        Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateAdapterColl"


# instance fields
.field private mAdapterUpdateResult:Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;

.field private mConflictStrategy:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

.field private mConflicts:[B

.field private mExtendedStatus:Ljava/lang/String;

.field private mNewClientAnchor:J

.field private mServerDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

.field private mServiceName:Ljava/lang/String;

.field private mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;)V
    .locals 0
    .param p1, "syncAdapter"    # Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "serverDiffs"    # Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;
    .param p4, "conflictStrategy"    # Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    .line 32
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mServiceName:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mServerDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    .line 34
    iput-object p4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mConflictStrategy:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    .line 35
    return-void
.end method


# virtual methods
.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getConflicts()[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mConflicts:[B

    return-object v0
.end method

.method public getNewClientAnchor()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mNewClientAnchor:J

    return-wide v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;
    .locals 6

    .prologue
    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mServiceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mServerDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mConflictStrategy:Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    invoke-interface {v2, v3, v4, v5}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;->updateClient(Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;)Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mAdapterUpdateResult:Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;

    .line 53
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mAdapterUpdateResult:Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;->statusInfo()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;

    move-result-object v1

    .line 55
    .local v1, "status":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->getStatusCode()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    const-string v3, "%s: %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->getStatusCode()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->getExtendedStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    .line 58
    const-string v2, "UpdateAdapterColl"

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$1;->$SwitchMap$com$motorola$blur$service$blur$sync$adapter$SyncAdapterStatus$StatusCode:[I

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->getStatusCode()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 65
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    .line 84
    .end local v1    # "status":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    :goto_1
    return-object v2

    .line 56
    .restart local v1    # "status":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    :cond_0
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->getExtendedStatus()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 61
    :pswitch_0
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_ANCHOR_MISMATCH:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    goto :goto_1

    .line 63
    :pswitch_1
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    goto :goto_1

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mAdapterUpdateResult:Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;->areConflicts()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mAdapterUpdateResult:Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;->getConflicts()[B

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mConflicts:[B

    .line 70
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    goto :goto_1

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mServiceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;->getLastKnownServerAnchor(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mNewClientAnchor:J

    .line 73
    iget-wide v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mNewClientAnchor:J

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mServerDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    invoke-interface {v4}, Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;->getCurrentServerAnchor()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 74
    const-string v2, "UpdateAdapterColl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed sync sanity check: Tried to update adapter, but the client\'s last-known server anchor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mNewClientAnchor:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match the server update\'s value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mServerDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    invoke-interface {v4}, Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;->getCurrentServerAnchor()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_ANCHOR_MISMATCH:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    goto :goto_1

    .line 80
    :cond_3
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->UPDATE_SUCCEEDED:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    .end local v1    # "status":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    .line 83
    const-string v2, "UpdateAdapterColl"

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    goto/16 :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    move-result-object v0

    return-object v0
.end method
