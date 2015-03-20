.class public Lcom/android/calendar/EventInfoFragment;
.super Landroid/app/DialogFragment;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;
.implements Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;,
        Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;,
        Lcom/android/calendar/EventInfoFragment$ShareIcsTask;,
        Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;,
        Lcom/android/calendar/EventInfoFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static DIALOG_TOP_MARGIN:I

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field private static mCustomAppIconSize:I

.field private static mDialogHeight:I

.field private static mDialogWidth:I

.field private static mScale:F

.field private static final mWildcardPattern:Ljava/util/regex/Pattern;


# instance fields
.field mAcceptedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAllDay:Z

.field private mAllowEditWithAttendees:Z

.field private mAnimateAlpha:Landroid/animation/ObjectAnimator;

.field private mAttendeeResponseFromIntent:I

.field private mAttendeesCount:I

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendarAllowedReminders:Ljava/lang/String;

.field private mCalendarId:J

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCanModifyCalendar:Z

.field private mCanModifyEvent:Z

.field mCcEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mCurrentQuery:I

.field mDeclinedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultReminderMinutes:I

.field private mDeleteDialogVisible:Z

.field private mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDesc:Lcom/android/calendar/ExpandableTextView;

.field private mDismissOnResume:Z

.field private mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventDeletionStarted:Z

.field private mEventId:J

.field private mEventOrganizerDisplayName:Ljava/lang/String;

.field private mEventOrganizerEmail:Ljava/lang/String;

.field private mEventUID:Ljava/lang/String;

.field private mExtendedPropertiesCursor:Landroid/database/Cursor;

.field private mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

.field private mHasAlarm:Z

.field private mHasAttendeeData:Z

.field private mHeadlines:Landroid/view/View;

.field private mIsBusyFreeCalendar:Z

.field private mIsDialog:Z

.field private mIsIcsImport:Z

.field private mIsOrganizer:Z

.field private mIsPaused:Z

.field private mIsRepeating:Z

.field private mIsTabletConfig:Z

.field private final mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

.field private mLoadingMsgStartTime:J

.field private mLoadingMsgView:Landroid/view/View;

.field private mLongAttendees:Lcom/android/calendar/event/AttendeesView;

.field private mMaxReminders:I

.field private mMenu:Landroid/view/Menu;

.field private mMinTop:I

.field private mMoreActionButton:Landroid/widget/Button;

.field private mMoreActionPopupVisible:Z

.field private mNoCrossFade:Z

.field mNoResponseAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfAttendees:I

.field private mOriginalAttendeeResponse:I

.field public mOriginalReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnerCanRespond:Z

.field private mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mReminderMethodLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMethodValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReminderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field public mReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindersCursor:Landroid/database/Cursor;

.field private mReplaceEventDialog:Landroid/app/AlertDialog;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStartMillis:J

.field private mSyncAccountName:Ljava/lang/String;

.field private mSyncAccountType:Ljava/lang/String;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field mTentativeAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field mToEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUnsupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mUserModifiedReminders:Z

.field private mUserSetResponse:I

.field private mView:Landroid/view/View;

.field private mWhenDateTime:Landroid/widget/TextView;

.field private mWhere:Landroid/widget/TextView;

.field private mWindowStyle:I

.field private mX:I

.field private mY:I

