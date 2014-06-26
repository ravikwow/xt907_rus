.class public Lcom/android/deskclock/timer/TimerListItem;
.super Landroid/widget/LinearLayout;
.source "TimerListItem.java"


# instance fields
.field mCircleView:Lcom/android/deskclock/CircleTimerView;

.field mTimerLength:J

.field mTimerText:Lcom/android/deskclock/timer/CountingTimerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04002c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    return-void
.end method


# virtual methods
.method public done()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->stopIntervalAnimation()V

    .line 94
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 96
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/timer/CountingTimerView;->redTimeStr(ZZ)V

    .line 97
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 50
    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/CountingTimerView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    .line 51
    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/CircleTimerView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    .line 52
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleTimerView;->setTimerMode(Z)V

    .line 53
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->pauseIntervalAnimation()V

    .line 75
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/timer/CountingTimerView;->redTimeStr(ZZ)V

    .line 76
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v2}, Lcom/android/deskclock/timer/CountingTimerView;->showTime(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-void
.end method

.method public set(JJZ)V
    .locals 3
    .param p1, "timerLength"    # J
    .param p3, "timeLeft"    # J
    .param p5, "drawRed"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    if-nez v0, :cond_0

    .line 57
    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/CircleTimerView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    .line 58
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleTimerView;->setTimerMode(Z)V

    .line 60
    :cond_0
    iput-wide p1, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerLength:J

    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    iget-wide v1, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerLength:J

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/CircleTimerView;->setIntervalTime(J)V

    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    sub-long v1, p1, p3

    invoke-virtual {v0, v1, v2, p5}, Lcom/android/deskclock/CircleTimerView;->setPassedTime(JZ)V

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 64
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 124
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 125
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 128
    :cond_0
    return-void
.end method

.method public setCircleBlink(Z)V
    .locals 2
    .param p1, "blink"    # Z

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLength(J)V
    .locals 3
    .param p1, "timerLength"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerLength:J

    .line 101
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    iget-wide v1, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerLength:J

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/CircleTimerView;->setIntervalTime(J)V

    .line 102
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 103
    return-void
.end method

.method public setTextBlink(Z)V
    .locals 2
    .param p1, "blink"    # Z

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/deskclock/timer/CountingTimerView;->showTime(Z)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTime(JZ)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    if-nez v0, :cond_0

    .line 115
    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/CountingTimerView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/deskclock/timer/CountingTimerView;->setTime(JZZ)V

    .line 118
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->startIntervalAnimation()V

    .line 68
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/timer/CountingTimerView;->redTimeStr(ZZ)V

    .line 69
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v2}, Lcom/android/deskclock/timer/CountingTimerView;->showTime(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->stopIntervalAnimation()V

    .line 82
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/timer/CountingTimerView;->redTimeStr(ZZ)V

    .line 83
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v2}, Lcom/android/deskclock/timer/CountingTimerView;->showTime(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    return-void
.end method

.method public timesUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mCircleView:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->abortIntervalAnimation()V

    .line 89
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerListItem;->mTimerText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v1, v1}, Lcom/android/deskclock/timer/CountingTimerView;->redTimeStr(ZZ)V

    .line 90
    return-void
.end method
