.class public Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;
.super Ljava/lang/Object;
.source "ResetAdapterColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResetAdapterColleague"


# instance fields
.field private mExtendedStatus:Ljava/lang/String;

.field private mInitialAnchor:J

.field private mServiceName:Ljava/lang/String;

.field private mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;J)V
    .locals 0
    .param p1, "syncAdapter"    # Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "initialAnchor"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    .line 23
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mServiceName:Ljava/lang/String;

    .line 24
    iput-wide p3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mInitialAnchor:J

    .line 25
    return-void
.end method


# virtual methods
.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;
    .locals 6

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mServiceName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mInitialAnchor:J

    invoke-interface {v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;->resetService(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v1, "Reset of service %s to anchor %s failed."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mServiceName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mInitialAnchor:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    .line 40
    const-string v1, "ResetAdapterColleague"

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;

    .line 47
    :goto_0
    return-object v1

    .line 43
    :cond_0
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    .line 46
    const-string v1, "ResetAdapterColleague"

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;

    goto :goto_0
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;

    move-result-object v0

    return-object v0
.end method
