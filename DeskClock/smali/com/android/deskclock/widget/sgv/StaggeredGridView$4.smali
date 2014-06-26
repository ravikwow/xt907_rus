.class synthetic Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

.field static final synthetic $SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationOut:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1822
    invoke-static {}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->values()[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationOut:[I

    :try_start_0
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationOut:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->SLIDE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationOut:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->COLLAPSE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationOut:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->FLY_DOWN:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationOut:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    .line 1771
    :goto_3
    invoke-static {}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->values()[Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

    :try_start_4
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FLY_UP_ALL_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->EXPAND_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->EXPAND_NEW_VIEWS_NO_CASCADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->SLIDE_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FLY_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    .line 1822
    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_0
.end method
