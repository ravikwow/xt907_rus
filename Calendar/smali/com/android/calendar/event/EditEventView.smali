.class public Lcom/android/calendar/event/EditEventView;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventView$CalendarsAdapter;,
        Lcom/android/calendar/event/EditEventView$DateClickListener;,
        Lcom/android/calendar/event/EditEventView$DateListener;,
        Lcom/android/calendar/event/EditEventView$TimeClickListener;,
        Lcom/android/calendar/event/EditEventView$TimeListener;
    }
.end annotation


# static fields
.field private static mF:Ljava/util/Formatter;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static sRecipientFilters:[Landroid/text/InputFilter;


# instance fields
.field mAccessLevelSpinner:Landroid/widget/Spinner;

.field private mActivity:Landroid/app/Activity;

.field private mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

.field private mAllDay:Z

.field mAllDayCheckBox:Landroid/widget/CheckBox;

.field mAttendeesGroup:Landroid/view/View;

.field mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

.field mAvailability:Landroid/view/View;

.field private mAvailabilityLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAvailabilitySpinner:Landroid/widget/Spinner;

.field private mAvailabilityValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCalendarSelectorGroup:Landroid/view/View;

.field mCalendarSelectorWrapper:Landroid/view/View;

.field mCalendarStaticGroup:Landroid/view/View;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field mCalendarsSpinner:Landroid/widget/Spinner;

.field private mDefaultReminderMinutes:I

.field mDescriptionGroup:Landroid/view/View;

.field mDescriptionTextView:Landroid/widget/TextView;

.field private mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

.field mEditOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mEditViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailValidator:Lcom/android/common/Rfc822Validator;

.field mEndDateButton:Landroid/widget/Button;

.field mEndDateHome:Landroid/widget/TextView;

.field mEndHomeGroup:Landroid/view/View;

.field private mEndTime:Landroid/text/format/Time;

.field mEndTimeButton:Landroid/widget/Button;

.field mEndTimeHome:Landroid/widget/TextView;

.field private mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

.field private mIsMultipane:Z

.field private mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

.field mLoadingMessage:Landroid/widget/TextView;

.field mLocationGroup:Landroid/view/View;

.field mLocationTextView:Landroid/widget/TextView;

.field private mModel:Lcom/android/calendar/CalendarEventModel;

.field private mModification:I

.field private mNoCalendarsDialog:Landroid/app/AlertDialog;

.field mOrganizerGroup:Landroid/view/View;

.field private mOriginalPadding:[I

.field private mOriginalSpinnerPadding:[I

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

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

.field mRemindersContainer:Landroid/widget/LinearLayout;

.field mRemindersGroup:Landroid/view/View;

.field mRepeatsSpinner:Landroid/widget/Spinner;

.field mResponseGroup:Landroid/view/View;

.field mResponseRadioGroup:Landroid/widget/RadioGroup;

.field private mSaveAfterQueryComplete:Z

.field mScrollView:Landroid/widget/ScrollView;

.field mStartDateButton:Landroid/widget/Button;

.field mStartDateHome:Landroid/widget/TextView;

.field mStartHomeGroup:Landroid/view/View;

.field private mStartTime:Landroid/text/format/Time;

.field mStartTimeButton:Landroid/widget/Button;

.field mStartTimeHome:Landroid/widget/TextView;

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneDialog:Landroid/app/AlertDialog;

.field mTimezoneLabel:Landroid/widget/TextView;

.field mTimezoneRow:Landroid/view/View;

.field mTimezoneTextView:Landroid/widget/TextView;

.field mTitleTextView:Landroid/widget/TextView;

.field private mUnsupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field mViewOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mVisibility:Landroid/view/View;

.field mWhenView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    .line 209
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    .line 1585
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/common/Rfc822InputFilter;

    invoke-direct {v2}, Lcom/android/common/Rfc822InputFilter;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    .line 152
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 195
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 200
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 201
    iput v2, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 203
    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 862
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    .line 863
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    .line 864
    iput-object p3, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    .line 867
    const v0, 0x7f10003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    .line 868
    const v0, 0x7f10003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    .line 871
    const v0, 0x7f100043

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    .line 872
    const v0, 0x7f100013

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    .line 873
    const v0, 0x7f100048

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    .line 874
    const v0, 0x7f100071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 875
    const v0, 0x7f100062

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneLabel:Landroid/widget/TextView;

    .line 876
    const v0, 0x7f10004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    .line 877
    const v0, 0x7f100054

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    .line 878
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f100014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    .line 879
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f10005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    .line 880
    const v0, 0x7f10004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    .line 881
    const v0, 0x7f100055

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    .line 882
    const v0, 0x7f10005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    .line 883
    const v0, 0x7f10005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    .line 884
    const v0, 0x7f100051

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    .line 885
    const v0, 0x7f100050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    .line 886
    const v0, 0x7f100058

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    .line 887
    const v0, 0x7f100057

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    .line 888
    const v0, 0x7f10005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 889
    const v0, 0x7f100073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    .line 890
    const v0, 0x7f10007a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    .line 891
    const v0, 0x7f10007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    .line 892
    const v0, 0x7f100042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    .line 893
    const v0, 0x7f100060

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    .line 894
    const v0, 0x7f100044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    .line 895
    const v0, 0x7f100074

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    .line 896
    const v0, 0x7f100063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    .line 897
    const v0, 0x7f100069

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOrganizerGroup:Landroid/view/View;

    .line 898
    const v0, 0x7f10006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    .line 899
    const v0, 0x7f100047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    .line 900
    const v0, 0x7f10006f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    .line 901
    const v0, 0x7f10004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    .line 902
    const v0, 0x7f100056

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    .line 903
    const v0, 0x7f10006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    .line 905
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 906
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 908
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 910
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v2

    .line 911
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    aput v1, v0, v4

    .line 912
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    aput v1, v0, v5

    .line 913
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    aput v1, v0, v6

    .line 914
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v2

    .line 915
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    aput v1, v0, v4

    .line 916
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    aput v1, v0, v5

    .line 917
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    aput v1, v0, v6

    .line 918
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f100049

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10005c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f100059

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f100078

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10007b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10004b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f100052

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    const v0, 0x7f100065

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    .line 936
    const v0, 0x7f100076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 938
    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 939
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    .line 940
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 941
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    .line 942
    new-instance v0, Lcom/android/common/Rfc822Validator;

    invoke-direct {v0, v3}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    .line 943
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v0, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->initMultiAutoCompleteTextView(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;

    .line 946
    const v0, 0x7f100078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailability:Landroid/view/View;

    .line 947
    const v0, 0x7f10007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mVisibility:Landroid/view/View;

    .line 951
    invoke-virtual {p0, v3}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 952
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/TimezoneAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/EditEventView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->addReminder()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/EditEventView;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;
    .param p1, "x1"    # J

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/EditEventView;->populateTimezone(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # J

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # J

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/event/EditEventView;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/event/EditEventView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1269
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1273
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1277
    :cond_2
    instance-of v0, p2, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 1278
    check-cast v0, Landroid/widget/RadioGroup;

    .line 1279
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 1280
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1283
    :cond_3
    instance-of v0, p2, Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 1284
    check-cast p2, Landroid/widget/Spinner;

    .line 1285
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1291
    :cond_4
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1292
    check-cast p2, Landroid/view/ViewGroup;

    .line 1293
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1294
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 1295
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private addReminder()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1543
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v9, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    .line 1556
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 1557
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v2, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 1558
    return-void

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v9, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_0
.end method

.method private fillModelFromUI()Z
    .locals 12

    .prologue
    .line 746
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v7, :cond_0

    .line 747
    const/4 v7, 0x0

    .line 857
    :goto_0
    return v7

    .line 749
    :cond_0
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v8, v9, v10}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 751
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 752
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v7}, Lcom/android/calendar/CalendarEventModel;->normalizeReminders()Z

    .line 753
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v8, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 754
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 755
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 756
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 757
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 758
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 759
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 761
    :cond_1
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 762
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 765
    :cond_2
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7

    invoke-static {v7}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v6

    .line 767
    .local v6, "status":I
    if-eqz v6, :cond_3

    .line 768
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v6, v7, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 771
    :cond_3
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v7, :cond_6

    .line 772
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 773
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/MultiAutoCompleteTextView;->performValidation()V

    .line 774
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 777
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/calendar/Utils;->allowEditEventsWithAttendees(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.android.exchange"

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "LOCAL"

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, v8, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 779
    :cond_4
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v7, v8, v9}, Lcom/android/calendar/CalendarEventModel;->addAttendees(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)V

    .line 782
    :cond_5
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 786
    :cond_6
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 787
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 788
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 789
    .local v0, "calendarCursorPosition":I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 790
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, "defaultCalendar":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v8, "preference_defaultCalendar"

    invoke-static {v7, v8, v1}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v1, v7, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 795
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v1, v7, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 796
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 800
    .end local v0    # "calendarCursorPosition":I
    .end local v1    # "defaultCalendar":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v7, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v7, :cond_c

    .line 803
    const-string v7, "UTC"

    iput-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 804
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->hour:I

    .line 805
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->minute:I

    .line 806
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 807
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 808
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 810
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->hour:I

    .line 811
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->minute:I

    .line 812
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 813
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 816
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    add-long v2, v7, v9

    .line 818
    .local v2, "normalizedEndTimeMillis":J
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v7, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v7, v2, v7

    if-gez v7, :cond_b

    .line 820
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v8, v8, Lcom/android/calendar/CalendarEventModel;->mStart:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 830
    .end local v2    # "normalizedEndTimeMillis":J
    :goto_2
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 831
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v7, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 833
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 839
    iget v7, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    .line 840
    const/4 v5, 0x0

    .line 846
    .local v5, "selection":I
    :goto_3
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v5, v7, v8}, Lcom/android/calendar/event/EditEventHelper;->updateRecurrenceRule(ILcom/android/calendar/CalendarEventModel;I)V

    .line 850
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v7, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-nez v7, :cond_8

    .line 851
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 854
    :cond_8
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 855
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 857
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 753
    .end local v5    # "selection":I
    .end local v6    # "status":I
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 822
    .restart local v2    # "normalizedEndTimeMillis":J
    .restart local v6    # "status":I
    :cond_b
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-wide v2, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_2

    .line 825
    .end local v2    # "normalizedEndTimeMillis":J
    :cond_c
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 826
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 827
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 828
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto/16 :goto_2

    .line 842
    :cond_d
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    .line 843
    .local v4, "position":I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .restart local v5    # "selection":I
    goto :goto_3
.end method

.method private findDefaultCalendarPosition(Landroid/database/Cursor;)I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1496
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    move v1, v2

    .line 1515
    :cond_0
    :goto_0
    return v1

    .line 1500
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v4, "preference_defaultCalendar"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1503
    if-eqz v3, :cond_0

    .line 1506
    const-string v0, "ownerAccount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1508
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 1509
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1510
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 1511
    goto :goto_0

    .line 1513
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initMultiAutoCompleteTextView(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 2
    .param p1, "list"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 1562
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->supportsChipsUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1563
    new-instance v0, Lcom/android/calendar/RecipientAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/calendar/RecipientAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1564
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1565
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnFocusListShrinkRecipients(Z)V

    .line 1570
    :goto_0
    new-instance v0, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v0}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1571
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1574
    sget-object v0, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1576
    return-object p1

    .line 1567
    :cond_0
    new-instance v0, Lcom/android/calendar/EmailAddressAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/calendar/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1568
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private isCustomRecurrence()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 534
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, v2, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-ne v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    .line 569
    :cond_2
    :goto_0
    :pswitch_0
    return v0

    .line 540
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-eqz v2, :cond_2

    .line 544
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_0

    :cond_4
    move v0, v1

    .line 569
    goto :goto_0

    .line 548
    :pswitch_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 550
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_4

    goto :goto_0

    .line 555
    :pswitch_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-nez v2, :cond_2

    .line 558
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    aget v2, v2, v0

    if-lez v2, :cond_4

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isWeekdayEvent()Z
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 959
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 960
    .local v3, "vals":[I
    array-length v2, v3

    .line 961
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 963
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 964
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 967
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
    .line 974
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "labels":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 976
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private populateRepeats()V
    .locals 21

    .prologue
    .line 424
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 425
    .local v15, "time":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 427
    .local v12, "r":Landroid/content/res/Resources;
    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x2

    const/16 v19, 0x3

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x4

    const/16 v19, 0x5

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x5

    const/16 v19, 0x6

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x6

    const/16 v19, 0x7

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    .line 435
    .local v5, "days":[Ljava/lang/String;
    const v18, 0x7f07000d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 440
    .local v10, "ordinals":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isCustomRecurrence()Z

    move-result v8

    .line 441
    .local v8, "isCustomRecurrence":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v9

    .line 443
    .local v9, "isWeekdayEvent":Z
    new-instance v14, Ljava/util/ArrayList;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 444
    .local v14, "repeatArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 446
    .local v13, "recurrenceIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v18, 0x7f0c005e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const v18, 0x7f0c005f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    if-eqz v9, :cond_0

    .line 453
    const v18, 0x7f0c0060

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_0
    const v18, 0x7f0c0061

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "format":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "%A"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    div-int/lit8 v4, v18, 0x7

    .line 464
    .local v4, "dayNumber":I
    const v18, 0x7f0c0062

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 465
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v20, v10, v4

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget v0, v15, Landroid/text/format/Time;->weekDay:I

    move/from16 v20, v0

    aget-object v20, v5, v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const v18, 0x7f0c0065

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 469
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 473
    .local v16, "when":J
    const v18, 0x7f0c0066

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 474
    const/4 v6, 0x0

    .line 475
    .local v6, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 476
    or-int/lit16 v6, v6, 0x80

    .line 478
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    if-eqz v8, :cond_2

    .line 482
    const v18, 0x7f0c0067

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 487
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 488
    .local v11, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 489
    if-eqz v8, :cond_5

    .line 490
    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 520
    :cond_3
    :goto_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x1090008

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 522
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 530
    :cond_4
    return-void

    .line 492
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    goto :goto_0

    .line 494
    :pswitch_0
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 495
    goto :goto_0

    .line 497
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 498
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    goto :goto_0

    .line 501
    :cond_6
    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 504
    goto/16 :goto_0

    .line 506
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 507
    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    goto/16 :goto_0

    .line 510
    :cond_7
    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 513
    goto/16 :goto_0

    .line 515
    :pswitch_3
    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    goto/16 :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateTimezone(J)V
    .locals 3
    .param p1, "eventStartTime"    # J

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    if-nez v0, :cond_1

    .line 369
    new-instance v0, Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/event/EditEventView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EditEventView$1;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 385
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/TimezoneAdapter;->setTime(J)V

    goto :goto_0
.end method

.method private populateWhen()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 352
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 353
    .local v2, "startMillis":J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 354
    .local v0, "endMillis":J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 355
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 357
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 358
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 360
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-void
.end method

.method private prepareAvailability()V
    .locals 4

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 982
    const v1, 0x7f07000b

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    .line 983
    const v1, 0x7f07000a

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    .line 985
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 990
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 992
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 993
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 994
    return-void
.end method

.method private prepareReminders()V
    .locals 13

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 1005
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1012
    const v2, 0x7f070003

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 1013
    const v2, 0x7f070002

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 1014
    const v2, 0x7f070001

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 1015
    const/high16 v2, 0x7f070000

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 1019
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1024
    :cond_0
    const/4 v0, 0x0

    .line 1025
    iget-boolean v2, v1, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v2, :cond_6

    .line 1026
    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 1027
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1029
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 1030
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1031
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1040
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 1041
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_4

    .line 1043
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v9, 0x7fffffff

    const/4 v10, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_1

    .line 1048
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v0, v11

    .line 1053
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v2, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 1055
    return-void
.end method

.method private sendAccessibilityEvent()V
    .locals 4

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1252
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v1, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1259
    const/16 v2, 0x8

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1261
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1262
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 1265
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private setDate(Landroid/widget/TextView;J)V
    .locals 3

    .prologue
    .line 1588
    const v0, 0x18016

    .line 1600
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 1601
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1602
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1604
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1605
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1607
    return-void

    .line 1605
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .locals 3

    .prologue
    .line 1610
    const/4 v0, 0x1

    .line 1611
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1612
    const/16 v0, 0x81

    .line 1623
    :cond_0
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 1624
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1625
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1626
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1627
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1629
    return-void

    .line 1627
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setTimezone(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x1

    .line 1632
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 1636
    .local v0, "timezone":Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1637
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    iget-object v1, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1639
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1640
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1641
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1642
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1643
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/calendar/TimezoneAdapter;->setCurrentTimezone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setViewStates(I)V
    .locals 11
    .param p1, "mode"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1395
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v2}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1396
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->setWhenString()V

    .line 1398
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1399
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1401
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1402
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1404
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1405
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1406
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1408
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1411
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1412
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v2}, Lcom/android/calendar/event/EditEventHelper;->canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1413
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    :goto_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1418
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1421
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 1460
    const-string v2, "LOCAL"

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1461
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAvailability:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1463
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mVisibility:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1479
    :goto_5
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/calendar/Utils;->allowEditEventsWithAttendees(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1480
    const-string v2, "com.android.exchange"

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1481
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1485
    :cond_6
    return-void

    .line 1415
    :cond_7
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1424
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1425
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1427
    .end local v1    # "v":Landroid/view/View;
    :cond_9
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1428
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 1430
    .end local v1    # "v":Landroid/view/View;
    :cond_a
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1431
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1432
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1433
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1434
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_8

    .line 1438
    .end local v1    # "v":Landroid/view/View;
    :cond_c
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 1439
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    :goto_9
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1446
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v6, v6, v10

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1448
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 1449
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1453
    :goto_a
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1456
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1442
    :cond_d
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 1451
    :cond_e
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_a

    .line 1465
    :cond_f
    const-string v2, "com.android.exchange"

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-ne p1, v9, :cond_11

    .line 1469
    :cond_10
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1473
    :goto_b
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAvailability:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mVisibility:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1471
    :cond_11
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b
.end method

.method private showTimezoneDialog()V
    .locals 7

    .prologue
    .line 388
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 390
    .local v0, "alertDialogContext":Landroid/content/Context;
    const v4, 0x7f0c0004

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 391
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    .line 395
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 397
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040033

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 400
    .local v3, "timezoneFooterView":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0034

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    new-instance v4, Lcom/android/calendar/event/EditEventView$2;

    invoke-direct {v4, p0, v3}, Lcom/android/calendar/event/EditEventView$2;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 419
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 420
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 421
    return-void
.end method

.method private updateAttendees(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1519
    .local p1, "attendeesList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1526
    :cond_0
    return-void

    .line 1522
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1523
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 1524
    .local v0, "attendee":Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateHomeTime()V
    .locals 17

    .prologue
    .line 1756
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    .line 1757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/EditEventView;->mModification:I

    if-eqz v1, :cond_4

    .line 1759
    const/4 v7, 0x1

    .line 1760
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    .line 1761
    if-eqz v12, :cond_0

    .line 1762
    const/16 v7, 0x81

    .line 1764
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1765
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 1767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->isDst:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v9, v1

    .line 1768
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->isDst:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v10, v1

    .line 1771
    :goto_1
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v9, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 1773
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1775
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v5, v3

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1781
    const v7, 0x80016

    .line 1783
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v5, v3

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1789
    if-eq v10, v9, :cond_5

    .line 1790
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v10, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 1793
    :goto_2
    const/4 v7, 0x1

    .line 1794
    if-eqz v12, :cond_1

    .line 1795
    const/16 v7, 0x81

    .line 1799
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1800
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v3, v13

    move-wide v5, v13

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1805
    const v7, 0x80016

    .line 1807
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v3, v13

    move-wide v5, v13

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1811
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1817
    :goto_3
    return-void

    .line 1767
    :cond_2
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_0

    .line 1768
    :cond_3
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_1

    .line 1814
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move-object v9, v11

    goto :goto_2
.end method

.method private updateRemindersVisibility(I)V
    .locals 2
    .param p1, "numReminders"    # I

    .prologue
    .line 1529
    if-nez p1, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1534
    :goto_0
    return-void

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_1

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 717
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 725
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_1

    .line 726
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2, v3}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 727
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    .line 728
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 729
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v1, "nextIntent":Landroid/content/Intent;
    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    .line 731
    .local v0, "array":[Ljava/lang/String;
    const-string v2, "authorities"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 733
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 742
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "nextIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_0

    .line 736
    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 737
    invoke-direct {p0, p2}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 738
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 739
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 701
    .local v1, "reminderItem":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 702
    .local v0, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 703
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 704
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 705
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v4, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-static {v2, v3, v4}, Lcom/android/calendar/event/EventViewUtils;->updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 706
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1694
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1695
    if-nez v0, :cond_1

    .line 1697
    const-string v0, "EditEvent"

    const-string v1, "Cursor not set on calendar item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1701
    :cond_1
    const-string v1, "calendar_color"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1702
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1703
    invoke-static {v1}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v2

    .line 1705
    iget-boolean v3, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-eqz v3, :cond_2

    .line 1706
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1712
    :goto_1
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1713
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1714
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v4, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 1717
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-wide v2, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1718
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v1, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 1720
    const-string v1, "maxReminders"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1721
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    .line 1722
    const-string v1, "allowedReminders"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1723
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 1724
    const-string v1, "allowedAttendeeTypes"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1725
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 1726
    const-string v1, "allowedAvailability"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1727
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 1732
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1733
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1734
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v2, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 1737
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1738
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    const v2, 0x7f100076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1740
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1741
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareReminders()V

    .line 1742
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareAvailability()V

    .line 1745
    const-string v1, "account_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1746
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 1747
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    goto/16 :goto_0

    .line 1708
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1734
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1821
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public prepareForSave()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 672
    :cond_0
    const/4 v0, 0x0

    .line 674
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v0

    goto :goto_0
.end method

.method protected setAllDayViewsVisibility(Z)V
    .locals 7
    .param p1, "isChecked"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1650
    if-eqz p1, :cond_3

    .line 1651
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_2

    .line 1652
    iget-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_0

    .line 1653
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1656
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1661
    .local v0, "endMillis":J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1662
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1663
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1665
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 1666
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 1669
    .end local v0    # "endMillis":J
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1686
    :goto_0
    iput-boolean p1, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 1687
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1688
    return-void

    .line 1673
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_5

    .line 1674
    iget-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_4

    .line 1675
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1678
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1679
    .restart local v0    # "endMillis":J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 1680
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 1682
    .end local v0    # "endMillis":J
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1683
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1684
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCalendarsCursor(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1335
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    .line 1336
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 1338
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1341
    :cond_1
    if-nez p2, :cond_3

    .line 1377
    :cond_2
    :goto_0
    return-void

    .line 1346
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1347
    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c003c

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1355
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventView;->findDefaultCalendarPosition(Landroid/database/Cursor;)I

    move-result v1

    .line 1358
    new-instance v2, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1359
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1360
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1361
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1363
    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v1, :cond_2

    .line 1364
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 1365
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1366
    if-eqz p2, :cond_5

    .line 1367
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    or-int/lit8 v0, v0, 0x2

    invoke-interface {v1, v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1368
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_0

    .line 1366
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1369
    :cond_6
    if-eqz p2, :cond_7

    .line 1370
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v1, v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1371
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto/16 :goto_0

    .line 1372
    :cond_7
    const-string v0, "EditEvent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1373
    const-string v0, "EditEvent"

    const-string v1, "SetCalendarsCursor:Save failed and unable to exit view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setModel(Lcom/android/calendar/CalendarEventModel;)V
    .locals 13

    .prologue
    const v12, 0x7f100045

    const v11, 0x7f100044

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 1066
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 1069
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    instance-of v0, v0, Lcom/android/calendar/EmailAddressAdapter;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->close()V

    .line 1071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1074
    :cond_0
    if-nez p1, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1247
    :goto_0
    return-void

    .line 1081
    :cond_1
    invoke-static {p1}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v1

    .line 1083
    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 1084
    iget-wide v4, p1, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 1085
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1088
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v6, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1091
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 1093
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 1094
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1095
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1096
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 1098
    :cond_3
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1099
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1100
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2, v0}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1105
    :cond_4
    iget-boolean v0, p1, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-nez v0, :cond_5

    .line 1106
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/calendar/event/EditEventView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EditEventView$3;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1116
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1117
    iput-boolean v9, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 1118
    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_f

    .line 1119
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1121
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1122
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1123
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1124
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 1130
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-ne v0, v2, :cond_6

    .line 1131
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 1134
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/event/EditEventView;->populateTimezone(J)V

    .line 1136
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1137
    const-string v2, "preferences_default_reminder"

    const-string v3, "-1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1139
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    .line 1141
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareReminders()V

    .line 1142
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareAvailability()V

    .line 1144
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100077

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1145
    new-instance v2, Lcom/android/calendar/event/EditEventView$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EditEventView$4;-><init>(Lcom/android/calendar/event/EditEventView;)V

    .line 1151
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-nez v0, :cond_7

    .line 1154
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f10005b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/event/EditEventView$5;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EditEventView$5;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    :cond_7
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1164
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1167
    :cond_8
    iget-boolean v0, p1, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    const-string v2, "calendar.google.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1169
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f10006a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f10006b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOrganizerGroup:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    :goto_2
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1177
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1180
    :cond_a
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1181
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1184
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1185
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    .line 1186
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1188
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    invoke-virtual {v0, v2}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1190
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1191
    if-eqz v1, :cond_11

    .line 1192
    iget v1, p1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v1

    .line 1194
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 1195
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    :goto_3
    iget v0, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    .line 1204
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 1207
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100042

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1208
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1211
    if-eqz v0, :cond_d

    .line 1212
    const-string v2, "LOCAL"

    iget-object v3, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1213
    const v2, 0x7f0c00ad

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1219
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f100046

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1221
    if-eqz v0, :cond_e

    .line 1222
    const-string v2, "LOCAL"

    iget-object v3, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1223
    const v2, 0x7f0c00ae

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1229
    :cond_e
    :goto_5
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-eqz v0, :cond_14

    .line 1230
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1239
    :goto_6
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateWhen()V

    .line 1240
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    .line 1241
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateAttendees(Ljava/util/HashMap;)V

    .line 1243
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1244
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->sendAccessibilityEvent()V

    goto/16 :goto_0

    .line 1126
    :cond_f
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 1173
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f10006b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1198
    :cond_11
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1215
    :cond_12
    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1225
    :cond_13
    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1232
    :cond_14
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_6

    .line 1235
    :cond_15
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1236
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public setModification(I)V
    .locals 0
    .param p1, "modifyWhich"    # I

    .prologue
    .line 1488
    iput p1, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 1489
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1490
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1491
    return-void
.end method

.method protected setWhenString()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 1305
    const/16 v6, 0x10

    .line 1306
    .local v6, "flags":I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1307
    .local v7, "tz":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_1

    .line 1308
    or-int/lit8 v6, v6, 0x2

    .line 1309
    const-string v7, "UTC"

    .line 1316
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1317
    .local v2, "startMillis":J
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 1318
    .local v4, "endMillis":J
    sget-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1319
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1321
    .local v8, "when":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    return-void

    .line 1311
    .end local v2    # "startMillis":J
    .end local v4    # "endMillis":J
    .end local v8    # "when":Ljava/lang/String;
    :cond_1
    or-int/lit8 v6, v6, 0x1

    .line 1312
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    or-int/lit16 v6, v6, 0x80

    goto :goto_0
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v0, :cond_0

    .line 1391
    :goto_0
    return-void

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_0

    .line 1389
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_0
.end method
