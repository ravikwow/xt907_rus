.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$startingHeight:I


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Landroid/view/ViewTreeObserver;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iput p4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$startingHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1430
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v7}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1431
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1434
    :cond_0
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v7, v7, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1435
    .local v3, "endingHeight":I
    iget v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$startingHeight:I

    sub-int v2, v3, v7

    .line 1436
    .local v2, "distance":I
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v7, v7, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->collapseExpandArea:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1437
    .local v1, "collapseHeight":I
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v7, v7, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1438
    .local v6, "hairlineHeight":I
    sub-int v5, v1, v6

    .line 1441
    .local v5, "hairlineDistance":I
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v7, v7, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$startingHeight:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1448
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v7, v7, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1450
    .local v4, "expandParams":Landroid/widget/FrameLayout$LayoutParams;
    neg-int v7, v2

    invoke-virtual {v4, v10, v7, v10, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1451
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v7, v7, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->requestLayout()V

    .line 1454
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1456
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v7, v7, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mExpandInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v7}, Lcom/android/deskclock/AlarmClockFragment;->access$1600(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1457
    new-instance v7, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$1;

    invoke-direct {v7, p0, v2, v1, v5}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$1;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;III)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1477
    new-instance v7, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;

    invoke-direct {v7, p0, v5}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;I)V

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1498
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1502
    return v10

    .line 1454
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
