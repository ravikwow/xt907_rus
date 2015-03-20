.class Lcom/android/calendar/DayView$6;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2031
    iput-object p1, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    iput-object p2, p0, Lcom/android/calendar/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 2033
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mFirstJulianDay:I
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1400(Lcom/android/calendar/DayView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mLoadedFirstJulianDay:I
    invoke-static {v5}, Lcom/android/calendar/DayView;->access$1500(Lcom/android/calendar/DayView;)I

    move-result v5

    if-eq v4, v5, :cond_1

    move v1, v3

    .line 2034
    .local v1, "fadeinEvents":Z
    :goto_0
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    iget-object v5, p0, Lcom/android/calendar/DayView$6;->val$events:Ljava/util/ArrayList;

    # setter for: Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/android/calendar/DayView;->access$1602(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2035
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    iget-object v5, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mFirstJulianDay:I
    invoke-static {v5}, Lcom/android/calendar/DayView;->access$1400(Lcom/android/calendar/DayView;)I

    move-result v5

    # setter for: Lcom/android/calendar/DayView;->mLoadedFirstJulianDay:I
    invoke-static {v4, v5}, Lcom/android/calendar/DayView;->access$1502(Lcom/android/calendar/DayView;I)I

    .line 2036
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1700(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    .line 2037
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/android/calendar/DayView;->access$1702(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2043
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2044
    .local v0, "e":Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2045
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1700(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2033
    .end local v0    # "e":Lcom/android/calendar/Event;
    .end local v1    # "fadeinEvents":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2039
    .restart local v1    # "fadeinEvents":Z
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1700(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 2050
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1800(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1800(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lcom/android/calendar/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 2051
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    iget-object v5, p0, Lcom/android/calendar/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/text/StaticLayout;

    # setter for: Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;
    invoke-static {v4, v5}, Lcom/android/calendar/DayView;->access$1802(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;

    .line 2056
    :goto_3
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1900(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1900(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/DayView;->access$1700(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 2057
    :cond_5
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    iget-object v5, p0, Lcom/android/calendar/DayView$6;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/text/StaticLayout;

    # setter for: Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;
    invoke-static {v4, v5}, Lcom/android/calendar/DayView;->access$1902(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;

    .line 2062
    :goto_4
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->computeEventRelations()V
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$2000(Lcom/android/calendar/DayView;)V

    .line 2064
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # setter for: Lcom/android/calendar/DayView;->mRemeasure:Z
    invoke-static {v4, v3}, Lcom/android/calendar/DayView;->access$2102(Lcom/android/calendar/DayView;Z)Z

    .line 2065
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # setter for: Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z
    invoke-static {v4, v3}, Lcom/android/calendar/DayView;->access$2202(Lcom/android/calendar/DayView;Z)Z

    .line 2066
    iget-object v3, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->recalc()V
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2300(Lcom/android/calendar/DayView;)V

    .line 2069
    if-eqz v1, :cond_9

    .line 2070
    iget-object v3, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2400(Lcom/android/calendar/DayView;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-nez v3, :cond_6

    .line 2071
    iget-object v3, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    const-string v5, "EventsAlpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    # setter for: Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v3, v4}, Lcom/android/calendar/DayView;->access$2402(Lcom/android/calendar/DayView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 2073
    iget-object v3, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2400(Lcom/android/calendar/DayView;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2075
    :cond_6
    iget-object v3, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$2400(Lcom/android/calendar/DayView;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 2079
    :goto_5
    return-void

    .line 2053
    :cond_7
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1800(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 2059
    :cond_8
    iget-object v4, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;
    invoke-static {v4}, Lcom/android/calendar/DayView;->access$1900(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 2077
    :cond_9
    iget-object v3, p0, Lcom/android/calendar/DayView$6;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 2071
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
