.class public final enum Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;
.super Ljava/lang/Enum;
.source "UpgradeUtilConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

.field public static final enum ERR_ALREADY:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

.field public static final enum ERR_BADPARAM:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

.field public static final enum ERR_DOWNLOADING:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

.field public static final enum ERR_FAIL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

.field public static final enum ERR_NET:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

.field public static final enum ERR_NOTFOUND:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

.field public static final enum ERR_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

.field public static final enum ERR_TEMP:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    const-string v1, "ERR_OK"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    const-string v1, "ERR_NET"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_NET:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    const-string v1, "ERR_ALREADY"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_ALREADY:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    const-string v1, "ERR_DOWNLOADING"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_DOWNLOADING:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    const-string v1, "ERR_NOTFOUND"

    invoke-direct {v0, v1, v7}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_NOTFOUND:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    const-string v1, "ERR_TEMP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_TEMP:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    const-string v1, "ERR_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_FAIL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    const-string v1, "ERR_BADPARAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_BADPARAM:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_NET:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_ALREADY:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_DOWNLOADING:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_NOTFOUND:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_TEMP:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_FAIL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ERR_BADPARAM:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->$VALUES:[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->$VALUES:[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    return-object v0
.end method
