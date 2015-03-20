.class public Lcom/android/calendar/EventInfoActivity;
.super Landroid/app/Activity;
.source "EventInfoActivity.java"


# instance fields
.field private mAttendeeResponse:I

.field private mEndMillis:J

.field private mEventId:J

.field private mInfoFragment:Lcom/android/calendar/EventInfoFragment;

.field private mIsDialog:Z

.field private mIsIcsImport:Z

.field private mStartMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 57
    .local v18, "intent":Landroid/content/Intent;
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 59
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/EventInfoActivity;->mIsIcsImport:Z

    .line 60
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/EventInfoActivity;->mIsDialog:Z

    .line 61
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponse:I

    .line 64
    if-eqz p1, :cond_2

    .line 65
    const-string v1, "key_event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 66
    const-string v1, "key_start_millis"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 67
    const-string v1, "key_end_millis"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 69
    const-string v1, "key_fragment_is_ics_import"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/EventInfoActivity;->mIsIcsImport:Z

    .line 70
    const-string v1, "key_fragment_is_dialog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/EventInfoActivity;->mIsDialog:Z

    .line 71
    const-string v1, "key_attendee_response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponse:I

    .line 93
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 94
    .local v19, "res":Landroid/content/res/Resources;
    const v1, 0x7f090004

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f090005

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponse:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJI)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 130
    :cond_1
    :goto_1
    return-void

    .line 73
    .end local v19    # "res":Landroid/content/res/Resources;
    :cond_2
    if-eqz v18, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "beginTime"

    const-wide/16 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 75
    const-string v1, "endTime"

    const-wide/16 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 77
    const-string v1, "attendeeStatus"

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponse:I

    .line 79
    const-string v1, "com.android.calendar.ics.IMPORT_ICS"

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/EventInfoActivity;->mIsIcsImport:Z

    .line 81
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 82
    .local v14, "data":Landroid/net/Uri;
    if-eqz v14, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {v14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v15

    .line 86
    .local v15, "e":Ljava/lang/NumberFormatException;
    const-string v1, "EventInfoActivity"

    const-string v2, "No event id"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 102
    .end local v14    # "data":Landroid/net/Uri;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "res":Landroid/content/res/Resources;
    :cond_3
    const v1, 0x7f040032

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1000b0

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    .line 111
    .local v13, "bar":Landroid/app/ActionBar;
    if-eqz v13, :cond_4

    .line 112
    const/4 v1, 0x6

    invoke-virtual {v13, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 116
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    if-nez v1, :cond_1

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v16

    .line 118
    .local v16, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual/range {v16 .. v16}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v17

    .line 120
    .local v17, "ft":Landroid/app/FragmentTransaction;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v12, "extras":Landroid/os/Bundle;
    const-string v1, "com.android.calendar.ics.IMPORT_ICS"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EventInfoActivity;->mIsIcsImport:Z

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    new-instance v1, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponse:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/calendar/EventInfoActivity;->mIsDialog:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EventInfoActivity;->mIsDialog:Z

    if-eqz v2, :cond_5

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZILandroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 127
    const v1, 0x7f1000b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 128
    invoke-virtual/range {v17 .. v17}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 122
    :cond_5
    const/4 v11, 0x0

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 212
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 207
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    const-string v0, "key_event_id"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    const-string v0, "key_start_millis"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    const-string v0, "key_end_millis"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    const-string v0, "key_fragment_is_ics_import"

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsIcsImport:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    const-string v0, "key_fragment_is_dialog"

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    const-string v0, "key_attendee_response"

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponse:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    return-void
.end method
