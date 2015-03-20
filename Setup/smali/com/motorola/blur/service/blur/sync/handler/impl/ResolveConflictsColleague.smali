.class public Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;
.super Ljava/lang/Object;
.source "ResolveConflictsColleague.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/IProtocolColleague",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RslvCnflctsColl"


# instance fields
.field private mConflicts:[B

.field private mExtendedStatus:Ljava/lang/String;

.field private mResolver:Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;[B)V
    .locals 0
    .param p1, "resolver"    # Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;
    .param p2, "conflicts"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->mResolver:Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;

    .line 23
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->mConflicts:[B

    .line 24
    return-void
.end method


# virtual methods
.method public extendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->mExtendedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public handle()Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;
    .locals 3

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->mResolver:Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->mConflicts:[B

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/IConflictResolver;->resolve([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    .line 44
    :goto_0
    return-object v1

    .line 39
    :cond_0
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
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

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->mExtendedStatus:Ljava/lang/String;

    .line 43
    const-string v1, "RslvCnflctsColl"

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->mExtendedStatus:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    goto :goto_0
.end method

.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;->handle()Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    move-result-object v0

    return-object v0
.end method
