.class Lcom/android/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialSelectorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/time/RadialSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/time/RadialSelectorView;


# direct methods
.method private constructor <init>(Lcom/android/datetimepicker/time/RadialSelectorView;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/datetimepicker/time/RadialSelectorView;Lcom/android/datetimepicker/time/RadialSelectorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/datetimepicker/time/RadialSelectorView;
    .param p2, "x1"    # Lcom/android/datetimepicker/time/RadialSelectorView$1;

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;-><init>(Lcom/android/datetimepicker/time/RadialSelectorView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 396
    return-void
.end method
