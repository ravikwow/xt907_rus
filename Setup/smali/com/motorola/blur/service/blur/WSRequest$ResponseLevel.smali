.class public final enum Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;
.super Ljava/lang/Enum;
.source "WSRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/WSRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

.field public static final enum ALL:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

.field public static final enum CHUNK:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

.field public static final enum ITEM:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    const-string v1, "CHUNK"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->CHUNK:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    .line 51
    new-instance v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    const-string v1, "ITEM"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->ITEM:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    .line 52
    new-instance v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->ALL:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    sget-object v1, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->CHUNK:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->ITEM:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->ALL:Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->$VALUES:[Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;->$VALUES:[Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/WSRequest$ResponseLevel;

    return-object v0
.end method
