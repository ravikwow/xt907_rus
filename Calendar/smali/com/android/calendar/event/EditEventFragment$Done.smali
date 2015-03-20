.class Lcom/android/calendar/event/EditEventFragment$Done;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Done"
.end annotation


# instance fields
.field private mCode:I

.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventFragment;)V
    .locals 1

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 659
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v9, 0x0

    # setter for: Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z
    invoke-static {v7, v9}, Lcom/android/calendar/event/EditEventFragment;->access$202(Lcom/android/calendar/event/EditEventFragment;Z)Z

    .line 660
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v7, :cond_0

    .line 663
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    const/4 v9, 0x3

    iput v9, v7, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 666
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v7}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v7}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v7}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v7

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v7}, Lcom/android/calendar/event/EditEventFragment;->isEmptyNewEvent()Z

    move-result v7

    if-nez v7, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v7}, Lcom/android/calendar/CalendarEventModel;->normalizeReminders()Z

    move-result v7

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v10, v10, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v11, v11, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/calendar/event/EditEventHelper;->saveEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 674
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "LOCAL"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v9, v9, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v9, v9, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 679
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 680
    const v19, 0x7f0c002c

    .line 691
    .local v19, "stringResource":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    const/4 v9, 0x0

    move/from16 v0, v19

    invoke-static {v7, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 696
    .end local v19    # "stringResource":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v7}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 698
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 699
    .local v3, "begin":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v5, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 700
    .local v5, "end":J
    const/4 v8, -0x1

    .line 701
    .local v8, "which":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    packed-switch v7, :pswitch_data_0

    .line 712
    :goto_2
    new-instance v2, Lcom/android/calendar/DeleteEventHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$800(Lcom/android/calendar/event/EditEventFragment;)Z

    move-result v7

    if-nez v7, :cond_c

    const/4 v7, 0x1

    :goto_3
    invoke-direct {v2, v9, v10, v7}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 714
    .local v2, "deleteHelper":Lcom/android/calendar/DeleteEventHelper;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLcom/android/calendar/CalendarEventModel;I)V

    .line 717
    .end local v2    # "deleteHelper":Lcom/android/calendar/DeleteEventHelper;
    .end local v3    # "begin":J
    .end local v5    # "end":J
    .end local v8    # "which":I
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    .line 720
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 721
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 722
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v12, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 723
    .local v12, "start":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v5, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 724
    .restart local v5    # "end":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v7, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v7, :cond_4

    .line 727
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v21

    .line 728
    .local v21, "tz":Ljava/lang/String;
    new-instance v20, Landroid/text/format/Time;

    const-string v7, "UTC"

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 729
    .local v20, "t":Landroid/text/format/Time;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 730
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 731
    const/4 v7, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 733
    const-string v7, "UTC"

    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 734
    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 735
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 736
    const/4 v7, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 738
    .end local v20    # "t":Landroid/text/format/Time;
    .end local v21    # "tz":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v9

    const-wide/16 v10, -0x1

    const/16 v16, 0x0

    move-wide v14, v5

    invoke-virtual/range {v9 .. v16}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJI)V

    .line 742
    .end local v5    # "end":J
    .end local v12    # "start":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 743
    .local v17, "a":Landroid/app/Activity;
    if-eqz v17, :cond_6

    .line 744
    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->finish()V

    .line 750
    .end local v17    # "a":Landroid/app/Activity;
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v18

    .line 751
    .local v18, "focusedView":Landroid/view/View;
    if-eqz v18, :cond_7

    .line 752
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$900(Lcom/android/calendar/event/EditEventFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 753
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->clearFocus()V

    .line 755
    :cond_7
    return-void

    .line 682
    .end local v18    # "focusedView":Landroid/view/View;
    :cond_8
    const v19, 0x7f0c002b

    .restart local v19    # "stringResource":I
    goto/16 :goto_0

    .line 685
    .end local v19    # "stringResource":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 686
    const v19, 0x7f0c0029

    .restart local v19    # "stringResource":I
    goto/16 :goto_0

    .line 688
    .end local v19    # "stringResource":I
    :cond_a
    const v19, 0x7f0c0028

    .restart local v19    # "stringResource":I
    goto/16 :goto_0

    .line 692
    .end local v19    # "stringResource":I
    :cond_b
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v7, v7, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v7}, Lcom/android/calendar/event/EditEventFragment;->isEmptyNewEvent()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 693
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/event/EditEventFragment$Done;->this$0:Lcom/android/calendar/event/EditEventFragment;

    # getter for: Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/event/EditEventFragment;->access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    const v9, 0x7f0c002a

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 703
    .restart local v3    # "begin":J
    .restart local v5    # "end":J
    .restart local v8    # "which":I
    :pswitch_0
    const/4 v8, 0x0

    .line 704
    goto/16 :goto_2

    .line 706
    :pswitch_1
    const/4 v8, 0x1

    .line 707
    goto/16 :goto_2

    .line 709
    :pswitch_2
    const/4 v8, 0x2

    goto/16 :goto_2

    .line 712
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDoneCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 653
    iput p1, p0, Lcom/android/calendar/event/EditEventFragment$Done;->mCode:I

    .line 654
    return-void
.end method
