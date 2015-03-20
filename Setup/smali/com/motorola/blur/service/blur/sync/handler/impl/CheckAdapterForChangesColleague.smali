.class public Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;
.super Ljava/lang/Object;
.source "CheckAdapterForChangesColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChkAdptr4ChngsColl"


# instance fields
.field private mAreClientChanges:Z

.field private mExtendedStatus:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;Ljava/lang/String;)V
    .locals 1
    .param p1, "syncAdapter"    # Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mAreClientChanges:Z

    .line 23
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    .line 24
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mServiceName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public areClientChanges()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mAreClientChanges:Z

    return v0
.end method

.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;
    .locals 3

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mSyncAdapter:Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mServiceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;->areClientChanges(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mAreClientChanges:Z

    .line 34
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
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

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mExtendedStatus:Ljava/lang/String;

    .line 37
    const-string v1, "ChkAdptr4ChngsColl"

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;

    goto :goto_0
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;

    move-result-object v0

    return-object v0
.end method
