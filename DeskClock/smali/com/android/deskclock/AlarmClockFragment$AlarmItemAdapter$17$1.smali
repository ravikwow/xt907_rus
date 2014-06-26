.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

.field final synthetic val$distance:I

.field final synthetic val$hairlineDistance:I


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;II)V
    .locals 0

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iput p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->val$distance:I

    iput p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->val$hairlineDistance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000

    .line 1563
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1566
    .local v1, "value":Ljava/lang/Float;
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->val$distance:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget v4, v4, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$startingHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1568
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1570
    .local v0, "expandParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->val$distance:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v3, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mCollapseExpandHeight:I
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$4400(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)I

    move-result v3

    invoke-virtual {v0, v6, v2, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1572
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->arrow:Landroid/view/View;

    const/high16 v3, 0x43340000

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 1573
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    iget v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->val$hairlineDistance:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1574
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->summary:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1576
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1577
    return-void
.end method
