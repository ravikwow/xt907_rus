.class Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;
.super Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs$Stub;
.source "GetUpdateFromWSColleague.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerChanges"
.end annotation


# instance fields
.field mRespFromService:Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

.field final synthetic this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;)V
    .locals 0
    .param p2, "resp"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;->this$0:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;

    invoke-direct {p0}, Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs$Stub;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;->mRespFromService:Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    .line 141
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;->mRespFromService:Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getAppData()[B

    move-result-object v0

    return-object v0
.end method

.method public getChangesSinceAnchor()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;->mRespFromService:Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getChangesSinceAnchor()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;->mRespFromService:Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getChangesSinceAnchor()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getCurrentServerAnchor()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;->mRespFromService:Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getCurrentServerAnchor()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$ServerChanges;->mRespFromService:Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->getCurrentServerAnchor()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method
