.class public final enum Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;
.super Ljava/lang/Enum;
.source "SgvAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationOut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

.field public static final enum COLLAPSE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

.field public static final enum FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

.field public static final enum FLY_DOWN:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

.field public static final enum NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

.field public static final enum SLIDE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    .line 53
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    const-string v1, "FADE"

    invoke-direct {v0, v1, v3}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    .line 56
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    const-string v1, "FLY_DOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->FLY_DOWN:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    .line 59
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    const-string v1, "SLIDE"

    invoke-direct {v0, v1, v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->SLIDE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    .line 62
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    const-string v1, "COLLAPSE"

    invoke-direct {v0, v1, v6}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->COLLAPSE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->FLY_DOWN:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->SLIDE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->COLLAPSE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->$VALUES:[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    return-object v0
.end method

.method public static values()[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->$VALUES:[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    return-object v0
.end method
