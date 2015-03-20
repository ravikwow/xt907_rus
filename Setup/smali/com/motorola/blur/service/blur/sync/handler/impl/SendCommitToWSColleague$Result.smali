.class public final enum Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;
.super Ljava/lang/Enum;
.source "SendCommitToWSColleague.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

.field public static final enum ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

.field public static final enum ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

.field public static final enum ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

.field public static final enum ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

.field public static final enum ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

.field public static final enum FAILED_CLIENT_OUT_OF_DATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

.field public static final enum OK:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    const-string v1, "FAILED_CLIENT_OUT_OF_DATE"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->FAILED_CLIENT_OUT_OF_DATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    const-string v1, "ERROR_INTERNAL"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    const-string v1, "ERROR_SHOULD_RETRY_IMMEDIATELY"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    const-string v1, "ERROR_RETRY_LATER"

    invoke-direct {v0, v1, v7}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    const-string v1, "ERROR_MAY_BE_UNRECOVERABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    const-string v1, "ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->FAILED_CLIENT_OUT_OF_DATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    return-object v0
.end method
