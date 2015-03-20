.class public Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;
.super Ljava/lang/Object;
.source "HandleBadUpdateColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mExtendedStatus:Ljava/lang/String;

.field private mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

.field private mSyncAppId:I


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;I)V
    .locals 0
    .param p1, "proxy"    # Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;
    .param p2, "syncAppId"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    .line 25
    iput p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;->mSyncAppId:I

    .line 26
    return-void
.end method


# virtual methods
.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;
    .locals 3

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    iget v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;->mSyncAppId:I

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->reportInvalidUpdateData(I)V

    .line 35
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
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

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;->mExtendedStatus:Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    goto :goto_0
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    move-result-object v0

    return-object v0
.end method
