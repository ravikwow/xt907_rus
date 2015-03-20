.class public final enum Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;
.super Ljava/lang/Enum;
.source "UpdateAdapterColleague.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

.field public static final enum CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

.field public static final enum ERROR_ANCHOR_MISMATCH:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

.field public static final enum ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

.field public static final enum ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

.field public static final enum UPDATE_SUCCEEDED:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    const-string v1, "UPDATE_SUCCEEDED"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->UPDATE_SUCCEEDED:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    const-string v1, "CONFLICTS"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    const-string v1, "ERROR_ANCHOR_MISMATCH"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_ANCHOR_MISMATCH:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    const-string v1, "ERROR_SHOULD_RETRY_IMMEDIATELY"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    const-string v1, "ERROR_INTERNAL"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->UPDATE_SUCCEEDED:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_ANCHOR_MISMATCH:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    return-object v0
.end method
