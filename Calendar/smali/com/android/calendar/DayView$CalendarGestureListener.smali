.class Lcom/android/calendar/DayView$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0

    .prologue
    .line 4888
    iput-object p1, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4937
    # getter for: Lcom/android/calendar/DayView;->DEBUG:Z
    invoke-static {}, Lcom/android/calendar/DayView;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/DayView;->access$4400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4938
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->doDown(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$5100(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4939
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 4922
    # getter for: Lcom/android/calendar/DayView;->DEBUG:Z
    invoke-static {}, Lcom/android/calendar/DayView;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/DayView;->access$4400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4800(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4925
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 4926
    const/4 v0, 0x0

    .line 4932
    :goto_0
    return v0

    .line 4929
    :cond_1
    const/4 p4, 0x0

    .line 4931
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$5000(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 4932
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4898
    # getter for: Lcom/android/calendar/DayView;->DEBUG:Z
    invoke-static {}, Lcom/android/calendar/DayView;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/DayView;->access$4400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->doLongPress(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$4600(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4900
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 4904
    # getter for: Lcom/android/calendar/DayView;->DEBUG:Z
    invoke-static {}, Lcom/android/calendar/DayView;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/DayView;->access$4400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4905
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->eventClickCleanup()V
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4700(Lcom/android/calendar/DayView;)V

    .line 4906
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4800(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4907
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 4910
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4911
    const/4 v0, 0x0

    .line 4917
    :goto_0
    return v0

    .line 4914
    :cond_1
    const/4 p4, 0x0

    .line 4916
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$4900(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 4917
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4891
    # getter for: Lcom/android/calendar/DayView;->DEBUG:Z
    invoke-static {}, Lcom/android/calendar/DayView;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/DayView;->access$4400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$4500(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4893
    const/4 v0, 0x1

    return v0
.end method
