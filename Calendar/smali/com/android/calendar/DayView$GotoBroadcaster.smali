.class Lcom/android/calendar/DayView$GotoBroadcaster;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GotoBroadcaster"
.end annotation


# instance fields
.field private final mCounter:I

.field private final mEnd:Landroid/text/format/Time;

.field private final mStart:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/DayView;Landroid/text/format/Time;Landroid/text/format/Time;)V
    .locals 1
    .param p2, "start"    # Landroid/text/format/Time;
    .param p3, "end"    # Landroid/text/format/Time;

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1792
    # ++operator for: Lcom/android/calendar/DayView;->sCounter:I
    invoke-static {}, Lcom/android/calendar/DayView;->access$1104()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mCounter:I

    .line 1793
    iput-object p2, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mStart:Landroid/text/format/Time;

    .line 1794
    iput-object p3, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mEnd:Landroid/text/format/Time;

    .line 1795
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 15
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$1200(Lcom/android/calendar/DayView;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/DayView;

    .line 1800
    .local v14, "view":Lcom/android/calendar/DayView;
    const/4 v0, 0x0

    # setter for: Lcom/android/calendar/DayView;->mViewStartX:I
    invoke-static {v14, v0}, Lcom/android/calendar/DayView;->access$1302(Lcom/android/calendar/DayView;I)I

    .line 1801
    iget-object v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$1200(Lcom/android/calendar/DayView;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v14

    .end local v14    # "view":Lcom/android/calendar/DayView;
    check-cast v14, Lcom/android/calendar/DayView;

    .line 1802
    .restart local v14    # "view":Lcom/android/calendar/DayView;
    const/4 v0, 0x0

    # setter for: Lcom/android/calendar/DayView;->mViewStartX:I
    invoke-static {v14, v0}, Lcom/android/calendar/DayView;->access$1302(Lcom/android/calendar/DayView;I)I

    .line 1804
    iget v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mCounter:I

    # getter for: Lcom/android/calendar/DayView;->sCounter:I
    invoke-static {}, Lcom/android/calendar/DayView;->access$1100()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x20

    iget-object v4, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mStart:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mEnd:Landroid/text/format/Time;

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1808
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1812
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1816
    return-void
.end method
