.class public final enum Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;
.super Ljava/lang/Enum;
.source "CheckinUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/checkin/CheckinUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

.field public static final enum ERROR_ALREADY:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

.field public static final enum ERROR_CREDS:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

.field public static final enum ERROR_FAIL:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

.field public static final enum ERROR_NET:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

.field public static final enum ERROR_OK:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

.field public static final enum ERROR_RADIO:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    const-string v1, "ERROR_OK"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_OK:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    const-string v1, "ERROR_RADIO"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_RADIO:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    const-string v1, "ERROR_NET"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_NET:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    const-string v1, "ERROR_ALREADY"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_ALREADY:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    const-string v1, "ERROR_CREDS"

    invoke-direct {v0, v1, v7}, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_CREDS:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    new-instance v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    const-string v1, "ERROR_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_FAIL:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    sget-object v1, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_OK:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_RADIO:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_NET:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_ALREADY:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_CREDS:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->ERROR_FAIL:Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->$VALUES:[Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->$VALUES:[Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    return-object v0
.end method
