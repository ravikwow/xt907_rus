.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;)V
    .locals 0

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1600
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1585
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1588
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1590
    .local v0, "expandParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mCollapseExpandHeight:I
    invoke-static {v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$4400(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1592
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->arrow:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotation(F)V

    .line 1594
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1595
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1603
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1605
    return-void
.end method
