.class Lcom/android/calendar/EventInfoFragment$QueryHandler;
.super Lcom/android/calendar/AsyncQueryService;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    .line 447
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 448
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 453
    if-nez p3, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 460
    .local v10, "activity":Landroid/app/Activity;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 465
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 569
    :cond_4
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move/from16 v0, p1

    # invokes: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v2, v0}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$2600(Lcom/android/calendar/EventInfoFragment;)I

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    .line 576
    const-wide/16 v2, 0x258

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mLoadingMsgStartTime:J
    invoke-static {v4}, Lcom/android/calendar/EventInfoFragment;->access$400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v18

    sub-long v6, v6, v18

    sub-long v16, v2, v6

    .line 578
    .local v16, "timeDiff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_5

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 582
    .end local v16    # "timeDiff":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$2700(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 467
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    # setter for: Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$602(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # invokes: Lcom/android/calendar/EventInfoFragment;->initEventCursor()Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$700(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 472
    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 475
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/android/calendar/EventInfoFragment;->updateEvent(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # invokes: Lcom/android/calendar/EventInfoFragment;->prepareReminders()V
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$800(Lcom/android/calendar/EventInfoFragment;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    # invokes: Lcom/android/calendar/EventInfoFragment;->decorateForScratch(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$900(Lcom/android/calendar/EventInfoFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 482
    .local v5, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$600(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 484
    .local v8, "args":[Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x0

    sget-object v6, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id=?"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 488
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "args":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    # setter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1002(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # invokes: Lcom/android/calendar/EventInfoFragment;->updateTitle()V
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1200(Lcom/android/calendar/EventInfoFragment;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1300(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 494
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$1400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 498
    .restart local v8    # "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    # invokes: Lcom/android/calendar/EventInfoFragment;->decorateForScratch(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$900(Lcom/android/calendar/EventInfoFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 500
    .restart local v5    # "uri":Landroid/net/Uri;
    const/4 v3, 0x4

    const/4 v4, 0x0

    # getter for: Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/EventInfoFragment;->access$1500()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "event_id=?"

    const-string v9, "attendeeName ASC, attendeeEmail ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "args":[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1700(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 507
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$1400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 509
    .restart local v8    # "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    # invokes: Lcom/android/calendar/EventInfoFragment;->decorateForScratch(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$900(Lcom/android/calendar/EventInfoFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 511
    .restart local v5    # "uri":Landroid/net/Uri;
    const/16 v3, 0x10

    const/4 v4, 0x0

    # getter for: Lcom/android/calendar/EventInfoFragment;->REMINDERS_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/EventInfoFragment;->access$1800()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "event_id=?"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "args":[Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1900(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 520
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$1400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 521
    .restart local v8    # "args":[Ljava/lang/String;
    sget-object v5, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    .line 522
    .restart local v5    # "uri":Landroid/net/Uri;
    const/16 v3, 0x20

    const/4 v4, 0x0

    # getter for: Lcom/android/calendar/EventInfoFragment;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/EventInfoFragment;->access$2000()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "event_id=?"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 503
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "args":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v3, 0x4

    # invokes: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;I)V

    goto :goto_2

    .line 514
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/16 v3, 0x10

    # invokes: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;I)V

    goto :goto_3

    .line 527
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/16 v3, 0x20

    # invokes: Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$1600(Lcom/android/calendar/EventInfoFragment;I)V

    goto/16 :goto_1

    .line 532
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    # setter for: Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$2102(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/android/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$2200(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/EventInfoFragment;->updateResponse(Landroid/view/View;)V

    goto/16 :goto_1

    .line 537
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    # setter for: Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$2302(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/calendar/EventInfoFragment;->access$2300(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/EventInfoFragment;->initReminders(Landroid/view/View;Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 541
    :sswitch_4
    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 542
    .local v14, "res":Landroid/content/res/Resources;
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 545
    .local v15, "sb":Landroid/text/SpannableStringBuilder;
    const v2, 0x7f0c003d

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 546
    .local v13, "label":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 547
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v15, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1000(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 552
    .local v11, "calendarName":Ljava/lang/String;
    invoke-virtual {v15, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1000(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 557
    .local v12, "email":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 558
    const-string v2, " ("

    invoke-virtual {v15, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 564
    .end local v11    # "calendarName":Ljava/lang/String;
    .end local v12    # "email":Ljava/lang/String;
    .end local v13    # "label":Ljava/lang/String;
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "sb":Landroid/text/SpannableStringBuilder;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    # setter for: Lcom/android/calendar/EventInfoFragment;->mExtendedPropertiesCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$2402(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mExtendedPropertiesCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/calendar/EventInfoFragment;->access$2400(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v4

    # invokes: Lcom/android/calendar/EventInfoFragment;->initExtendedProperties(Landroid/view/View;Landroid/database/Cursor;)V
    invoke-static {v2, v3, v4}, Lcom/android/calendar/EventInfoFragment;->access$2500(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 585
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v2

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 465
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
