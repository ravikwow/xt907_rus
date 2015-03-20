.class public final enum Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;
.super Ljava/lang/Enum;
.source "UpgradeUtilConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_COPYFAIL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_DISABLED:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_FAIL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_MISMATCH:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_NETWORK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_RESOURCES:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_SDCARD_RESOURCES_FAIL_REMOVAL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_SDCARD_RESOURCES_FAIL_SPACE:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_SDCARD_RESOURCES_NOSDCARD:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_SDCARD_RESOURCES_NOTMOUNTED:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_SDCARD_RESOURCES_SPACE:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_SDCARD_RESOURCES_WARNING:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_SERVER:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_SPACE:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_TEMP_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

.field public static final enum STATUS_VERIFY:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_OK"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_TEMP_OK"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_TEMP_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_RESOURCES"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_RESOURCES:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_SPACE"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SPACE:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_DISABLED"

    invoke-direct {v0, v1, v7}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_DISABLED:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_NETWORK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_NETWORK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_FAIL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_VERIFY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_VERIFY:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_COPYFAIL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_COPYFAIL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_MISMATCH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_MISMATCH:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_SERVER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SERVER:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_SDCARD_RESOURCES_NOSDCARD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_NOSDCARD:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_SDCARD_RESOURCES_NOTMOUNTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_NOTMOUNTED:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_SDCARD_RESOURCES_SPACE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_SPACE:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_SDCARD_RESOURCES_WARNING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_WARNING:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_SDCARD_RESOURCES_FAIL_REMOVAL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_FAIL_REMOVAL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    new-instance v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const-string v1, "STATUS_SDCARD_RESOURCES_FAIL_SPACE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_FAIL_SPACE:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    .line 52
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_TEMP_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_RESOURCES:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SPACE:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_DISABLED:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_NETWORK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_FAIL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_VERIFY:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_COPYFAIL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_MISMATCH:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SERVER:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_NOSDCARD:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_NOTMOUNTED:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_SPACE:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_WARNING:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_FAIL_REMOVAL:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_SDCARD_RESOURCES_FAIL_SPACE:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->$VALUES:[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->$VALUES:[Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    return-object v0
.end method
