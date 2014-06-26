.class public final enum Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;
.super Ljava/lang/Enum;
.source "SgvAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationIn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

.field public static final enum EXPAND_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

.field public static final enum EXPAND_NEW_VIEWS_NO_CASCADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

.field public static final enum FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

.field public static final enum FLY_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

.field public static final enum FLY_UP_ALL_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

.field public static final enum NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

.field public static final enum SLIDE_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 28
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    const-string v1, "FLY_UP_ALL_VIEWS"

    invoke-direct {v0, v1, v4}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FLY_UP_ALL_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 31
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    const-string v1, "EXPAND_NEW_VIEWS"

    invoke-direct {v0, v1, v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->EXPAND_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 35
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    const-string v1, "EXPAND_NEW_VIEWS_NO_CASCADE"

    invoke-direct {v0, v1, v6}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->EXPAND_NEW_VIEWS_NO_CASCADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 38
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    const-string v1, "FLY_IN_NEW_VIEWS"

    invoke-direct {v0, v1, v7}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FLY_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 41
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    const-string v1, "SLIDE_IN_NEW_VIEWS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->SLIDE_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 43
    new-instance v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    const-string v1, "FADE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FLY_UP_ALL_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->EXPAND_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->EXPAND_NEW_VIEWS_NO_CASCADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FLY_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->SLIDE_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->$VALUES:[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    return-object v0
.end method

.method public static values()[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->$VALUES:[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    return-object v0
.end method
