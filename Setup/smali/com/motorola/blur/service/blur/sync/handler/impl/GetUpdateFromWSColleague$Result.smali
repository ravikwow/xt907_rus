.class public final enum Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;
.super Ljava/lang/Enum;
.source "GetUpdateFromWSColleague.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

.field public static final enum ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

.field public static final enum ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

.field public static final enum ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

.field public static final enum ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

.field public static final enum ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

.field public static final enum OK_DONE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

.field public static final enum OK_IS_MORE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

.field public static final enum RESET_REQUIRED_DUE_TO_INVALID_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

.field public static final enum SERVER_RECOVERY_REQUIRED:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    const-string v1, "OK_DONE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->OK_DONE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    const-string v1, "OK_IS_MORE"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->OK_IS_MORE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    const-string v1, "ERROR_INTERNAL"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    const-string v1, "ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    const-string v1, "ERROR_SHOULD_RETRY_IMMEDIATELY"

    invoke-direct {v0, v1, v7}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    const-string v1, "ERROR_RETRY_LATER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    const-string v1, "ERROR_MAY_BE_UNRECOVERABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    const-string v1, "RESET_REQUIRED_DUE_TO_INVALID_CLIENT_ANCHOR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->RESET_REQUIRED_DUE_TO_INVALID_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    const-string v1, "SERVER_RECOVERY_REQUIRED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->SERVER_RECOVERY_REQUIRED:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->OK_DONE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->OK_IS_MORE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->RESET_REQUIRED_DUE_TO_INVALID_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->SERVER_RECOVERY_REQUIRED:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    return-object v0
.end method
