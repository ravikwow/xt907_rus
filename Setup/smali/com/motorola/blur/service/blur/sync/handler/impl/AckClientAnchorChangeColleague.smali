.class public Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;
.super Ljava/lang/Object;
.source "AckClientAnchorChangeColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mClientAnchor:J

.field private mExtendedStatus:Ljava/lang/String;

.field private mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

.field private mSyncAppId:I


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;IJ)V
    .locals 0
    .param p1, "proxy"    # Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;
    .param p2, "syncAppId"    # I
    .param p3, "clientAnchor"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    .line 26
    iput p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->mSyncAppId:I

    .line 27
    iput-wide p3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->mClientAnchor:J

    .line 28
    return-void
.end method


# virtual methods
.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;
    .locals 5

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;

    iget v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->mSyncAppId:I

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->mClientAnchor:J

    invoke-interface {v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;->ackClientAnchorChange(IJ)V

    .line 37
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
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

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->mExtendedStatus:Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;

    goto :goto_0
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;

    move-result-object v0

    return-object v0
.end method
