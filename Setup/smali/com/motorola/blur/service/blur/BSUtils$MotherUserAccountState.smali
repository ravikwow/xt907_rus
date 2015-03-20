.class public final enum Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;
.super Ljava/lang/Enum;
.source "BSUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/BSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MotherUserAccountState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

.field public static final enum deleted:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

.field public static final enum disabled:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

.field public static final enum good:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

.field public static final enum wrongDevice:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

.field public static final enum wrongPassword:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    const-string v1, "good"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->good:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    new-instance v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    const-string v1, "wrongPassword"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->wrongPassword:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    new-instance v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    const-string v1, "disabled"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->disabled:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    new-instance v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    const-string v1, "deleted"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->deleted:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    new-instance v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    const-string v1, "wrongDevice"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->wrongDevice:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    sget-object v1, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->good:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->wrongPassword:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->disabled:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->deleted:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->wrongDevice:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->$VALUES:[Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->$VALUES:[Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    return-object v0
.end method
