.class public Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;
.super Ljava/lang/Object;
.source "GetChangesFromAdapterColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$1;,
        Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GtChngsFrmAdptrColl"


# instance fields
.field private mClientData:[B

.field private mClientDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

.field private mExtendedStatus:Ljava/lang/String;

.field private mIsPaged:Z

.field private mPageSize:I

.field private mServiceName:Ljava/lang/String;

.field private mShouldOverwriteServerData:Z

.field private mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;ZZI)V
    .locals 0
    .param p1, "adapter"    # Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "shouldOverwriteServerData"    # Z
    .param p4, "isPaged"    # Z
    .param p5, "pageSize"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    .line 31
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mServiceName:Ljava/lang/String;

    .line 32
    iput-boolean p3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mShouldOverwriteServerData:Z

    .line 33
    iput-boolean p4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mIsPaged:Z

    .line 34
    iput p5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mPageSize:I

    .line 35
    return-void
.end method


# virtual methods
.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getClientData()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mClientData:[B

    return-object v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;
    .locals 6

    .prologue
    .line 47
    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mShouldOverwriteServerData:Z

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mServiceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;->getAllClientData(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mClientDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mClientDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;->statusInfo()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;

    move-result-object v1

    .line 56
    .local v1, "status":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->getStatusCode()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_3

    .line 57
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

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_1
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    .line 59
    const-string v2, "GtChngsFrmAdptrColl"

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$1;->$SwitchMap$com$motorola$blur$service$blur$sync$adapter$SyncAdapterStatus$StatusCode:[I

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->getStatusCode()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 64
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;

    .line 73
    .end local v1    # "status":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    :goto_2
    return-object v2

    .line 49
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mIsPaged:Z

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mServiceName:Ljava/lang/String;

    iget v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mPageSize:I

    invoke-interface {v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;->getClientChangelistPaged(Ljava/lang/String;I)Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mClientDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
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

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    .line 72
    const-string v2, "GtChngsFrmAdptrColl"

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;

    goto :goto_2

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mServiceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;->getClientChangelist(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mClientDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    goto/16 :goto_0

    .line 57
    .restart local v1    # "status":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->getExtendedStatus()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 62
    :pswitch_0
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;

    goto :goto_2

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mClientDiffs:Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;->getByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->mClientData:[B

    .line 69
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;

    move-result-object v0

    return-object v0
.end method
