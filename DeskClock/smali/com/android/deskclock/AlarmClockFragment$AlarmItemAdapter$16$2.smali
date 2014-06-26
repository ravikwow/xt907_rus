.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;

.field final synthetic val$hairlineDistance:I


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;I)V
    .locals 0

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;

    iput p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;->val$hairlineDistance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1491
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1483
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->arrow:Landroid/view/View;

    const/high16 v1, 0x43340000

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 1484
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    iget v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;->val$hairlineDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1485
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16$2;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->summary:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1486
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1494
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1496
    return-void
.end method
