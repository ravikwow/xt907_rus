.class public final enum Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;
.super Ljava/lang/Enum;
.source "MessageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/settings/MessageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmsMaxVideoResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

.field public static final enum ORIGINAL:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

.field public static final enum QCIF:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

.field public static final enum QVGA:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

.field public static final enum VGA:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->ORIGINAL:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    .line 84
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    const-string v1, "QCIF"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->QCIF:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    .line 85
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    const-string v1, "QVGA"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->QVGA:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    .line 86
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    const-string v1, "VGA"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->VGA:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->ORIGINAL:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->QCIF:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->QVGA:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->VGA:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->$VALUES:[Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->$VALUES:[Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    return-object v0
.end method
