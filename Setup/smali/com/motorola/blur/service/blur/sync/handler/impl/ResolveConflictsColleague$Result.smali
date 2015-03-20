.class public final enum Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;
.super Ljava/lang/Enum;
.source "ResolveConflictsColleague.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

.field public static final enum ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

.field public static final enum OK:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    const-string v1, "ERROR_INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    return-object v0
.end method
