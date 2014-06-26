.class Lcom/android/deskclock/ClockFragment$4;
.super Ljava/lang/Object;
.source "ClockFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ClockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLongPressTimeout:I

.field private mMaxMovementAllowed:F

.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ClockFragment;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$4;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/deskclock/ClockFragment$4;->mMaxMovementAllowed:F

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/deskclock/ClockFragment$4;->mLongPressTimeout:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 141
    iget v4, p0, Lcom/android/deskclock/ClockFragment$4;->mMaxMovementAllowed:F

    const/high16 v5, -0x40800000

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment$4;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/deskclock/ClockFragment$4;->mMaxMovementAllowed:F

    .line 143
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/ClockFragment$4;->mLongPressTimeout:I

    .line 146
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 166
    :pswitch_0
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment$4;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/ClockFragment;->access$500(Lcom/android/deskclock/ClockFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 148
    :pswitch_1
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 149
    .local v0, "time":J
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment$4;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/ClockFragment;->access$500(Lcom/android/deskclock/ClockFragment;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/deskclock/ClockFragment$4$1;

    invoke-direct {v5, p0}, Lcom/android/deskclock/ClockFragment$4$1;-><init>(Lcom/android/deskclock/ClockFragment$4;)V

    iget v6, p0, Lcom/android/deskclock/ClockFragment$4;->mLongPressTimeout:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/ClockFragment$4;->mLastTouchX:F

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/ClockFragment$4;->mLastTouchY:F

    .line 157
    const/4 v4, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "time":J
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/ClockFragment$4;->mLastTouchX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 160
    .local v2, "xDiff":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/ClockFragment$4;->mLastTouchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 161
    .local v3, "yDiff":F
    iget v4, p0, Lcom/android/deskclock/ClockFragment$4;->mMaxMovementAllowed:F

    cmpl-float v4, v2, v4

    if-gez v4, :cond_2

    iget v4, p0, Lcom/android/deskclock/ClockFragment$4;->mMaxMovementAllowed:F

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    .line 162
    :cond_2
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment$4;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/ClockFragment;->access$500(Lcom/android/deskclock/ClockFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
