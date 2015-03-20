.class public Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;
.super Ljava/lang/Object;
.source "SendCommitToWSColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$1;,
        Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SendCommitToWSColl"


# instance fields
.field private mClientAnchor:J

.field private mClientData:[B

.field private mExtendedStatus:Ljava/lang/String;

.field private mFormat:Ljava/lang/String;

.field private mNewServerAnchor:Ljava/lang/Long;

.field private mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

.field private mShouldOverwriteServerData:Z

.field private mSyncAppId:I


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;IJ[BLjava/lang/String;Z)V
    .locals 0
    .param p1, "proxy"    # Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;
    .param p2, "syncAppId"    # I
    .param p3, "clientAnchor"    # J
    .param p5, "clientData"    # [B
    .param p6, "format"    # Ljava/lang/String;
    .param p7, "shouldOverwriteServerData"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    .line 37
    iput p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mSyncAppId:I

    .line 38
    iput-wide p3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mClientAnchor:J

    .line 39
    iput-object p5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mClientData:[B

    .line 40
    iput-object p6, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mFormat:Ljava/lang/String;

    .line 41
    iput-boolean p7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mShouldOverwriteServerData:Z

    .line 42
    return-void
.end method


# virtual methods
.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getNewServerAnchor()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mNewServerAnchor:Ljava/lang/Long;

    return-object v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;
    .locals 10

    .prologue
    .line 50
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mClientData:[B

    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->create(I[B)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;

    move-result-object v4

    .line 52
    .local v4, "commitRequest":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mShouldOverwriteServerData:Z

    invoke-virtual {v4, v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->setRequestFullSyncForRecovery(Z)V

    .line 53
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    iget v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mSyncAppId:I

    iget-wide v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mClientAnchor:J

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mFormat:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->postClientCommit(IJLcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;

    move-result-object v6

    .line 56
    .local v6, "commitResponse":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->getWSErrorCode()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v9

    .line 57
    .local v9, "wsErrorCode":Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v9, v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mExtendedStatus:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mExtendedStatus:Ljava/lang/String;

    .line 61
    const-string v0, "SendCommitToWSColl"

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    .line 105
    .end local v4    # "commitRequest":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .end local v6    # "commitResponse":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .end local v9    # "wsErrorCode":Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :goto_1
    return-object v0

    .line 59
    .restart local v4    # "commitRequest":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .restart local v6    # "commitResponse":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .restart local v9    # "wsErrorCode":Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mExtendedStatus:Ljava/lang/String;

    goto :goto_0

    .line 66
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    goto :goto_1

    .line 72
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->valueOf(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    move-result-object v8

    .line 79
    .local v8, "syncStatus":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$1;->$SwitchMap$com$motorola$blur$service$sync$protocol$SyncWsProtocol$SyncWSStatusCode:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mExtendedStatus:Ljava/lang/String;

    .line 98
    const-string v0, "SendCommitToWSColl"

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    goto :goto_1

    .line 81
    :pswitch_2
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->getNewServerAnchor()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mNewServerAnchor:Ljava/lang/Long;

    .line 82
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mNewServerAnchor:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 83
    const-string v0, "SendCommitToWSColl"

    const-string v1, "Server commit response is OK, but no server anchor was returned."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    goto :goto_1

    .line 87
    :cond_2
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    goto :goto_1

    .line 91
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->FAILED_CLIENT_OUT_OF_DATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    goto :goto_1

    .line 93
    :pswitch_4
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->getExtendedStatus()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 102
    .end local v4    # "commitRequest":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .end local v6    # "commitResponse":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .end local v8    # "syncStatus":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .end local v9    # "wsErrorCode":Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :catch_0
    move-exception v7

    .line 103
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception thrown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mExtendedStatus:Ljava/lang/String;

    .line 104
    const-string v0, "SendCommitToWSColl"

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    goto/16 :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 79
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    move-result-object v0

    return-object v0
.end method
