.class public final enum Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;
.super Ljava/lang/Enum;
.source "UpgradeUtilConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseFlavour"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

.field public static final enum RESPONSE_FLAVOUR_WIFI:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

    const-string v1, "RESPONSE_FLAVOUR_WIFI"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;->RESPONSE_FLAVOUR_WIFI:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;->RESPONSE_FLAVOUR_WIFI:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;->$VALUES:[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;->$VALUES:[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$ResponseFlavour;

    return-object v0
.end method