.class Lcom/android/deskclock/AlarmClockFragment$5$2;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$5;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$5;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$5;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$5$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 340
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$5$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineView:Lcom/android/deskclock/AlarmTimelineView;
    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$1400(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmTimelineView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AlarmTimelineView;->setIsAnimatingOut(Z)V

    .line 345
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 350
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$5$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineView:Lcom/android/deskclock/AlarmTimelineView;
    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$1400(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmTimelineView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AlarmTimelineView;->setIsAnimatingOut(Z)V

    .line 355
    return-void
.end method
