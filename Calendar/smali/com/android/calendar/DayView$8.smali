.class Lcom/android/calendar/DayView$8;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayView;->onLongClick(Landroid/view/View;)Z
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
    .line 4957
    iput-object p1, p0, Lcom/android/calendar/DayView$8;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4960
    if-nez p2, :cond_1

    .line 4961
    const-wide/16 v13, 0x0

    .line 4962
    .local v13, "extraLong":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/DayView$8;->this$0:Lcom/android/calendar/DayView;

    iget-boolean v1, v1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v1, :cond_0

    .line 4963
    const-wide/16 v13, 0x10

    .line 4965
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/DayView$8;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    const-wide/16 v3, 0x1

    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView$8;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v2}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const-wide/16 v15, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v16}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 4969
    .end local v13    # "extraLong":J
    :cond_1
    return-void
.end method
