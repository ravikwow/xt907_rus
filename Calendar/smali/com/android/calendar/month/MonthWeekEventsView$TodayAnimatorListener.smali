.class Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MonthWeekEventsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthWeekEventsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TodayAnimatorListener"
.end annotation


# instance fields
.field private volatile mAnimator:Landroid/animation/Animator;

.field private volatile mFadingIn:Z

.field final synthetic this$0:Lcom/android/calendar/month/MonthWeekEventsView;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthWeekEventsView;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mFadingIn:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    if-eq v0, p1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 190
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 191
    monitor-exit p0

    .line 214
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mFadingIn:Z

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    # getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    # getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 196
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    # getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const-string v2, "animateTodayAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    # setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$002(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 200
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    # getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mFadingIn:Z

    .line 202
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    # getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    # getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 204
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    # getter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/calendar/month/MonthWeekEventsView;->access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 213
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 206
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateToday:Z
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$102(Lcom/android/calendar/month/MonthWeekEventsView;Z)Z

    .line 207
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$202(Lcom/android/calendar/month/MonthWeekEventsView;I)I

    .line 208
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 210
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->access$002(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 211
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 198
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
    .line 217
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 218
    return-void
.end method

.method public setFadingIn(Z)V
    .locals 0
    .param p1, "fadingIn"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->mFadingIn:Z

    .line 222
    return-void
.end method
