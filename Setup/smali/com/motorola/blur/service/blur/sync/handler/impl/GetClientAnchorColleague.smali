.class Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;
.super Ljava/lang/Object;
.source "GetClientAnchorColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GtClntAnchrColl"


# instance fields
.field private mClientAnchor:Ljava/lang/Long;

.field private mExtendedStatus:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "syncAdapter"    # Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    .line 23
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mServiceName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getAnchor()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mClientAnchor:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call handle() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mClientAnchor:Ljava/lang/Long;

    return-object v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;
    .locals 3

    .prologue
    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mClientAnchor:Ljava/lang/Long;

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mServiceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;->getLastClientAnchor(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mClientAnchor:Ljava/lang/Long;

    .line 34
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error while getting client anchor from sync adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mExtendedStatus:Ljava/lang/String;

    .line 38
    const-string v1, "GtClntAnchrColl"

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v1, "GtClntAnchrColl"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;

    goto :goto_0
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;

    move-result-object v0

    return-object v0
.end method
