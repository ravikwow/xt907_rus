.class Lcom/android/calendar/DayView$TodayAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TodayAnimatorListener"
.end annotation


# instance fields
.field private volatile mAnimator:Landroid/animation/Animator;

.field private volatile mFadingIn:Z

.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    if-eq v0, p1, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 249
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 250
    monitor-exit p0

    .line 273
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 255
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const-string v2, "animateTodayAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 259
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    .line 261
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 263
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 272
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 265
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/DayView;->mAnimateToday:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$602(Lcom/android/calendar/DayView;Z)Z

    .line 266
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$702(Lcom/android/calendar/DayView;I)I

    .line 267
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 269
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 270
    iget-object v0, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 257
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public setAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 277
    return-void
.end method

.method public setFadingIn(Z)V
    .locals 0
    .param p1, "fadingIn"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/android/calendar/DayView$TodayAnimatorListener;->mFadingIn:Z

    .line 281
    return-void
.end method
