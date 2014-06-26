.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->collapseAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
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
    .line 1539
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iput p4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$startingHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1542
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1543
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1547
    :cond_0
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v5, v5, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1548
    .local v2, "endingHeight":I
    iget v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$startingHeight:I

    sub-int v1, v2, v5

    .line 1549
    .local v1, "distance":I
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v5, v5, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1550
    .local v4, "hairlineHeight":I
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mCollapseExpandHeight:I
    invoke-static {v5}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$4400(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)I

    move-result v5

    sub-int v3, v5, v4

    .line 1553
    .local v3, "hairlineDistance":I
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v5, v5, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v5, v5, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->summary:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v5, v5, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->summary:Landroid/view/View;

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1558
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1560
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$1;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;II)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1579
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v5, v5, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mCollapseInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v5}, Lcom/android/deskclock/AlarmClockFragment;->access$1000(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1581
    new-instance v5, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;

    invoke-direct {v5, p0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1607
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1609
    return v8

    .line 1558
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
