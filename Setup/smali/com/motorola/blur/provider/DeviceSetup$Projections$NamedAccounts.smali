.class public final Lcom/motorola/blur/provider/DeviceSetup$Projections$NamedAccounts;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup$Projections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamedAccounts"
.end annotation


# static fields
.field public static final ACCOUNT_ID_IDX:I = 0x0

.field public static final ACCOUNT_PRETTY_NAME_IDX:I = 0x5

.field public static final EMAIL_ADDRESS_IDX:I = 0x3

.field public static PROJECTION:[Ljava/lang/String; = null

.field public static final PROVIDERS_ID_IDX:I = 0x2

.field public static final PROVIDER_IDX:I = 0x6

.field public static final PROVIDER_PRETTY_NAME_IDX:I = 0x1

.field public static final USER_PRETTY_NAME_IDX:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1456
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accounts._id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "providers.pretty_name AS pretty_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "provider_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "email_address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_pretty_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_pretty_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "provider"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Projections$NamedAccounts;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