.field private final onDeleteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "calendar_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "displayColor"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "customAppPackage"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "customAppUri"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "availability"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 226
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "attendeeIdentity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "attendeeIdNamespace"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 248
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 259
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "canOrganizerRespond"

    aput-object v1, v0, v6

    const-string v1, "account_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 282
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "value"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    .line 311
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/EventInfoFragment;->mScale:F

    .line 313
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    .line 366
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->mWildcardPattern:Ljava/util/regex/Pattern;

    .line 423
    const/16 v0, 0x1f4

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    .line 424
    const/16 v0, 0x258

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    .line 425
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 629
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 159
    iput v5, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 173
    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 323
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 334
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 335
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionPopupVisible:Z

    .line 339
    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 340
    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 346
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 354
    iput-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 363
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 382
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 402
    new-instance v0, Lcom/android/calendar/EventInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$1;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 409
    new-instance v0, Lcom/android/calendar/EventInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$2;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    .line 426
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 427
    iput-boolean v5, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 428
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 429
    iput v4, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 430
    iput v4, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 439
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    .line 440
    iput-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mEventUID:Ljava/lang/String;

    .line 441
    iput-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReplaceEventDialog:Landroid/app/AlertDialog;

    .line 913
    new-instance v0, Lcom/android/calendar/EventInfoFragment$8;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$8;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 630
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJJIZI)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "attendeeResponse"    # I
    .param p9, "isDialog"    # Z
    .param p10, "windowStyle"    # I

    .prologue
    .line 636
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;Landroid/net/Uri;JJIZI)V

    .line 638
    iput-wide p2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 639
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJJIZILandroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "attendeeResponse"    # I
    .param p9, "isDialog"    # Z
    .param p10, "windowStyle"    # I
    .param p11, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 644
    invoke-direct/range {p0 .. p10}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    .line 645
    const-string v0, "com.android.calendar.ics.IMPORT_ICS"

    const/4 v1, 0x0

    invoke-virtual {p11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    .line 646
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JJIZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "attendeeResponse"    # I
    .param p8, "isDialog"    # Z
    .param p9, "windowStyle"    # I

    .prologue
    .line 603
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 159
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 321
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 323
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 335
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionPopupVisible:Z

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 340
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 346
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 363
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 382
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 402
    new-instance v1, Lcom/android/calendar/EventInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$1;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 409
    new-instance v1, Lcom/android/calendar/EventInfoFragment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$2;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    .line 426
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 427
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 428
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 429
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 430
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 439
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    .line 440
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventUID:Ljava/lang/String;

    .line 441
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReplaceEventDialog:Landroid/app/AlertDialog;

    .line 913
    new-instance v1, Lcom/android/calendar/EventInfoFragment$8;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$8;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 605
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 606
    .local v0, "r":Landroid/content/res/Resources;
    sget v1, Lcom/android/calendar/EventInfoFragment;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/EventInfoFragment;->mScale:F

    .line 608
    sget v1, Lcom/android/calendar/EventInfoFragment;->mScale:F

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 609
    sget v1, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/EventInfoFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    .line 610
    if-eqz p8, :cond_0

    .line 611
    sget v1, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/EventInfoFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    .line 615
    :cond_0
    if-eqz p8, :cond_1

    .line 616
    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoFragment;->setDialogSize(Landroid/content/res/Resources;)V

    .line 618
    :cond_1
    iput-boolean p8, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 620
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 621
    iput-object p2, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 622
    iput-wide p3, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 623
    iput-wide p5, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 624
    iput p7, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 625
    iput p9, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 626
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateEvent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateTitle()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    return-wide v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/EventInfoFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    return v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->REMINDERS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mExtendedPropertiesCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mExtendedPropertiesCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/database/Cursor;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/EventInfoFragment;->initExtendedProperties(Landroid/view/View;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/calendar/EventInfoFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mNoCrossFade:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/calendar/EventInfoFragment;)Lcom/android/calendar/DeleteEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/calendar/EventInfoFragment;Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/DeleteEventHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Lcom/android/calendar/DeleteEventHelper;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/calendar/EventInfoFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/calendar/EventInfoFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/calendar/EventInfoFragment;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgStartTime:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/EventInfoFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # J

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgStartTime:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->emailAttendees()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->addReminder()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->onMoreActionClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4702(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionPopupVisible:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarId:J

    return-wide v0
.end method

.method static synthetic access$5100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->doEdit()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/calendar/EventInfoFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/EventInfoFragment;->destroyICalView(ZZ)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveICalEventToLocal()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/calendar/EventInfoFragment;Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;
    .param p2, "x2"    # J

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EventInfoFragment;->replaceEventInDB(Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->initEventCursor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->prepareReminders()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/EventInfoFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/EventInfoFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->decorateForScratch(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2882
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2883
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2884
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2886
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2887
    return-void
.end method

.method private addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/widget/TextView;",
            "Lcom/android/calendar/ExpandableTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2046
    if-eqz p2, :cond_1

    .line 2047
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2054
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2055
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2056
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2057
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2058
    const-string v0, ". "

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2061
    :cond_0
    return-void

    .line 2048
    :cond_1
    if-eqz p3, :cond_0

    .line 2049
    invoke-virtual {p3}, Lcom/android/calendar/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2608
    .local p1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2609
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2611
    :cond_0
    return-void
.end method

.method private addReminder()V
    .locals 11

    .prologue
    .line 2520
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget v9, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    iget-object v10, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    .line 2533
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 2534
    return-void

    .line 2527
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget v9, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    iget-object v10, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_0
.end method

.method private addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2872
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2873
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2874
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2876
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2877
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2878
    return-void
.end method

.method private applyDialogParams()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 683
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 684
    .local v1, "dialog":Landroid/app/Dialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 686
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 687
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 689
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 690
    .local v0, "a":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3ecccccd

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 692
    sget v3, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 693
    sget v3, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 699
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    if-eq v3, v4, :cond_2

    .line 700
    :cond_0
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    sget v4, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 701
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    sget v4, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 702
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p0, Lcom/android/calendar/EventInfoFragment;->mMinTop:I

    if-ge v3, v4, :cond_1

    .line 703
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mMinTop:I

    sget v4, Lcom/android/calendar/EventInfoFragment;->DIALOG_TOP_MARGIN:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 705
    :cond_1
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 707
    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 708
    return-void
.end method

.method private createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 2653
    new-instance v0, Lcom/android/calendar/EventInfoFragment$15;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$15;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    return-object v0
.end method

.method private createExceptionResponse(JI)V
    .locals 7

    .prologue
    .line 1490
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1491
    const-string v1, "originalInstanceTime"

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1492
    const-string v1, "selfAttendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1493
    const-string v1, "eventStatus"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1495
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1498
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 1502
    return-void
.end method

.method private decorateForScratch(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 2692
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2693
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2695
    const-string v1, "use_hidden_calendar"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2696
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2699
    :cond_0
    return-object p1
.end method

.method private destroyICalView(ZZ)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 3170
    if-eqz p1, :cond_1

    .line 3171
    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 3172
    iget-wide v5, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 3174
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3175
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 3177
    :goto_0
    if-eqz v0, :cond_0

    .line 3180
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 3181
    new-instance v2, Landroid/text/format/Time;

    const-string v8, "UTC"

    invoke-direct {v2, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 3183
    iput-object v0, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3184
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 3186
    const-string v8, "UTC"

    iput-object v8, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3187
    invoke-virtual {v2, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 3188
    iput-object v0, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3189
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 3191
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJI)V

    .line 3194
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 3195
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 3200
    :goto_1
    if-eqz p2, :cond_2

    .line 3201
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    const-wide/16 v6, 0x0

    move-object v2, v9

    move-object v4, v9

    move-object v5, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 3203
    :cond_2
    return-void

    :cond_3
    move v0, v7

    .line 3175
    goto :goto_0

    .line 3197
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_0
.end method

.method private disableEditIfNeeded()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2316
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mAllowEditWithAttendees:Z

    if-nez v0, :cond_2

    .line 2317
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCount:I

    if-lez v0, :cond_3

    .line 2319
    const-string v0, "com.android.exchange"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2320
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    if-eqz v0, :cond_0

    .line 2321
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    .line 2325
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v1, 0x7f1000bc

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2326
    if-eqz v0, :cond_1

    .line 2327
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2328
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2331
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2332
    if-eqz v0, :cond_2

    .line 2333
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2334
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2342
    :cond_2
    :goto_0
    return-void

    .line 2339
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f100095

    invoke-direct {p0, v0, v1, v3}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private doEdit()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 1541
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 1544
    .local v14, "c":Landroid/content/Context;
    if-eqz v14, :cond_0

    .line 1545
    invoke-static {v14}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x8

    iget-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v6, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v8, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    const-wide/16 v12, -0x1

    move-object v1, p0

    move v11, v10

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 1549
    :cond_0
    return-void
.end method

.method private emailAttendees()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2618
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v1, v2

    .line 2620
    .local v1, "eventTitle":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->createEmailAttendeesIntent(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2622
    .local v6, "emailIntent":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2623
    return-void

    .line 2618
    .end local v1    # "eventTitle":Ljava/lang/String;
    .end local v6    # "emailIntent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static findButtonIdForResponse(I)I
    .locals 1

    .prologue
    .line 1524
    packed-switch p0, :pswitch_data_0

    .line 1535
    :pswitch_0
    const/4 v0, -0x1

    .line 1537
    :goto_0
    return v0

    .line 1526
    :pswitch_1
    const v0, 0x7f100066

    .line 1527
    goto :goto_0

    .line 1529
    :pswitch_2
    const v0, 0x7f100067

    .line 1530
    goto :goto_0

    .line 1532
    :pswitch_3
    const v0, 0x7f100068

    .line 1533
    goto :goto_0

    .line 1524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static findNanpMatchEnd(Ljava/lang/CharSequence;I)I
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0x31

    const/4 v3, -0x1

    .line 1812
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1814
    const/4 v2, 0x0

    .line 1815
    const/16 v1, 0x78

    move v4, p1

    .line 1817
    :goto_0
    if-gt v4, v5, :cond_3

    .line 1819
    if-ge v4, v5, :cond_0

    .line 1820
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1825
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1826
    if-nez v2, :cond_a

    .line 1829
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .line 1830
    if-le v1, v8, :cond_8

    move v0, v3

    .line 1853
    :goto_3
    return v0

    .line 1822
    :cond_0
    const/16 v0, 0x1b

    goto :goto_1

    .line 1834
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1835
    if-ne v1, v7, :cond_2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_7

    const/4 v0, 0x4

    if-eq v2, v0, :cond_7

    :cond_2
    const/4 v0, 0x3

    if-eq v2, v0, :cond_7

    .line 1847
    :cond_3
    if-eq v1, v7, :cond_4

    const/4 v0, 0x7

    if-eq v2, v0, :cond_5

    const/16 v0, 0xa

    if-eq v2, v0, :cond_5

    :cond_4
    if-ne v1, v7, :cond_9

    if-ne v2, v8, :cond_9

    :cond_5
    move v0, v4

    .line 1850
    goto :goto_3

    .line 1839
    :cond_6
    const-string v6, "()+-*#."

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_3

    :cond_7
    move v0, v1

    move v1, v2

    .line 1844
    :cond_8
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    move v1, v0

    .line 1845
    goto :goto_0

    :cond_9
    move v0, v3

    .line 1853
    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method static findNanpPhoneNumbers(Ljava/lang/CharSequence;)[I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1748
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1750
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1751
    .local v5, "startPos":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    add-int/lit8 v0, v6, 0x1

    .line 1752
    .local v0, "endPos":I
    if-gez v0, :cond_2

    .line 1753
    const/4 v6, 0x0

    new-array v4, v6, [I

    .line 1787
    :cond_0
    return-object v4

    .line 1770
    :cond_1
    invoke-static {p0, v5}, Lcom/android/calendar/EventInfoFragment;->findNanpMatchEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1771
    .local v3, "matchEnd":I
    if-le v3, v5, :cond_5

    .line 1772
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    move v5, v3

    .line 1760
    .end local v3    # "matchEnd":I
    :cond_2
    if-ge v5, v0, :cond_4

    .line 1762
    :goto_0
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ge v5, v0, :cond_3

    .line 1763
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1765
    :cond_3
    if-ne v5, v0, :cond_1

    .line 1783
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [I

    .line 1784
    .local v4, "result":[I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 1785
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v1

    .line 1784
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1777
    .end local v1    # "i":I
    .end local v4    # "result":[I
    .restart local v3    # "matchEnd":I
    :cond_5
    :goto_2
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    if-ge v5, v0, :cond_2

    .line 1778
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private getContentValuesFromEvent()Landroid/content/ContentValues;
    .locals 23

    .prologue
    .line 2937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2939
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2942
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2943
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0x15

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2949
    if-nez v1, :cond_0

    .line 2950
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 2952
    :cond_0
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2953
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2955
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 2956
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 2958
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2962
    if-eqz v8, :cond_1

    .line 2965
    const-string v5, "UTC"

    .line 2966
    const/4 v1, 0x0

    iput v1, v2, Landroid/text/format/Time;->hour:I

    .line 2967
    const/4 v1, 0x0

    iput v1, v2, Landroid/text/format/Time;->minute:I

    .line 2968
    const/4 v1, 0x0

    iput v1, v2, Landroid/text/format/Time;->second:I

    .line 2969
    iput-object v5, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2970
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 2972
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 2973
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 2974
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 2975
    move-object/from16 v0, v17

    iput-object v5, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2976
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 2977
    const-wide/32 v17, 0x5265c00

    add-long v17, v17, v3

    cmp-long v17, v1, v17

    if-gez v17, :cond_6

    .line 2978
    const-wide/32 v1, 0x5265c00

    add-long/2addr v1, v3

    move-wide/from16 v19, v1

    move-object v1, v5

    move-wide/from16 v21, v3

    move-wide/from16 v4, v21

    move-wide/from16 v2, v19

    .line 2985
    :goto_0
    const-string v17, "calendar_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2986
    const-string v14, "eventTimezone"

    invoke-virtual {v6, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    const-string v1, "title"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    const-string v1, "allDay"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2989
    const-string v1, "dtstart"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2990
    const-string v1, "rrule"

    invoke-virtual {v6, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2991
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2992
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/calendar/EventInfoFragment;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 2997
    :goto_1
    if-eqz v10, :cond_3

    .line 2998
    const-string v1, "description"

    invoke-virtual {v6, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3002
    :goto_2
    if-eqz v9, :cond_4

    .line 3003
    const-string v1, "eventLocation"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    :goto_3
    const-string v1, "availability"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3008
    const-string v1, "hasAttendeeData"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3009
    const-string v1, "accessLevel"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v1, v6

    .line 3014
    :goto_4
    return-object v1

    .line 2981
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 2982
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    goto :goto_0

    .line 2994
    :cond_2
    const-string v4, "duration"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    const-string v1, "dtend"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 3000
    :cond_3
    const-string v2, "description"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3005
    :cond_4
    const-string v2, "eventLocation"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3014
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    move-wide/from16 v19, v1

    move-object v1, v5

    move-wide/from16 v21, v3

    move-wide/from16 v4, v21

    move-wide/from16 v2, v19

    goto/16 :goto_0
.end method

.method private getEventIdByUID(Ljava/lang/String;J)J
    .locals 12

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 2832
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2833
    const-string v3, "name=? AND value=?"

    .line 2835
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "UID"

    aput-object v1, v4, v7

    aput-object p1, v4, v2

    .line 2838
    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "event_id"

    aput-object v6, v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2841
    if-eqz v10, :cond_4

    .line 2843
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=? AND calendar_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-wide v6, v8

    .line 2845
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2846
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 2851
    if-eqz v4, :cond_2

    .line 2853
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2854
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2857
    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2860
    :goto_2
    cmp-long v4, v1, v8

    if-eqz v4, :cond_0

    move-wide v0, v1

    .line 2863
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2867
    :goto_4
    return-wide v0

    .line 2857
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2863
    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move-wide v6, v1

    .line 2861
    goto :goto_0

    :cond_1
    move-wide v1, v6

    goto :goto_1

    :cond_2
    move-wide v1, v6

    goto :goto_2

    :cond_3
    move-wide v0, v6

    goto :goto_3

    :cond_4
    move-wide v0, v8

    goto :goto_4
.end method

.method private getLocalAccountInfo()Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2798
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2799
    const-string v3, "account_type=?"

    .line 2800
    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "LOCAL"

    aput-object v1, v4, v7

    .line 2803
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v2, v7

    const-string v6, "account_name"

    aput-object v6, v2, v8

    const-string v6, "account_type"

    aput-object v6, v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2806
    if-eqz v1, :cond_1

    .line 2808
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2809
    new-instance v5, Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v2, v3, v0, v4}, Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2813
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2817
    :cond_1
    return-object v5

    .line 2813
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getResponseFromButtonId(I)I
    .locals 1
    .param p0, "buttonId"    # I

    .prologue
    .line 1506
    packed-switch p0, :pswitch_data_0

    .line 1517
    const/4 v0, 0x0

    .line 1519
    .local v0, "response":I
    :goto_0
    return v0

    .line 1508
    .end local v0    # "response":I
    :pswitch_0
    const/4 v0, 0x1

    .line 1509
    .restart local v0    # "response":I
    goto :goto_0

    .line 1511
    .end local v0    # "response":I
    :pswitch_1
    const/4 v0, 0x4

    .line 1512
    .restart local v0    # "response":I
    goto :goto_0

    .line 1514
    .end local v0    # "response":I
    :pswitch_2
    const/4 v0, 0x2

    .line 1515
    .restart local v0    # "response":I
    goto :goto_0

    .line 1506
    nop

    :pswitch_data_0
    .packed-switch 0x7f100066
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initAttendeesCursor(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 956
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 957
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 958
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 959
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 960
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 961
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 962
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 963
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 964
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 965
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 969
    .local v6, "status":I
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "email":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 976
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 978
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v0, :cond_1

    .line 979
    const v0, 0x7f100093

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 980
    const v0, 0x7f10006b

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 985
    :cond_1
    iget-wide v7, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 987
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v7, v0

    iput-wide v7, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 988
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 1022
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1025
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCount:I

    .line 1027
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateAttendees(Landroid/view/View;)V

    .line 1030
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f10008d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionButton:Landroid/widget/Button;

    .line 1031
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/calendar/EventInfoFragment$9;

    invoke-direct {v3, p0}, Lcom/android/calendar/EventInfoFragment$9;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionPopupVisible:Z

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1040
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1044
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateOptionMenuIfAny()V

    .line 1048
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "email":Ljava/lang/String;
    .end local v6    # "status":I
    :cond_3
    return-void

    .line 989
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "email":Ljava/lang/String;
    .restart local v6    # "status":I
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 991
    const-string v0, "EventInfoFragment"

    const-string v3, "Duplicate email organizer/owner, will ignore!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 993
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 994
    .local v4, "identity":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1000
    .local v5, "idNamespace":Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 1017
    :pswitch_0
    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1002
    :pswitch_1
    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1007
    :pswitch_2
    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1012
    :pswitch_3
    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    const/4 v3, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initEventCursor()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 941
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v3, v2

    .line 951
    :goto_0
    return v3

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 945
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 946
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "rRule":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    .line 948
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0xe

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    .line 949
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0xf

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    .line 950
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 947
    goto :goto_1

    :cond_3
    move v2, v3

    .line 948
    goto :goto_2
.end method

.method private initExtendedProperties(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2706
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2708
    :cond_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2709
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2710
    const-string v2, "UID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2711
    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventUID:Ljava/lang/String;

    .line 2717
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_8

    .line 2718
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_5

    .line 2719
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v1, 0x7f1000c0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2720
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v2, 0x7f1000c1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2721
    if-eqz v0, :cond_4

    .line 2722
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2723
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2725
    :cond_4
    if-eqz v1, :cond_5

    .line 2730
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2732
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2772
    :cond_5
    :goto_1
    return-void

    .line 2714
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2734
    :cond_7
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2735
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2740
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f10008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2741
    if-eqz v0, :cond_9

    .line 2742
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2743
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2744
    new-instance v1, Lcom/android/calendar/EventInfoFragment$16;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$16;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2752
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f100090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2753
    if-eqz v0, :cond_5

    .line 2758
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventUID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2759
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2761
    :cond_a
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2762
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2763
    new-instance v1, Lcom/android/calendar/EventInfoFragment$17;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$17;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private static linkifyTextView(Landroid/widget/TextView;)V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    .line 1886
    const-string v0, "user.region"

    const-string v1, "US"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1887
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1888
    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 1991
    :cond_0
    :goto_0
    return-void

    .line 1899
    :cond_1
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v7

    .line 1909
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1910
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->findNanpPhoneNumbers(Ljava/lang/CharSequence;)[I

    move-result-object v8

    .line 1919
    instance-of v0, v1, Landroid/text/SpannableString;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 1920
    check-cast v0, Landroid/text/SpannableString;

    move-object v2, v0

    .line 1928
    :goto_1
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v2, v3, v0, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    move v4, v3

    .line 1934
    :goto_2
    array-length v5, v8

    div-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_8

    .line 1935
    mul-int/lit8 v5, v3, 0x2

    aget v6, v8, v5

    .line 1936
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v9, v8, v5

    .line 1938
    invoke-static {v2, v0, v6, v9}, Lcom/android/calendar/EventInfoFragment;->spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1939
    const-string v5, "EventInfoFragment"

    invoke-static {v5, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1940
    invoke-interface {v1, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1941
    const-string v6, "EventInfoFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not linkifying "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " as phone number due to overlap"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1922
    :cond_3
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 1955
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v6

    .line 1956
    :goto_4
    if-ge v5, v9, :cond_7

    .line 1957
    invoke-interface {v2, v5}, Landroid/text/Spannable;->charAt(I)C

    move-result v11

    .line 1958
    const/16 v12, 0x2b

    if-eq v11, v12, :cond_5

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1959
    :cond_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1956
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1962
    :cond_7
    new-instance v5, Landroid/text/style/URLSpan;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1964
    const/16 v10, 0x21

    invoke-interface {v2, v5, v6, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1965
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1968
    :cond_8
    if-eqz v4, :cond_b

    .line 1970
    if-eq v2, v1, :cond_9

    .line 1971
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1976
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 1978
    if-eqz v0, :cond_a

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_b

    .line 1979
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1980
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1985
    :cond_b
    if-nez v7, :cond_0

    if-nez v4, :cond_0

    .line 1986
    const-string v0, "EventInfoFragment"

    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1987
    const-string v0, "EventInfoFragment"

    const-string v1, "No linkification matches, using geo default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_c
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->mWildcardPattern:Ljava/util/regex/Pattern;

    const-string v1, "geo:0,0?q="

    invoke-static {p0, v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2629
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 2630
    .local v3, "vals":[I
    array-length v2, v3

    .line 2631
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2633
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2634
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2637
    :cond_0
    return-object v1
.end method

.method private static loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 3
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2643
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2644
    .local v0, "labels":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2645
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private moveEventInDB(Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3087
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3088
    iget-wide v0, p1, Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;->mId:J

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3110
    :cond_0
    :goto_0
    return-void

    .line 3096
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3097
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 3100
    const-string v0, "calendar_id"

    iget-wide v5, p1, Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3101
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3106
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "com.android.calendar"

    const-wide/16 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3107
    :catch_0
    move-exception v0

    .line 3108
    const-string v1, "EventInfoFragment"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onMoreActionClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1170
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1171
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0004

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1173
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f1000c2

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1174
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "LOCAL"

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1177
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1178
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1184
    :goto_0
    new-instance v1, Lcom/android/calendar/EventInfoFragment$10;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$10;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1195
    new-instance v1, Lcom/android/calendar/EventInfoFragment$11;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$11;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1201
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1202
    iput-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionPopupVisible:Z

    .line 1203
    return-void

    .line 1180
    :cond_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1181
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private declared-synchronized prepareReminders()V
    .locals 3

    .prologue
    .line 2539
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 2564
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2549
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2550
    const v1, 0x7f070003

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 2551
    const v1, 0x7f070002

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 2552
    const v1, 0x7f070001

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 2553
    const/high16 v1, 0x7f070000

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 2557
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2558
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2561
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private replaceEventInDB(Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;J)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 3028
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 3078
    :cond_0
    :goto_0
    return-void

    .line 3033
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3036
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->getContentValuesFromEvent()Landroid/content/ContentValues;

    move-result-object v3

    .line 3037
    if-eqz v3, :cond_0

    .line 3039
    const-string v0, "calendar_id"

    iget-wide v5, p1, Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3042
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3043
    const-string v0, "hasAlarm"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3048
    :goto_1
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3056
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v0, v4}, Lcom/android/calendar/EventInfoFragment;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3059
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3061
    :cond_2
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 3062
    const-string v0, "minutes"

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3064
    const-string v0, "method"

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3066
    const-string v0, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3067
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3068
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3069
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3073
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "com.android.calendar"

    const-wide/16 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3074
    :catch_0
    move-exception v0

    .line 3075
    const-string v1, "EventInfoFragment"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3045
    :cond_4
    const-string v0, "hasAlarm"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1
.end method

.method private saveEventToDB(Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3121
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventUID:Ljava/lang/String;

    iget-wide v1, p1, Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;->mId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/EventInfoFragment;->getEventIdByUID(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3122
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3123
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->moveEventInDB(Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;)V

    .line 3124
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/EventInfoFragment;->destroyICalView(ZZ)V

    .line 3148
    :goto_0
    return-void

    .line 3127
    :cond_0
    new-instance v2, Lcom/android/calendar/EventInfoFragment$18;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment$18;-><init>(Lcom/android/calendar/EventInfoFragment;Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;J)V

    .line 3135
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReplaceEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3136
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReplaceEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3137
    iput-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReplaceEventDialog:Landroid/app/AlertDialog;

    .line 3140
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReplaceEventDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private saveICalEventToLocal()V
    .locals 3

    .prologue
    .line 3155
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->getLocalAccountInfo()Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;

    move-result-object v0

    .line 3156
    .local v0, "accountInfo":Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;
    if-eqz v0, :cond_0

    .line 3157
    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoFragment;->saveEventToDB(Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;)V

    .line 3161
    :goto_0
    return-void

    .line 3159
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EventInfoFragment;->destroyICalView(ZZ)V

    goto :goto_0
.end method

.method private saveReminders()Z
    .locals 10

    .prologue
    .line 2568
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2571
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    .line 2573
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2574
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2575
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2576
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2579
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/event/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v1

    .line 2582
    if-nez v1, :cond_0

    .line 2583
    const/4 v0, 0x0

    .line 2598
    :goto_0
    return v0

    .line 2587
    :cond_0
    new-instance v1, Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 2588
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 2590
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2591
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2592
    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 2593
    :goto_1
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    if-eq v0, v2, :cond_1

    .line 2594
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2595
    const-string v2, "hasAlarm"

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2596
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 2598
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2592
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2595
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private saveResponse()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1420
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 1461
    :goto_0
    return v0

    .line 1424
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f100065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 1425
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v5

    .line 1426
    if-nez v5, :cond_2

    move v0, v1

    .line 1427
    goto :goto_0

    .line 1431
    :cond_2
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    if-ne v5, v0, :cond_3

    move v0, v1

    .line 1432
    goto :goto_0

    .line 1436
    :cond_3
    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_4

    move v0, v1

    .line 1437
    goto :goto_0

    .line 1440
    :cond_4
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v0, :cond_5

    .line 1442
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v0, v6

    .line 1443
    goto :goto_0

    .line 1447
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v0

    .line 1448
    packed-switch v0, :pswitch_data_0

    .line 1458
    const-string v0, "EventInfoFragment"

    const-string v2, "Unexpected choice for updating invitation response"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1461
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 1450
    goto :goto_0

    .line 1452
    :pswitch_1
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-direct {p0, v0, v1, v5}, Lcom/android/calendar/EventInfoFragment;->createExceptionResponse(JI)V

    move v0, v6

    .line 1453
    goto :goto_0

    .line 1455
    :pswitch_2
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v0, v6

    .line 1456
    goto :goto_0

    .line 1448
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendAccessibilityEvent()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2015
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2017
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2041
    :goto_0
    return-void

    .line 2021
    :cond_0
    const/16 v1, 0x8

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 2022
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 2023
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2024
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v4

    .line 2026
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v2}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 2027
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhenDateTime:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v2}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 2028
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v2}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 2029
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    invoke-direct {p0, v4, v2, v1}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;Lcom/android/calendar/ExpandableTextView;)V

    .line 2031
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 2032
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2033
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    .line 2034
    const/4 v2, -0x1

    if-eq v5, v2, :cond_1

    .line 2035
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v6, 0x7f100064

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0
.end method

.method private sendAccessibilityEventIfQueryDone(I)V
    .locals 2
    .param p1, "token"    # I

    .prologue
    .line 593
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 595
    const/16 v0, 0x3f

    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    and-int/lit8 v1, v1, 0x3f

    if-ne v0, v1, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEvent()V

    .line 597
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->disableEditIfNeeded()V

    .line 600
    :cond_0
    return-void
.end method

.method private setDialogSize(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 2676
    const v0, 0x7f0a0023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogWidth:I

    .line 2677
    const v0, 0x7f0a0024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/EventInfoFragment;->mDialogHeight:I

    .line 2678
    return-void
.end method

.method private setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2386
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2387
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 2390
    :goto_0
    return-void

    .line 2389
    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setVisibilityCommon(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 2393
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2394
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2395
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 2397
    :cond_0
    return-void
.end method

.method private static spanWillOverlap(Landroid/text/Spannable;[Landroid/text/style/URLSpan;II)Z
    .locals 7
    .param p0, "spanText"    # Landroid/text/Spannable;
    .param p1, "spanList"    # [Landroid/text/style/URLSpan;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v6, 0x0

    .line 1998
    if-ne p2, p3, :cond_1

    .line 2011
    :cond_0
    :goto_0
    return v6

    .line 2002
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Landroid/text/style/URLSpan;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 2003
    .local v5, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 2004
    .local v2, "existingStart":I
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 2005
    .local v1, "existingEnd":I
    if-lt p2, v2, :cond_2

    if-lt p2, v1, :cond_3

    :cond_2
    if-le p3, v2, :cond_4

    if-gt p3, v1, :cond_4

    .line 2007
    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .line 2002
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateAttendees(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2185
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0}, Lcom/android/calendar/event/AttendeesView;->clearAttendees()V

    .line 2188
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 2189
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 2190
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 2191
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/ArrayList;)V

    .line 2192
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/AttendeesView;->setEnabled(Z)V

    .line 2193
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2198
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateEmailAttendees()V

    .line 2199
    return-void

    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCalendar(Landroid/view/View;)V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x5

    const/16 v1, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2064
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 2065
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    .line 2066
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2067
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2068
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 2069
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    .line 2070
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountName:Ljava/lang/String;

    .line 2072
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2076
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/calendar/EventInfoFragment;->decorateForScratch(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_displayName=?"

    new-array v6, v8, [Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    .line 2083
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    .line 2084
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    .line 2086
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    const-string v2, "calendar.google.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2088
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    .line 2091
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarId:J

    .line 2092
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    .line 2094
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2095
    const v0, 0x7f10006b

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerDisplayName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 2096
    const v0, 0x7f100093

    invoke-direct {p0, p1, v0, v9}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2100
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAttendeeData:Z

    .line 2101
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_b

    move v0, v8

    :goto_3
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    .line 2104
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_c

    move v0, v8

    :goto_4
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    .line 2105
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_d

    move v0, v8

    :goto_5
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    .line 2108
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_2

    .line 2110
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2111
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 2112
    new-instance v1, Lcom/android/calendar/EventInfoFragment$14;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$14;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2128
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_3

    .line 2129
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f10008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2130
    if-eqz v0, :cond_3

    .line 2131
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 2132
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2135
    :cond_3
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    if-eqz v0, :cond_4

    .line 2136
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2137
    if-eqz v0, :cond_4

    .line 2138
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 2139
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2143
    :cond_4
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_7

    .line 2145
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2148
    :cond_7
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateOptionMenuIfAny()V

    .line 2154
    :goto_6
    return-void

    :cond_8
    move v0, v9

    .line 2069
    goto/16 :goto_0

    .line 2098
    :cond_9
    const v0, 0x7f100093

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_1

    :cond_a
    move v0, v9

    .line 2100
    goto/16 :goto_2

    :cond_b
    move v0, v9

    .line 2101
    goto/16 :goto_3

    :cond_c
    move v0, v9

    .line 2104
    goto :goto_4

    :cond_d
    move v0, v9

    .line 2105
    goto :goto_5

    .line 2151
    :cond_e
    const v0, 0x7f100031

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2152
    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    goto :goto_6
.end method

.method private updateCustomAppButton()V
    .locals 11

    .prologue
    const v10, 0x7f100097

    const/4 v9, 0x0

    .line 1669
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f100098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1670
    if-nez v0, :cond_1

    .line 1736
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v10, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1737
    :goto_1
    return-void

    .line 1673
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x11

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1674
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0x12

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1676
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1679
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1680
    if-eqz v3, :cond_0

    .line 1685
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1686
    if-eqz v4, :cond_0

    .line 1692
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1693
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.provider.calendar.action.HANDLE_CUSTOM_EVENT"

    invoke-direct {v6, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1694
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    const-string v1, "customAppUri"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    const-string v1, "beginTime"

    iget-wide v7, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v6, v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1699
    invoke-virtual {v3, v6, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1702
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1703
    if-eqz v1, :cond_2

    .line 1705
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1706
    sget v5, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    sget v7, Lcom/android/calendar/EventInfoFragment;->mCustomAppIconSize:I

    invoke-virtual {v1, v9, v9, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1707
    const/4 v5, 0x1

    aget-object v5, v2, v5

    const/4 v7, 0x2

    aget-object v7, v2, v7

    const/4 v8, 0x3

    aget-object v2, v2, v8

    invoke-virtual {v0, v1, v5, v7, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1710
    :cond_2
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1711
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1712
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    :cond_3
    new-instance v1, Lcom/android/calendar/EventInfoFragment$13;

    invoke-direct {v1, p0, v6}, Lcom/android/calendar/EventInfoFragment$13;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1731
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v10, v9}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto/16 :goto_1

    .line 1713
    :cond_4
    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 1688
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private updateEmailAttendees()V
    .locals 4

    .prologue
    const v3, 0x7f100095

    .line 2206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    .line 2207
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 2208
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 2210
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 2211
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 2213
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 2214
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_2

    .line 2216
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    .line 2217
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 2218
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_3

    .line 2223
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2225
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/EventInfoFragment;->addIfEmailable(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2230
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2231
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2232
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCcEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2236
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mToEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    if-nez v0, :cond_6

    const-string v0, "LOCAL"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2239
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v3, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2243
    :goto_4
    return-void

    .line 2241
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto :goto_4
.end method

.method private updateEvent(Landroid/view/View;)V
    .locals 14

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1556
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1557
    if-eqz v8, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1563
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1566
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    .line 1567
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1568
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1569
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1570
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1572
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoFragment;->mColor:I

    .line 1573
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHeadlines:Landroid/view/View;

    iget v2, p0, Lcom/android/calendar/EventInfoFragment;->mColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1576
    if-eqz v0, :cond_4

    .line 1577
    const v1, 0x7f100013

    invoke-direct {p0, p1, v1, v0}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1582
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 1584
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1585
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v7, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    invoke-static/range {v0 .. v8}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1588
    const/4 v0, 0x0

    .line 1589
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    if-nez v2, :cond_5

    .line 1590
    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-static {v2, v3, v6, v12}, Lcom/android/calendar/Utils;->getDisplayedTimezone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1594
    :cond_5
    if-nez v0, :cond_c

    .line 1595
    const v0, 0x7f100091

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1608
    :goto_2
    const/4 v0, 0x0

    .line 1609
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1610
    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 1611
    invoke-virtual {v0, v11}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1612
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1613
    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1614
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    if-eqz v2, :cond_6

    .line 1615
    const-string v2, "UTC"

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1617
    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 1618
    invoke-static {v13, v0}, Lcom/android/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v0

    .line 1620
    :cond_7
    if-nez v0, :cond_d

    .line 1621
    const v0, 0x7f100092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1630
    :goto_3
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 1631
    :cond_8
    const v0, 0x7f100015

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1659
    :cond_9
    :goto_4
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 1660
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    invoke-virtual {v0, v10}, Lcom/android/calendar/ExpandableTextView;->setText(Ljava/lang/String;)V

    .line 1664
    :cond_a
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateCustomAppButton()V

    goto/16 :goto_0

    .line 1566
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1597
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1599
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1600
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f080044

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1602
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x12

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1604
    const v0, 0x7f100091

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1623
    :cond_d
    const v1, 0x7f100092

    invoke-direct {p0, p1, v1, v0}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 1633
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    .line 1634
    if-eqz v0, :cond_9

    .line 1635
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1636
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    :try_start_0
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->linkifyTextView(Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    :goto_5
    new-instance v1, Lcom/android/calendar/EventInfoFragment$12;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$12;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4

    .line 1639
    :catch_0
    move-exception v1

    .line 1641
    const-string v2, "EventInfoFragment"

    const-string v3, "Linkification failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private updateMenu()V
    .locals 3

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 2182
    :cond_0
    :goto_0
    return-void

    .line 2172
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v1, 0x7f1000bd

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2173
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v2, 0x7f1000bc

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2174
    if-eqz v0, :cond_2

    .line 2175
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2176
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2178
    :cond_2
    if-eqz v1, :cond_0

    .line 2179
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2180
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyEvent:Z

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateOptionMenuIfAny()V
    .locals 1

    .prologue
    .line 2158
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    .line 2160
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2162
    :cond_2
    return-void
.end method

.method private updateResponse(JJI)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1467
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1469
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1470
    const-string v0, "attendeeEmail"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :cond_0
    const-string v0, "attendeeStatus"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1473
    const-string v0, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1475
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1477
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 1479
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 928
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v1, :cond_0

    .line 929
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method addRecurrenceRule(Landroid/content/ContentValues;)V
    .locals 9

    .prologue
    const-wide/32 v7, 0x5265c00

    .line 2892
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2893
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2894
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2895
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0x14

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2897
    const-string v3, "rrule"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 2899
    iget-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 2901
    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 2902
    if-eqz v0, :cond_2

    .line 2904
    sub-long v0, v2, v4

    add-long/2addr v0, v7

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, v7

    .line 2906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2922
    :goto_1
    const-string v1, "duration"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    const-string v1, "dtend"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2925
    :cond_0
    return-void

    .line 2894
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2909
    :cond_2
    sub-long v0, v2, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2912
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2915
    if-eqz v0, :cond_4

    .line 2916
    const-string v0, "P1D"

    goto :goto_1

    .line 2918
    :cond_4
    const-string v0, "P3600S"

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 2673
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 2666
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    return-wide v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 2670
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    return-wide v0
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 2484
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 4
    .param p1, "event"    # Lcom/android/calendar/CalendarController$EventInfo;

    .prologue
    .line 2489
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    if-eqz v0, :cond_0

    .line 2491
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->reloadEvents()V

    .line 2493
    :cond_0
    return-void
.end method

.method public initReminders(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2248
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2249
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2250
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2251
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2252
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2254
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2257
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2259
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2263
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2265
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    if-eqz v0, :cond_3

    .line 2312
    :cond_2
    return-void

    .line 2271
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f100076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2273
    if-eqz v0, :cond_4

    .line 2274
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2276
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 2277
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2280
    :cond_5
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAlarm:Z

    if-eqz v0, :cond_2

    .line 2281
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalReminders:Ljava/util/ArrayList;

    .line 2283
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2284
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 2290
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 2291
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v9, 0x7fffffff

    iget-object v10, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_2

    .line 2295
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 2299
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2300
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2301
    const v2, 0x7f100080

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2302
    invoke-virtual {v2, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 2303
    const v2, 0x7f100081

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2304
    invoke-virtual {v2, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 2305
    const v2, 0x7f100082

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2307
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 651
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 653
    new-instance v0, Lcom/android/calendar/EventInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$3;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReminderChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 670
    if-eqz p1, :cond_0

    .line 671
    const-string v0, "key_fragment_is_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 672
    const-string v0, "key_window_style"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 676
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v0, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->applyDialogParams()V

    .line 679
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    .line 680
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 742
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 743
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    .line 744
    new-instance v0, Lcom/android/calendar/EditResponseHelper;

    invoke-direct {v0, p1}, Lcom/android/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    .line 746
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v0, v2}, Lcom/android/calendar/EditResponseHelper;->setWhichEvents(I)V

    .line 749
    :cond_0
    new-instance v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    .line 753
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090006

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    .line 755
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_1

    .line 756
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/calendar/Utils;->allowEditEventsWithAttendees(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mAllowEditWithAttendees:Z

    .line 762
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 721
    invoke-static {p2}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 722
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v0, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2504
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2505
    .local v1, "reminderItem":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2506
    .local v0, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2507
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2508
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z

    .line 2509
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mReminderViews:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/calendar/EventInfoFragment;->mMaxReminders:I

    invoke-static {v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 2510
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1070
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1072
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v0, :cond_2

    .line 1074
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    if-eqz v0, :cond_6

    .line 1075
    const v0, 0x7f0f0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1076
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 1086
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mAllowEditWithAttendees:Z

    if-nez v0, :cond_5

    const-string v0, "com.android.exchange"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LOCAL"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v1, 0x7f1000bf

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_4

    .line 1092
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1093
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1096
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    const v1, 0x7f1000be

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_5

    .line 1098
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1099
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1103
    :cond_5
    return-void

    .line 1079
    :cond_6
    const v0, 0x7f0f0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1080
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mMenu:Landroid/view/Menu;

    .line 1081
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateMenu()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 768
    if-eqz p3, :cond_0

    .line 769
    const-string v2, "key_fragment_is_dialog"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 770
    const-string v2, "key_window_style"

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    .line 772
    const-string v2, "key_delete_dialog_visible"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 775
    const-string v2, "key_more_action_popup_visible"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EventInfoFragment;->mMoreActionPopupVisible:Z

    .line 780
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 781
    const v2, 0x7f040024

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    .line 785
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100088

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100091

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mWhenDateTime:Landroid/widget/TextView;

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/ExpandableTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100089

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mHeadlines:Landroid/view/View;

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/event/AttendeesView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mLongAttendees:Lcom/android/calendar/event/AttendeesView;

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 796
    const-string v2, "key_event_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 797
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 798
    const-string v2, "key_start_millis"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 799
    const-string v2, "key_end_millis"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 801
    const-string v2, "key_attendee_response"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 802
    const-string v2, "key_fragment_is_ics_import"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    .line 803
    const-string v2, "key_sync_account_type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    .line 807
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const-string v3, "Alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mAnimateAlpha:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/calendar/EventInfoFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/EventInfoFragment$4;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/EventInfoFragment;->mLoadingMsgAlphaUpdater:Ljava/lang/Runnable;

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/EventInfoFragment;->decorateForScratch(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f10008c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 848
    .local v11, "b":Landroid/view/View;
    new-instance v2, Lcom/android/calendar/EventInfoFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/calendar/EventInfoFragment$5;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    if-nez v2, :cond_7

    .line 865
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f10008a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 874
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 875
    .local v13, "emailAttendeesButton":Landroid/view/View;
    if-eqz v13, :cond_5

    .line 876
    new-instance v2, Lcom/android/calendar/EventInfoFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/calendar/EventInfoFragment$6;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f100077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 887
    .local v15, "reminderAddButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    if-eqz v2, :cond_8

    .line 889
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 904
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 905
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "preferences_default_reminder"

    const-string v3, "-1"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 907
    .local v12, "defaultReminderString":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/EventInfoFragment;->mDefaultReminderMinutes:I

    .line 908
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoFragment;->prepareReminders()V

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v2

    .line 783
    .end local v11    # "b":Landroid/view/View;
    .end local v12    # "defaultReminderString":Ljava/lang/String;
    .end local v13    # "emailAttendeesButton":Landroid/view/View;
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "reminderAddButton":Landroid/view/View;
    :cond_6
    const v2, 0x7f040023

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 867
    .restart local v11    # "b":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    if-eqz v2, :cond_4

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f10008a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v3, 0x7f10008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 892
    .restart local v13    # "emailAttendeesButton":Landroid/view/View;
    .restart local v15    # "reminderAddButton":Landroid/view/View;
    :cond_8
    new-instance v10, Lcom/android/calendar/EventInfoFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/calendar/EventInfoFragment$7;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    .line 899
    .local v10, "addReminderOnClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v15, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 807
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public onDeleteStarted()V
    .locals 1

    .prologue
    .line 2649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    .line 2650
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1396
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1399
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1400
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mRemindersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1402
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mExtendedPropertiesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1403
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mExtendedPropertiesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReplaceEventDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1406
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReplaceEventDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mReplaceEventDialog:Landroid/app/AlertDialog;

    .line 1410
    :cond_5
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1411
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 1377
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventDeletionStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    if-nez v0, :cond_1

    .line 1379
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveResponse()Z

    move-result v0

    .line 1380
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveReminders()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 1381
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0029

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1384
    :cond_1
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 1385
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1109
    iget-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v2, :cond_0

    .line 1161
    :goto_0
    return v0

    .line 1120
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1161
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1122
    :sswitch_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 1123
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 1124
    goto :goto_0

    .line 1126
    :sswitch_1
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1127
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1128
    const-string v0, "beginTime"

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1129
    const-string v0, "endTime"

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1130
    const-string v0, "allDay"

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoFragment;->mAllDay:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1131
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1132
    const-string v0, "editMode"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1133
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1134
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1137
    :sswitch_2
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 1139
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-virtual {v0, p0}, Lcom/android/calendar/DeleteEventHelper;->setDeleteNotificationListener(Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    .line 1140
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1141
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    .line 1142
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    iget-wide v5, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    goto :goto_1

    .line 1146
    :sswitch_3
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/EventInfoFragment;->destroyICalView(ZZ)V

    goto :goto_1

    .line 1149
    :sswitch_4
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveICalEventToLocal()V

    goto :goto_1

    .line 1152
    :sswitch_5
    new-instance v2, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Long;

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 1155
    :sswitch_6
    new-instance v2, Lcom/android/calendar/EventInfoFragment$ShareIcsTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/EventInfoFragment$ShareIcsTask;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Long;

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 1120
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1000bc -> :sswitch_1
        0x7f1000bd -> :sswitch_2
        0x7f1000be -> :sswitch_5
        0x7f1000bf -> :sswitch_6
        0x7f1000c0 -> :sswitch_3
        0x7f1000c1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 2439
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2440
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2444
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-virtual {v0}, Lcom/android/calendar/DeleteEventHelper;->dismissAlertDialog()V

    .line 2446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    if-eqz v0, :cond_1

    .line 2452
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/EditResponseHelper;->dismissAlertDialog()V

    .line 2455
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 2459
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2460
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v1, :cond_0

    .line 2461
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoFragment;->setDialogSize(Landroid/content/res/Resources;)V

    .line 2462
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->applyDialogParams()V

    .line 2464
    :cond_0
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 2465
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    if-eqz v1, :cond_1

    .line 2466
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2469
    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    if-eqz v1, :cond_3

    .line 2470
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {v1, v2, v3, v0}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 2473
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2474
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    iget-wide v5, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    .line 2476
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1052
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1053
    const-string v0, "key_event_id"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1054
    const-string v0, "key_start_millis"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1055
    const-string v0, "key_end_millis"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1056
    const-string v0, "key_fragment_is_dialog"

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1057
    const-string v0, "key_window_style"

    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mWindowStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1058
    const-string v0, "key_delete_dialog_visible"

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mDeleteDialogVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1059
    const-string v0, "key_attendee_response"

    iget v1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1061
    const-string v0, "key_fragment_is_ics_import"

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1062
    const-string v0, "key_sync_account_type"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v0, "key_more_action_popup_visible"

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mMoreActionPopupVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1065
    return-void
.end method

.method public prepareMessageBody()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1312
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1313
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1314
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1316
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1317
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1319
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1320
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1321
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1322
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 1323
    iget-object v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1324
    iget-object v6, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/calendar/EventInfoFragment;->mEventOrganizerEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1321
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1326
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1327
    const-string v6, "; "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1328
    :cond_2
    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1331
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1332
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1333
    const-string v0, "; "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1334
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1337
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1338
    const-string v1, "\n\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    const v1, 0x7f0c00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1340
    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1341
    const v1, 0x7f0c00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1342
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1343
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1344
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1345
    const v1, 0x7f0c00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1346
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1347
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhenDateTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1348
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1349
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "LOCAL"

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1350
    const v1, 0x7f0c00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1351
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1352
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1353
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "LOCAL"

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1356
    const v1, 0x7f0c00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1357
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1359
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1361
    :cond_7
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1362
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1363
    const v3, 0x7f0c00b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1364
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1365
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1366
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1368
    :cond_8
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1369
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDesc:Lcom/android/calendar/ExpandableTextView;

    invoke-virtual {v0}, Lcom/android/calendar/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1370
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reloadEvents()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2496
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    return-void
.end method

.method public setDialogParams(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "minTop"    # I

    .prologue
    .line 711
    iput p1, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 712
    iput p2, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 713
    iput p3, p0, Lcom/android/calendar/EventInfoFragment;->mMinTop:I

    .line 714
    return-void
.end method

.method updateResponse(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f100094

    .line 2358
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAttendeeData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsIcsImport:Z

    if-nez v0, :cond_2

    const-string v0, "LOCAL"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2363
    :cond_2
    const/16 v0, 0x8

    invoke-direct {p0, p1, v2, v0}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2383
    :goto_0
    return-void

    .line 2367
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 2371
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    if-eqz v0, :cond_4

    .line 2372
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mUserSetResponse:I

    .line 2379
    :goto_1
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v1

    .line 2380
    const v0, 0x7f100065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 2381
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 2382
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_0

    .line 2373
    :cond_4
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    if-eqz v0, :cond_5

    .line 2374
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    goto :goto_1

    .line 2376
    :cond_5
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    goto :goto_1
.end method
