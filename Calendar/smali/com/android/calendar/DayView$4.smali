.class Lcom/android/calendar/DayView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$802(Lcom/android/calendar/DayView;Z)Z

    .line 294
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$802(Lcom/android/calendar/DayView;Z)Z

    .line 299
    iget-object v0, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->resetSelectedHour()V
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$900(Lcom/android/calendar/DayView;)V

    .line 300
    iget-object v0, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 301
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x1

    # setter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$802(Lcom/android/calendar/DayView;Z)Z

    .line 289
    return-void
.end method
