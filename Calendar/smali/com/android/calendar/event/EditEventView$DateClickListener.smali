.class Lcom/android/calendar/event/EditEventView$DateClickListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateClickListener"
.end annotation


# instance fields
.field private mTime:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V
    .locals 0
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->mTime:Landroid/text/format/Time;

    .line 584
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 589
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    # getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$600(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/EditEventView$DateListener;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/event/EditEventView$DateListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    sput-object v0, Lcom/android/calendar/event/EditEventFragment;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    .line 591
    sget-object v0, Lcom/android/calendar/event/EditEventFragment;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v6

    .line 592
    .local v6, "cv":Landroid/widget/CalendarView;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    # getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/event/EditEventView;->access$600(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/CalendarView;->setShowWeekNumber(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$DateClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    # getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/event/EditEventView;->access$600(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v7

    .line 595
    .local v7, "startOfWeek":I
    const/4 v0, 0x6

    if-ne v7, v0, :cond_0

    .line 596
    const/4 v7, 0x7

    .line 602
    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 603
    sget-object v0, Lcom/android/calendar/event/EditEventFragment;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 604
    sget-object v0, Lcom/android/calendar/event/EditEventFragment;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 606
    return-void

    .line 597
    :cond_0
    if-nez v7, :cond_1

    .line 598
    const/4 v7, 0x1

    goto :goto_0

    .line 600
    :cond_1
    const/4 v7, 0x2

    goto :goto_0
.end method
