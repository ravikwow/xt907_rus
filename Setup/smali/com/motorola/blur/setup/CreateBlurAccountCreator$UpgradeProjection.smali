.class Lcom/motorola/blur/setup/CreateBlurAccountCreator$UpgradeProjection;
.super Ljava/lang/Object;
.source "CreateBlurAccountCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBlurAccountCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpgradeProjection"
.end annotation


# static fields
.field public static final ID_IDX:I = 0x0

.field public static final PASSWORD_IDX:I = 0x1

.field public static final POLICY_IDX:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "active_services._id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pwd_storage_policy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$UpgradeProjection;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
