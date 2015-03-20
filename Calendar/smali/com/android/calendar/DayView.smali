.class public Lcom/android/calendar/DayView;
.super Landroid/view/View;
.source "DayView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayView$ScrollInterpolator;,
        Lcom/android/calendar/DayView$CalendarGestureListener;,
        Lcom/android/calendar/DayView$UpdateCurrentTime;,
        Lcom/android/calendar/DayView$DismissPopup;,
        Lcom/android/calendar/DayView$ContinueScroll;,
        Lcom/android/calendar/DayView$ContextMenuHandler;,
        Lcom/android/calendar/DayView$GotoBroadcaster;,
        Lcom/android/calendar/DayView$TodayAnimatorListener;
    }
.end annotation


# static fields
.field private static ALLDAY_TOP_MARGIN:I

.field private static ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

.field private static AMPM_TEXT_SIZE:F

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static CALENDAR_COLOR_SQUARE_SIZE:I

.field private static CURRENT_TIME_LINE_SIDE_BUFFER:I

.field private static CURRENT_TIME_LINE_TOP_OFFSET:I

.field private static DATE_HEADER_FONT_SIZE:F

.field private static DAY_HEADER_BOTTOM_MARGIN:I

.field private static DAY_HEADER_FONT_SIZE:F

.field private static DAY_HEADER_HEIGHT:I

.field private static DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

.field private static DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

.field private static DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

.field private static DAY_HEADER_RIGHT_MARGIN:I

.field private static DEBUG:Z

.field private static DEBUG_SCALING:Z

.field private static DEFAULT_CELL_HEIGHT:I

.field private static EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

.field private static EVENT_LINE_PADDING:I

.field private static EVENT_RECT_BOTTOM_MARGIN:I

.field private static EVENT_RECT_LEFT_MARGIN:I

.field private static EVENT_RECT_RIGHT_MARGIN:I

.field private static EVENT_RECT_STROKE_WIDTH:I

.field private static EVENT_RECT_TOP_MARGIN:I

.field private static EVENT_SQUARE_WIDTH:I

.field private static EVENT_TEXT_BOTTOM_MARGIN:I

.field private static EVENT_TEXT_FONT_SIZE:F

.field private static EVENT_TEXT_LEFT_MARGIN:I

.field private static EVENT_TEXT_RIGHT_MARGIN:I

.field private static EVENT_TEXT_TOP_MARGIN:I

.field private static EXPAND_ALL_DAY_BOTTOM_MARGIN:I

.field private static GRID_LINE_LEFT_MARGIN:F

.field private static HOURS_LEFT_MARGIN:I

.field private static HOURS_MARGIN:I

.field private static HOURS_RIGHT_MARGIN:I

.field private static HOURS_TEXT_SIZE:F

.field private static HOURS_TOP_MARGIN:I

.field private static MAX_CELL_HEIGHT:I

.field private static MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

.field private static MAX_UNEXPANDED_ALLDAY_HEIGHT:I

.field private static MIN_CELL_WIDTH_FOR_TEXT:I

.field private static MIN_EVENT_HEIGHT:F

.field private static MIN_HOURS_HEIGHT:I

.field private static MIN_HOURS_WIDTH:I

.field private static MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

.field private static MIN_Y_SPAN:I

.field private static MULTI_DAY_HEADER_HEIGHT:I

.field private static NEW_EVENT_HINT_FONT_SIZE:I

.field private static NEW_EVENT_MARGIN:I

.field private static NEW_EVENT_MAX_LENGTH:I

.field private static NEW_EVENT_WIDTH:I

.field private static NORMAL_FONT_SIZE:F

.field private static ONE_DAY_HEADER_HEIGHT:I

.field private static SINGLE_ALLDAY_HEIGHT:I

.field private static TAG:Ljava/lang/String;

.field private static mBgColor:I

.field private static mCalendarAmPmLabel:I

.field private static mCalendarDateBannerTextColor:I

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineInnerHorizontalColor:I

.field private static mCalendarGridLineInnerVerticalColor:I

.field private static mCalendarHourLabelColor:I

.field private static mCellHeight:I

.field private static mClickedColor:I

.field private static mEventTextColor:I

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mFutureBgColor:I

.field private static mFutureBgColorRes:I

.field private static mHorizontalSnapBackThreshold:I

.field private static mMinCellHeight:I

.field private static mMoreAlldayEventsTextAlpha:I

.field private static mMoreEventsTextColor:I

.field private static mNewEventHintColor:I

.field private static mOnDownDelay:I

.field private static mPressedColor:I

.field private static mScale:F

.field private static mShowAllAllDayEvents:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;

.field private static mUseExpandIcon:Z

.field private static mWeek_saturdayColor:I

.field private static mWeek_sundayColor:I

.field private static sCounter:I


# instance fields
.field private final OVERFLING_DISTANCE:I

.field private final drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field protected mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mAllDayEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDayLayouts:[Landroid/text/StaticLayout;

.field mAlldayAnimator:Landroid/animation/ObjectAnimator;

.field mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

.field private mAlldayHeight:I

.field private mAmString:Ljava/lang/String;

.field private mAnimateDayEventHeight:I

.field private mAnimateDayHeight:I

.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private mAnimationDistance:F

.field mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field mBaseDate:Landroid/text/format/Time;

.field private final mBold:Landroid/graphics/Typeface;

.field private mCallEdgeEffectOnAbsorb:Z

.field private final mCancelCallback:Ljava/lang/Runnable;

.field private mCancellingAnimations:Z

.field private mCellHeightBeforeScaleGesture:I

.field private mCellWidth:I

.field private final mClearClick:Ljava/lang/Runnable;

.field private mClickedEvent:Lcom/android/calendar/Event;

.field private mClickedYLocation:I

.field protected final mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mComputeSelectedEvents:Z

.field protected mContext:Landroid/content/Context;

.field private final mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

.field private final mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

.field private final mController:Lcom/android/calendar/CalendarController;

.field private final mCreateNewEventString:Ljava/lang/String;

.field private mCurrentTime:Landroid/text/format/Time;

.field protected final mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

.field protected final mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

.field private mDateStrWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private final mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private final mDestRect:Landroid/graphics/Rect;

.field private final mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

.field private mDownTouchTime:J

.field private mEarliestStartHour:[I

.field private final mEdgeEffectBottom:Landroid/widget/EdgeEffect;

.field private final mEdgeEffectTop:Landroid/widget/EdgeEffect;

.field private mEventCountTemplate:Ljava/lang/String;

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private final mEventTextPaint:Landroid/graphics/Paint;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsAlpha:I

.field private mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

.field private final mExpandAllDayRect:Landroid/graphics/Rect;

.field protected final mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstCell:I

.field private mFirstDayOfWeek:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mFirstVisibleDate:I

.field private mFirstVisibleDayOfWeek:I

.field private mGestureCenterHour:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private final mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

.field private mHandleActionUp:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasAllDayEvent:[Z

.field private mHourStrs:[Ljava/lang/String;

.field private mHoursTextHeight:I

.field private mHoursWidth:I

.field private mInitialScrollX:F

.field private mInitialScrollY:F

.field private mIs24HourFormat:Z

.field private mIsAccessibilityEnabled:Z

.field private mLastJulianDay:I

.field private mLastPopupEventID:J

.field private mLastReloadMillis:J

.field private mLastSelectedEventForAccessibility:Lcom/android/calendar/Event;

.field private mLastSelectionDayForAccessibility:I

.field private mLastSelectionHourForAccessibility:I

.field private mLastVelocity:F

.field private mLayouts:[Landroid/text/StaticLayout;

.field private mLines:[F

.field private mLoadedFirstJulianDay:I

.field private final mLongPressItems:[Ljava/lang/CharSequence;

.field private mLongPressTitle:Ljava/lang/String;

.field private mMaxAlldayEvents:I

.field private mMaxUnexpandedAlldayEventCount:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

.field mNewEventAlert:Landroid/app/AlertDialog;

.field private final mNewEventHintString:Ljava/lang/String;

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field protected mPaused:Z

.field private mPmString:Ljava/lang/String;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private final mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/android/calendar/Event;

.field private mPreviousDirection:I

.field private mRecalCenterHour:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mSavedClickedEvent:Lcom/android/calendar/Event;

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollStartY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field private mScrolling:Z

.field private mSelectedEvent:Lcom/android/calendar/Event;

.field private mSelectedEventForAccessibility:Lcom/android/calendar/Event;

.field private final mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllday:Z

.field private mSelectionDay:I

.field private mSelectionDayForAccessibility:I

.field private mSelectionHour:I

.field private mSelectionHourForAccessibility:I

.field private mSelectionMode:I

.field private final mSelectionPaint:Landroid/graphics/Paint;

.field private final mSelectionRect:Landroid/graphics/Rect;

.field private final mSetClick:Ljava/lang/Runnable;

.field private mSkippedAlldayEvents:[I

.field private mStartingScroll:Z

.field private mStartingSpanY:F

.field private final mTZUpdater:Ljava/lang/Runnable;

.field mTodayAnimator:Landroid/animation/ObjectAnimator;

.field private final mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

.field protected final mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

.field private mTodayJulianDay:I

.field private mTouchExplorationEnabled:Z

.field private mTouchMode:I

.field private mTouchStartedInAlldayArea:Z

.field private final mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

.field private mUpdateToast:Z

.field private mViewHeight:I

.field private mViewStartX:I

.field private mViewStartY:I

.field private final mViewSwitcher:Landroid/widget/ViewSwitcher;

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/high16 v7, 0x41400000

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 97
    const-string v0, "DayView"

    sput-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    .line 98
    sput-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    .line 99
    sput-boolean v3, Lcom/android/calendar/DayView;->DEBUG_SCALING:Z

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->mScale:F

    .line 122
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 123
    const/16 v0, 0x96

    sput v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 124
    const/16 v0, 0x64

    sput v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_access_level"

    aput-object v1, v0, v5

    const-string v1, "ownerAccount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 161
    const/16 v0, 0x80

    sput v0, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 197
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    .line 361
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 367
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 374
    const/high16 v0, 0x41e00000

    sput v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 379
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v1, 0x40800000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 385
    const/16 v0, 0xb4

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    .line 386
    sput v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 388
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 390
    sput v4, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 391
    sput v4, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 392
    sput v6, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 393
    sget v0, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v1, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 394
    sput v6, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    .line 395
    sput v4, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    .line 396
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 398
    sput v6, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 399
    sput v4, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 409
    sput v3, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 410
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 411
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 412
    sput v6, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 413
    const/4 v0, 0x3

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 414
    const/high16 v0, 0x41600000

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 415
    const/high16 v0, 0x42000000

    sput v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 416
    sput v7, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 417
    sput v7, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 418
    sput v7, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    .line 419
    const/high16 v0, 0x41100000

    sput v0, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    .line 420
    const/16 v0, 0x60

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 421
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 424
    const/high16 v0, 0x41c00000

    sput v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 425
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 426
    sput v5, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 427
    sput v3, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 428
    sput v5, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 429
    sput v3, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 430
    sput v4, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 431
    sput v4, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 432
    sput v4, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 433
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 434
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 435
    sput v5, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 436
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 437
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 438
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 439
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 441
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 443
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 444
    sput v6, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 445
    const/16 v0, 0xc

    sput v0, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 464
    const/16 v0, 0x4c

    sput v0, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 473
    sput v3, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 474
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 513
    sput-boolean v5, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    .line 517
    const/16 v0, 0x2d

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 521
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 525
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 541
    sput-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 576
    sput v3, Lcom/android/calendar/DayView;->sCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/CalendarController;Landroid/widget/ViewSwitcher;Lcom/android/calendar/EventLoader;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/calendar/CalendarController;
    .param p3, "viewSwitcher"    # Landroid/widget/ViewSwitcher;
    .param p4, "eventLoader"    # Lcom/android/calendar/EventLoader;
    .param p5, "numDays"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 656
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 127
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 128
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 163
    new-instance v2, Lcom/android/calendar/DayView$ContinueScroll;

    invoke-direct {v2, p0, v6}, Lcom/android/calendar/DayView$ContinueScroll;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    .line 170
    new-instance v2, Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$UpdateCurrentTime;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    .line 173
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    .line 175
    iput v3, p0, Lcom/android/calendar/DayView;->mLoadedFirstJulianDay:I

    .line 192
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    .line 200
    iput-object v6, p0, Lcom/android/calendar/DayView;->mNewEventAlert:Landroid/app/AlertDialog;

    .line 202
    new-instance v2, Lcom/android/calendar/DayView$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$1;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    .line 214
    new-instance v2, Lcom/android/calendar/DayView$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$2;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mSetClick:Ljava/lang/Runnable;

    .line 224
    new-instance v2, Lcom/android/calendar/DayView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$3;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mClearClick:Ljava/lang/Runnable;

    .line 238
    new-instance v2, Lcom/android/calendar/DayView$TodayAnimatorListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$TodayAnimatorListener;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    .line 285
    new-instance v2, Lcom/android/calendar/DayView$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$4;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    .line 315
    iput-object v6, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    .line 316
    iput-object v6, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    .line 336
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 337
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 338
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    .line 340
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    .line 342
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 343
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 344
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 354
    new-instance v2, Lcom/android/calendar/DayView$DismissPopup;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$DismissPopup;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    .line 356
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 466
    iput v7, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 472
    iput v3, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 482
    iput v7, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 486
    iput v7, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 488
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 495
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 505
    iput v5, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 509
    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 537
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 543
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 544
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 552
    iput v3, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 560
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 565
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    .line 578
    new-instance v2, Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-direct {v2, p0, v6}, Lcom/android/calendar/DayView$ContextMenuHandler;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    .line 603
    iput v5, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 613
    iput v5, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 615
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 621
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    .line 622
    iput v5, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    .line 633
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 635
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 648
    iput-object v6, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 649
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    .line 650
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    .line 1994
    new-instance v2, Lcom/android/calendar/DayView$5;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$5;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    .line 3532
    const-string v2, "[\t\n],"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 657
    iput-object p1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    .line 658
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initAccessibilityVariables()V

    .line 660
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    .line 661
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCreateNewEventString:Ljava/lang/String;

    .line 662
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mNewEventHintString:Ljava/lang/String;

    .line 663
    iput p5, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 665
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 666
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f0a0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 667
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 668
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 669
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 670
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    .line 671
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    .line 672
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 673
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 674
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 675
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 677
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v2, v4, :cond_2

    .line 678
    const v0, 0x7f0a0008

    .line 682
    .local v0, "eventTextSizeId":I
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 683
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 684
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 685
    sget v2, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    sput v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 686
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 687
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 688
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 689
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 691
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 693
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 694
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 695
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 697
    sget v2, Lcom/android/calendar/DayView;->mScale:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/calendar/DayView;->mScale:F

    .line 700
    sget v2, Lcom/android/calendar/DayView;->mScale:F

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 701
    sget v2, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 702
    sget v2, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 703
    sget v2, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 705
    sget v2, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    sput v2, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 706
    sget v2, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    sput v2, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 707
    sget v2, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 708
    sget v2, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 709
    sget v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 710
    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 712
    sget v2, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 713
    sget v2, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 715
    sget v2, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 716
    sget v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 717
    sget v2, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 718
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 719
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 720
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 721
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 722
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 723
    sget v2, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 724
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 725
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 726
    sget v2, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 727
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 728
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 729
    sget v2, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 730
    sget v2, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 731
    sget v2, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 732
    sget v2, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    .line 733
    sget v2, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    .line 734
    sget v2, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 737
    :cond_0
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v3, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 738
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v2, v4, :cond_3

    sget v2, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    :goto_1
    sput v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 740
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    .line 741
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    .line 743
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    .line 744
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 745
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 746
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/calendar/DayView;->mNewEventHintColor:I

    .line 747
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 750
    iput-object p4, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 751
    new-instance v2, Lcom/android/calendar/EventGeometry;

    invoke-direct {v2}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 752
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v3, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v2, v3}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 753
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 754
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v2, v4}, Lcom/android/calendar/EventGeometry;->setCellMargin(I)V

    .line 755
    new-array v2, v4, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/android/calendar/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    .line 758
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 759
    new-instance v2, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v2, p1, v6, v5}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 760
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 761
    iput-object p2, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    .line 762
    iput-object p3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 763
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/calendar/DayView$CalendarGestureListener;

    invoke-direct {v3, p0}, Lcom/android/calendar/DayView$CalendarGestureListener;-><init>(Lcom/android/calendar/DayView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 764
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 765
    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    if-nez v2, :cond_1

    .line 766
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v3, "preferences_default_cell_height"

    sget v4, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 769
    :cond_1
    new-instance v2, Landroid/widget/OverScroller;

    invoke-direct {v2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    .line 770
    new-instance v2, Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$ScrollInterpolator;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    .line 771
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    .line 772
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    .line 773
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 774
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    sput v2, Lcom/android/calendar/DayView;->mOnDownDelay:I

    .line 775
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    .line 777
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->init(Landroid/content/Context;)V

    .line 778
    return-void

    .line 680
    .end local v0    # "eventTextSizeId":I
    .end local v1    # "vc":Landroid/view/ViewConfiguration;
    :cond_2
    const v0, 0x7f0a0009

    .restart local v0    # "eventTextSizeId":I
    goto/16 :goto_0

    .line 738
    :cond_3
    sget v2, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/android/calendar/DayView;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$1104()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/DayView;)Landroid/widget/ViewSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mLoadedFirstJulianDay:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/calendar/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mLoadedFirstJulianDay:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # [Landroid/text/StaticLayout;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # [Landroid/text/StaticLayout;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeEventRelations()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/calendar/DayView;Lcom/android/calendar/Event;)Lcom/android/calendar/Event;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Lcom/android/calendar/Event;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/calendar/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/calendar/DayView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/calendar/DayView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/calendar/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/calendar/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    return p1
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 94
    sput-boolean p0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    return p0
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/DayView;Lcom/android/calendar/Event;)Lcom/android/calendar/Event;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Lcom/android/calendar/Event;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/calendar/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/calendar/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/calendar/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/calendar/DayView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mLastVelocity:F

    return v0
.end method

.method static synthetic access$3302(Lcom/android/calendar/DayView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mLastVelocity:F

    return p1
.end method

.method static synthetic access$3400(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/calendar/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/calendar/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/calendar/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/calendar/DayView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/DayView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mClickedYLocation:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/calendar/DayView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/calendar/DayView;)Lcom/android/calendar/DayView$UpdateCurrentTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/calendar/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/calendar/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/calendar/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/calendar/DayView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    return v0
.end method

.method static synthetic access$5300(Lcom/android/calendar/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/calendar/DayView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/DayView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/calendar/DayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/DayView;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    return-void
.end method

.method private adjustHourSelection()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1935
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-gez v1, :cond_0

    .line 1936
    invoke-direct {p0, v3}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1937
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_0

    .line 1938
    iput-object v5, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1939
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1943
    :cond_0
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_1

    .line 1944
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1949
    :cond_1
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_4

    .line 1957
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 1958
    .local v0, "daynum":I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 1960
    iput-object v5, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1961
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1962
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1988
    .end local v0    # "daynum":I
    :cond_2
    :goto_0
    return-void

    .line 1966
    .restart local v0    # "daynum":I
    :cond_3
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_4

    .line 1967
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1968
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1969
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v1, :cond_2

    .line 1970
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0

    .line 1976
    .end local v0    # "daynum":I
    :cond_4
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-le v1, v2, :cond_2

    .line 1977
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ge v1, v2, :cond_5

    .line 1978
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1979
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1980
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_2

    .line 1981
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0

    .line 1984
    :cond_5
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-lez v1, :cond_2

    .line 1985
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0
.end method

.method private adjustToBeginningOfWeek(Landroid/text/format/Time;)V
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 1209
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 1210
    .local v0, "dayOfWeek":I
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    sub-int v1, v0, v2

    .line 1211
    .local v1, "diff":I
    if-eqz v1, :cond_1

    .line 1212
    if-gez v1, :cond_0

    .line 1213
    add-int/lit8 v1, v1, 0x7

    .line 1215
    :cond_0
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 1216
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1218
    :cond_1
    return-void
.end method

.method private appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V
    .locals 6

    .prologue
    .line 1769
    invoke-virtual {p2}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    iget-boolean v0, p2, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_1

    .line 1774
    const/16 v5, 0x2012

    .line 1781
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, p2, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, p2, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 1782
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    return-void

    .line 1776
    :cond_1
    const/16 v5, 0x11

    .line 1777
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    const/16 v5, 0x91

    goto :goto_0
.end method

.method private calculateDuration(FFF)J
    .locals 10

    .prologue
    .line 5005
    const/high16 v0, 0x40000000

    div-float v0, p2, v0

    .line 5006
    div-float v1, p1, p2

    .line 5007
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    .line 5008
    mul-float v3, v0, v2

    add-float/2addr v3, v0

    .line 5010
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 5011
    const v5, 0x45098000

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 5019
    const/high16 v5, 0x447a0000

    div-float v6, v3, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    int-to-long v5, v5

    .line 5020
    sget-boolean v7, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 5021
    sget-object v7, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "halfScreenSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " delta:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " distanceRatio:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " velocity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distanceInfluenceForSnapDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5026
    :cond_0
    return-wide v5
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4071
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 4072
    .local v0, "in":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 4074
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 4076
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 4077
    .local v1, "out":Landroid/view/animation/Animation;
    if-eqz v1, :cond_1

    .line 4079
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 4081
    :cond_1
    return-void
.end method

.method private computeAllDayNeighbors()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 3033
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3034
    .local v3, "len":I
    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_1

    .line 3088
    :cond_0
    :goto_0
    return-void

    .line 3039
    :cond_1
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 3040
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 3041
    .local v0, "ev":Lcom/android/calendar/Event;
    iput-object v12, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3042
    iput-object v12, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3043
    iput-object v12, v0, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3044
    iput-object v12, v0, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3039
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3054
    .end local v0    # "ev":Lcom/android/calendar/Event;
    :cond_2
    const/4 v10, -0x1

    .line 3055
    .local v10, "startPosition":I
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3056
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->getColumn()I

    move-result v10

    .line 3058
    :cond_3
    const/4 v4, -0x1

    .line 3059
    .local v4, "maxPosition":I
    const/4 v9, 0x0

    .line 3060
    .local v9, "startEvent":Lcom/android/calendar/Event;
    const/4 v5, 0x0

    .line 3061
    .local v5, "maxPositionEvent":Lcom/android/calendar/Event;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_a

    .line 3062
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 3063
    .restart local v0    # "ev":Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v8

    .line 3064
    .local v8, "position":I
    if-ne v8, v10, :cond_6

    .line 3065
    move-object v9, v0

    .line 3070
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .local v2, "jj":I
    :goto_4
    if-ge v2, v3, :cond_9

    .line 3071
    if-ne v2, v1, :cond_7

    .line 3070
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3066
    .end local v2    # "jj":I
    :cond_6
    if-le v8, v4, :cond_4

    .line 3067
    move-object v5, v0

    .line 3068
    move v4, v8

    goto :goto_3

    .line 3074
    .restart local v2    # "jj":I
    :cond_7
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 3075
    .local v6, "neighbor":Lcom/android/calendar/Event;
    invoke-virtual {v6}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    .line 3076
    .local v7, "neighborPosition":I
    add-int/lit8 v11, v8, -0x1

    if-ne v7, v11, :cond_8

    .line 3077
    iput-object v6, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    goto :goto_5

    .line 3078
    :cond_8
    add-int/lit8 v11, v8, 0x1

    if-ne v7, v11, :cond_5

    .line 3079
    iput-object v6, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    goto :goto_5

    .line 3061
    .end local v6    # "neighbor":Lcom/android/calendar/Event;
    .end local v7    # "neighborPosition":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3083
    .end local v0    # "ev":Lcom/android/calendar/Event;
    .end local v2    # "jj":I
    .end local v8    # "position":I
    :cond_a
    if-eqz v9, :cond_b

    .line 3084
    invoke-direct {p0, v9}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    goto :goto_0

    .line 3086
    :cond_b
    invoke-direct {p0, v5}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    goto :goto_0
.end method

.method private computeDayLeftPosition(I)I
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 2296
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v0, v1, v2

    .line 2297
    .local v0, "effectiveWidth":I
    mul-int v1, p1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    add-int/2addr v1, v2

    return v1
.end method

.method private computeEventRelations()V
    .locals 15

    .prologue
    .line 2112
    const/4 v12, 0x0

    .line 2113
    .local v12, "maxAllDayEvents":I
    iget-object v5, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 2114
    .local v5, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2116
    .local v11, "len":I
    iget v13, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v6, v13, [I

    .line 2117
    .local v6, "eventsCount":[I
    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([II)V

    .line 2118
    const/4 v9, 0x0

    .local v9, "ii":I
    :goto_0
    if-ge v9, v11, :cond_8

    .line 2119
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 2120
    .local v4, "event":Lcom/android/calendar/Event;
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    if-gt v13, v14, :cond_0

    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    if-ge v13, v14, :cond_1

    .line 2118
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2123
    :cond_1
    invoke-virtual {v4}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2125
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2126
    .local v7, "firstDay":I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2127
    .local v10, "lastDay":I
    move v1, v7

    .local v1, "day":I
    :goto_2
    if-gt v1, v10, :cond_3

    .line 2128
    iget v13, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v13, v1, v13

    aget v14, v6, v13

    add-int/lit8 v0, v14, 0x1

    aput v0, v6, v13

    .line 2129
    .local v0, "count":I
    if-ge v12, v0, :cond_2

    .line 2130
    move v12, v0

    .line 2127
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2134
    .end local v0    # "count":I
    :cond_3
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2135
    .local v2, "daynum":I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, v4, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 2136
    .local v3, "durationDays":I
    if-gez v2, :cond_4

    .line 2137
    add-int/2addr v3, v2

    .line 2138
    const/4 v2, 0x0

    .line 2140
    :cond_4
    add-int v13, v2, v3

    iget v14, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-le v13, v14, :cond_5

    .line 2141
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int v3, v13, v2

    .line 2143
    :cond_5
    move v1, v2

    :goto_3
    if-lez v3, :cond_0

    .line 2144
    iget-object v13, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, v1

    .line 2143
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 2147
    .end local v1    # "day":I
    .end local v2    # "daynum":I
    .end local v3    # "durationDays":I
    .end local v7    # "firstDay":I
    .end local v10    # "lastDay":I
    :cond_6
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2148
    .restart local v2    # "daynum":I
    iget v13, v4, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2149
    .local v8, "hour":I
    if-ltz v2, :cond_7

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_7

    .line 2150
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    .line 2155
    :cond_7
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2156
    iget v13, v4, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2157
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v13, :cond_0

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_0

    .line 2158
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    goto/16 :goto_1

    .line 2162
    .end local v2    # "daynum":I
    .end local v4    # "event":Lcom/android/calendar/Event;
    .end local v8    # "hour":I
    :cond_8
    iput v12, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 2163
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 2164
    return-void
.end method

.method private computeFirstHour()V
    .locals 2

    .prologue
    .line 1930
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1931
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1932
    return-void
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 9
    .param p1, "currentMax"    # I
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2737
    const/4 v3, 0x0

    .line 2739
    .local v3, "maxWidthF":F
    array-length v1, p2

    .line 2740
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2741
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2742
    .local v4, "width":F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2744
    .end local v4    # "width":F
    :cond_0
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 2745
    .local v2, "maxWidth":I
    if-ge v2, p1, :cond_1

    .line 2746
    move v2, p1

    .line 2748
    :cond_1
    return v2
.end method

.method private computeNeighbors()V
    .locals 39

    .prologue
    .line 3150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 3151
    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_1

    .line 3432
    :cond_0
    :goto_0
    return-void

    .line 3156
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    move/from16 v0, v28

    if-ge v3, v0, :cond_2

    .line 3157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 3158
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3159
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3160
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3161
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3156
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 3164
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 3165
    const v12, 0x186a0

    .line 3166
    const v11, 0x186a0

    .line 3167
    const/4 v9, 0x0

    .line 3172
    const/4 v8, 0x0

    .line 3173
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    move-result-object v29

    .line 3174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v3, :cond_9

    .line 3175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->top:F

    float-to-int v3, v3

    .line 3176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->bottom:F

    float-to-int v6, v4

    .line 3177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->left:F

    float-to-int v5, v4

    .line 3178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->right:F

    float-to-int v4, v4

    .line 3182
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-le v4, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-lt v5, v7, :cond_7

    .line 3184
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 3186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 3187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 3188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    .line 3207
    :goto_2
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-lt v5, v3, :cond_a

    .line 3209
    const/16 v8, 0x8

    .line 3210
    add-int v3, v7, v6

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    .line 3228
    :cond_4
    :goto_3
    const/4 v3, 0x0

    move/from16 v27, v3

    move-object v14, v2

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_2a

    .line 3229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 3231
    iget v0, v2, Lcom/android/calendar/Event;->startTime:I

    move/from16 v30, v0

    .line 3232
    iget v0, v2, Lcom/android/calendar/Event;->endTime:I

    move/from16 v31, v0

    .line 3233
    iget v3, v2, Lcom/android/calendar/Event;->left:F

    float-to-int v0, v3

    move/from16 v32, v0

    .line 3234
    iget v3, v2, Lcom/android/calendar/Event;->right:F

    float-to-int v0, v3

    move/from16 v33, v0

    .line 3235
    iget v3, v2, Lcom/android/calendar/Event;->top:F

    float-to-int v3, v3

    .line 3236
    move-object/from16 v0, v29

    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v10, :cond_33

    .line 3237
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move v10, v3

    .line 3239
    :goto_5
    iget v3, v2, Lcom/android/calendar/Event;->bottom:F

    float-to-int v3, v3

    .line 3240
    move-object/from16 v0, v29

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v13, :cond_32

    .line 3241
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v3

    .line 3254
    :goto_6
    const/16 v22, 0x2710

    .line 3255
    const/16 v21, 0x2710

    .line 3256
    const/16 v20, 0x2710

    .line 3257
    const/16 v19, 0x2710

    .line 3258
    const/16 v18, 0x0

    .line 3259
    const/16 v17, 0x0

    .line 3260
    const/16 v16, 0x0

    .line 3261
    const/4 v15, 0x0

    .line 3265
    const/4 v3, 0x0

    .line 3266
    const/4 v13, 0x0

    .line 3267
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_e

    .line 3268
    move/from16 v0, v32

    if-lt v0, v8, :cond_d

    .line 3269
    sub-int v3, v32, v8

    .line 3273
    :cond_5
    :goto_7
    sub-int v13, v10, v6

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    .line 3296
    :goto_8
    if-lt v13, v12, :cond_6

    if-ne v13, v12, :cond_30

    if-ge v3, v11, :cond_30

    :cond_6
    move v11, v3

    move v12, v13

    move-object v13, v2

    .line 3305
    :goto_9
    const/4 v3, 0x0

    move/from16 v25, v3

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    :goto_a
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_29

    .line 3306
    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    move-object v3, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    .line 3305
    :goto_b
    add-int/lit8 v21, v25, 0x1

    move/from16 v25, v21

    move/from16 v21, v20

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v3

    goto :goto_a

    .line 3191
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_8

    .line 3192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 3194
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_34

    .line 3195
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move v7, v3

    goto/16 :goto_2

    .line 3200
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 3201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 3202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 3203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    goto/16 :goto_2

    .line 3211
    :cond_a
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-gt v4, v3, :cond_b

    .line 3213
    const/4 v8, 0x4

    .line 3214
    add-int v3, v7, v6

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    goto/16 :goto_3

    .line 3215
    :cond_b
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gt v6, v3, :cond_c

    .line 3217
    const/4 v8, 0x1

    .line 3218
    add-int v3, v5, v4

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    goto/16 :goto_3

    .line 3219
    :cond_c
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v3, :cond_4

    .line 3221
    const/4 v8, 0x2

    .line 3222
    add-int v3, v5, v4

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    goto/16 :goto_3

    .line 3270
    :cond_d
    move/from16 v0, v33

    if-gt v0, v8, :cond_5

    .line 3271
    sub-int v3, v8, v33

    goto/16 :goto_7

    .line 3274
    :cond_e
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v9, v0, :cond_11

    .line 3275
    move/from16 v0, v32

    if-lt v0, v8, :cond_10

    .line 3276
    sub-int v3, v32, v8

    .line 3280
    :cond_f
    :goto_c
    sub-int v13, v7, v26

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_8

    .line 3277
    :cond_10
    move/from16 v0, v33

    if-gt v0, v8, :cond_f

    .line 3278
    sub-int v3, v8, v33

    goto :goto_c

    .line 3281
    :cond_11
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v9, v0, :cond_14

    .line 3282
    move/from16 v0, v26

    if-gt v0, v8, :cond_13

    .line 3283
    sub-int v3, v8, v26

    .line 3287
    :cond_12
    :goto_d
    sub-int v13, v32, v4

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_8

    .line 3284
    :cond_13
    if-lt v10, v8, :cond_12

    .line 3285
    sub-int v3, v10, v8

    goto :goto_d

    .line 3288
    :cond_14
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v9, v0, :cond_31

    .line 3289
    move/from16 v0, v26

    if-gt v0, v8, :cond_16

    .line 3290
    sub-int v3, v8, v26

    .line 3294
    :cond_15
    :goto_e
    sub-int v13, v5, v33

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_8

    .line 3291
    :cond_16
    if-lt v10, v8, :cond_15

    .line 3292
    sub-int v3, v10, v8

    goto :goto_e

    .line 3309
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 3310
    iget v0, v3, Lcom/android/calendar/Event;->left:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3311
    iget v0, v3, Lcom/android/calendar/Event;->right:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v35, v0

    .line 3312
    iget v0, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v30

    if-gt v0, v1, :cond_1e

    .line 3315
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_2d

    move/from16 v0, v35

    move/from16 v1, v32

    if-le v0, v1, :cond_2d

    .line 3316
    iget v0, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v22, v0

    sub-int v22, v30, v22

    .line 3317
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_1a

    move-object/from16 v17, v3

    move/from16 v21, v22

    :cond_18
    :goto_f
    move/from16 v22, v21

    move/from16 v21, v20

    .line 3376
    :goto_10
    move/from16 v0, v34

    move/from16 v1, v33

    if-lt v0, v1, :cond_25

    .line 3379
    add-int v20, v10, v26

    div-int/lit8 v23, v20, 0x2

    .line 3380
    const/16 v20, 0x0

    .line 3381
    iget v0, v3, Lcom/android/calendar/Event;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3382
    iget v0, v3, Lcom/android/calendar/Event;->top:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    .line 3383
    move/from16 v0, v24

    move/from16 v1, v23

    if-gt v0, v1, :cond_23

    .line 3384
    sub-int v20, v23, v24

    .line 3388
    :cond_19
    :goto_11
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_24

    move/from16 v14, v20

    :goto_12
    move/from16 v18, v19

    move/from16 v20, v22

    move/from16 v19, v21

    move/from16 v38, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v38

    .line 3400
    goto/16 :goto_b

    .line 3320
    :cond_1a
    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 3321
    add-int v23, v32, v33

    div-int/lit8 v36, v23, 0x2

    .line 3322
    const/16 v23, 0x0

    .line 3323
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3324
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    .line 3325
    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_1c

    .line 3326
    sub-int v23, v36, v37

    move/from16 v24, v23

    .line 3331
    :goto_13
    const/16 v23, 0x0

    .line 3332
    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_1d

    .line 3333
    sub-int v23, v36, v35

    .line 3337
    :cond_1b
    :goto_14
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    move-object/from16 v17, v3

    move/from16 v21, v22

    .line 3339
    goto/16 :goto_f

    .line 3327
    :cond_1c
    move/from16 v0, v24

    move/from16 v1, v36

    if-lt v0, v1, :cond_2f

    .line 3328
    sub-int v23, v24, v36

    move/from16 v24, v23

    goto :goto_13

    .line 3334
    :cond_1d
    move/from16 v0, v34

    move/from16 v1, v36

    if-lt v0, v1, :cond_1b

    .line 3335
    sub-int v23, v34, v36

    goto :goto_14

    .line 3343
    :cond_1e
    iget v0, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_2d

    .line 3346
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_2d

    move/from16 v0, v35

    move/from16 v1, v32

    if-le v0, v1, :cond_2d

    .line 3347
    iget v0, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v22, v0

    sub-int v22, v22, v31

    .line 3348
    move/from16 v0, v22

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    move-object/from16 v16, v3

    move/from16 v38, v22

    move/from16 v22, v21

    move/from16 v21, v38

    .line 3350
    goto/16 :goto_10

    .line 3351
    :cond_1f
    move/from16 v0, v22

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    .line 3352
    add-int v23, v32, v33

    div-int/lit8 v36, v23, 0x2

    .line 3353
    const/16 v23, 0x0

    .line 3354
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3355
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    .line 3356
    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_21

    .line 3357
    sub-int v23, v36, v37

    move/from16 v24, v23

    .line 3362
    :goto_15
    const/16 v23, 0x0

    .line 3363
    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_22

    .line 3364
    sub-int v23, v36, v35

    .line 3368
    :cond_20
    :goto_16
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2d

    move-object/from16 v16, v3

    move/from16 v38, v22

    move/from16 v22, v21

    move/from16 v21, v38

    .line 3370
    goto/16 :goto_10

    .line 3358
    :cond_21
    move/from16 v0, v24

    move/from16 v1, v36

    if-lt v0, v1, :cond_2e

    .line 3359
    sub-int v23, v24, v36

    move/from16 v24, v23

    goto :goto_15

    .line 3365
    :cond_22
    move/from16 v0, v34

    move/from16 v1, v36

    if-lt v0, v1, :cond_20

    .line 3366
    sub-int v23, v34, v36

    goto :goto_16

    .line 3385
    :cond_23
    move/from16 v0, v35

    move/from16 v1, v23

    if-lt v0, v1, :cond_19

    .line 3386
    sub-int v20, v35, v23

    goto/16 :goto_11

    .line 3391
    :cond_24
    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c

    .line 3393
    sub-int v23, v34, v33

    .line 3394
    iget v0, v14, Lcom/android/calendar/Event;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v33

    .line 3395
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2c

    move/from16 v14, v20

    .line 3397
    goto/16 :goto_12

    .line 3400
    :cond_25
    move/from16 v0, v35

    move/from16 v1, v32

    if-gt v0, v1, :cond_2b

    .line 3403
    add-int v20, v10, v26

    div-int/lit8 v23, v20, 0x2

    .line 3404
    const/16 v20, 0x0

    .line 3405
    iget v0, v3, Lcom/android/calendar/Event;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3406
    iget v0, v3, Lcom/android/calendar/Event;->top:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3407
    move/from16 v0, v24

    move/from16 v1, v23

    if-gt v0, v1, :cond_27

    .line 3408
    sub-int v20, v23, v24

    .line 3412
    :cond_26
    :goto_17
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_28

    move-object/from16 v15, v16

    move/from16 v19, v21

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v22

    move-object/from16 v38, v3

    move-object v3, v14

    move-object/from16 v14, v38

    .line 3414
    goto/16 :goto_b

    .line 3409
    :cond_27
    move/from16 v0, v34

    move/from16 v1, v23

    if-lt v0, v1, :cond_26

    .line 3410
    sub-int v20, v34, v23

    goto :goto_17

    .line 3415
    :cond_28
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_2b

    .line 3417
    sub-int v23, v32, v35

    .line 3418
    iget v0, v15, Lcom/android/calendar/Event;->right:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v32, v24

    .line 3419
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2b

    move-object/from16 v15, v16

    move/from16 v19, v21

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v22

    move-object/from16 v38, v3

    move-object v3, v14

    move-object/from16 v14, v38

    .line 3421
    goto/16 :goto_b

    .line 3426
    :cond_29
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3427
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3428
    iput-object v15, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3429
    iput-object v14, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3228
    add-int/lit8 v2, v27, 0x1

    move/from16 v27, v2

    move-object v14, v13

    goto/16 :goto_4

    .line 3431
    :cond_2a
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    goto/16 :goto_0

    :cond_2b
    move-object v3, v14

    move/from16 v20, v22

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v21

    goto/16 :goto_b

    :cond_2c
    move-object v3, v14

    move/from16 v14, v18

    goto/16 :goto_12

    :cond_2d
    move/from16 v22, v21

    move/from16 v21, v20

    goto/16 :goto_10

    :cond_2e
    move/from16 v24, v23

    goto/16 :goto_15

    :cond_2f
    move/from16 v24, v23

    goto/16 :goto_13

    :cond_30
    move-object v13, v14

    goto/16 :goto_9

    :cond_31
    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_8

    :cond_32
    move/from16 v26, v3

    goto/16 :goto_6

    :cond_33
    move v10, v3

    goto/16 :goto_5

    :cond_34
    move v7, v3

    goto/16 :goto_2
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 5037
    const/high16 v0, 0x3f000000

    sub-float v0, p1, v0

    .line 5038
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 5039
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3680
    iput v3, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3681
    iput v6, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3682
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 3683
    iget-object v7, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 3685
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 3690
    .local v5, "y":I
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3691
    .local v0, "oldSelectedEvent":Lcom/android/calendar/Event;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3692
    .local v1, "oldSelectionDay":I
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 3693
    .local v2, "oldSelectionHour":I
    invoke-direct {p0, v4, v5, v6}, Lcom/android/calendar/DayView;->setSelectionFromPosition(IIZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3697
    iget v7, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v1, v7, :cond_1

    iget v7, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-ne v2, v7, :cond_1

    .line 3699
    .local v3, "pressedSelected":Z
    :goto_0
    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v6, :cond_2

    .line 3700
    iget-object v6, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v6, p0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    .line 3701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/calendar/DayView;->mDownTouchTime:J

    .line 3702
    iget-object v6, p0, Lcom/android/calendar/DayView;->mSetClick:Ljava/lang/Runnable;

    sget v7, Lcom/android/calendar/DayView;->mOnDownDelay:I

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3707
    .end local v3    # "pressedSelected":Z
    :cond_0
    :goto_1
    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3708
    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3709
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 3710
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3711
    return-void

    :cond_1
    move v3, v6

    .line 3697
    goto :goto_0

    .line 3704
    .restart local v3    # "pressedSelected":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    goto :goto_1
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    .line 2450
    iget-object v5, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2451
    .local v5, "p":Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2453
    .local v7, "r":Landroid/graphics/Rect;
    sget v0, Lcom/android/calendar/DayView;->mFutureBgColor:I

    if-eqz v0, :cond_0

    .line 2454
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2456
    :cond_0
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2457
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2460
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2461
    .local v1, "cell":I
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2462
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    .line 2463
    .local v12, "alpha":I
    iget v0, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2464
    const/4 v2, 0x0

    .local v2, "day":I
    :goto_0
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v0, :cond_2

    move-object v0, p0

    move-object v4, p1

    .line 2467
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2469
    iget v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    if-ne v1, v0, :cond_1

    .line 2470
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    sget v6, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x3c

    add-int/2addr v0, v4

    add-int/lit8 v9, v0, 0x1

    .line 2474
    .local v9, "lineY":I
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v9, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x2

    if-ge v9, v0, :cond_1

    move-object v6, p0

    move v8, v2

    move-object v10, p1

    move-object v11, v5

    .line 2475
    invoke-direct/range {v6 .. v11}, Lcom/android/calendar/DayView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2464
    .end local v9    # "lineY":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2479
    :cond_2
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2480
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2482
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2483
    return-void
.end method

.method private doExpandAllDayClick()V
    .locals 10

    .prologue
    const/16 v3, 0x4c

    const-wide/16 v4, 0xc8

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 3715
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 3717
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 3720
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v0, :cond_0

    .line 3721
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v8, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v8, v8

    sub-int/2addr v0, v8

    :goto_1
    iput v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3725
    :cond_0
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3726
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 3727
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3729
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 3730
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3732
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 3733
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3735
    :cond_3
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3737
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    .line 3738
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayEventAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    .line 3739
    const-string v8, "moreAllDayEventsTextAlpha"

    const/4 v0, 0x2

    new-array v9, v0, [I

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_7

    move v0, v3

    :goto_2
    aput v0, v9, v2

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_8

    :goto_3
    aput v2, v9, v1

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    .line 3745
    iget-object v2, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_9

    move-wide v0, v4

    :goto_4
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3746
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3747
    iget-object v2, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_a

    move-wide v0, v6

    :goto_5
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3748
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3749
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3750
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 3752
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_b

    :goto_6
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3754
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3756
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 3715
    goto/16 :goto_0

    .line 3721
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto :goto_1

    :cond_7
    move v0, v2

    .line 3739
    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_3

    :cond_9
    move-wide v0, v6

    .line 3745
    goto :goto_4

    .line 3747
    :cond_a
    const-wide/16 v0, 0x190

    goto :goto_5

    :cond_b
    move-wide v4, v6

    .line 3752
    goto :goto_6
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 11

    .prologue
    .line 4084
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 4086
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4087
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    .line 4089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 4091
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 4094
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 4095
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFling: velocityX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 4097
    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 4098
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4132
    :cond_1
    :goto_1
    return-void

    .line 4097
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 4102
    :cond_3
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_4

    .line 4103
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "doFling: no fling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4108
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 4109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4111
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 4112
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFling: mViewStartY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " velocityY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4117
    iget-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    const/4 v3, 0x0

    neg-float v4, p4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iget v9, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    iget v10, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 4123
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-eqz v0, :cond_7

    .line 4124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    .line 4131
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4128
    :cond_7
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-eq v0, v1, :cond_6

    .line 4129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    goto :goto_2
.end method

.method private doLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3942
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    .line 3943
    iget-boolean v3, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v3, :cond_1

    .line 3964
    :cond_0
    :goto_0
    return-void

    .line 3948
    :cond_1
    iget v3, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 3952
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 3953
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 3955
    .local v2, "y":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/calendar/DayView;->setSelectionFromPosition(IIZ)Z

    move-result v0

    .line 3956
    .local v0, "validPosition":Z
    if-eqz v0, :cond_0

    .line 3961
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3962
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3963
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    goto :goto_0
.end method

.method private doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 3967
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 3968
    iget-boolean v8, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    if-eqz v8, :cond_0

    .line 3969
    iput v9, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 3970
    iput v9, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 3971
    iput-boolean v10, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 3974
    :cond_0
    iget v8, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    add-float/2addr v8, p3

    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 3975
    iget v8, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    add-float/2addr v8, p4

    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 3976
    iget v8, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    float-to-int v3, v8

    .line 3977
    .local v3, "distanceX":I
    iget v8, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    float-to-int v4, v8

    .line 3979
    .local v4, "distanceY":I
    invoke-direct {p0, p2}, Lcom/android/calendar/DayView;->getAverageY(Landroid/view/MotionEvent;)F

    move-result v5

    .line 3980
    .local v5, "focusY":F
    iget-boolean v8, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    if-eqz v8, :cond_1

    .line 3982
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    sget v9, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 3984
    iput-boolean v10, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 3989
    :cond_1
    iget v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    if-ne v8, v7, :cond_8

    .line 3990
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3991
    .local v0, "absDistanceX":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3992
    .local v1, "absDistanceY":I
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v8, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 3993
    iput v10, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    .line 3995
    if-le v0, v1, :cond_7

    .line 3996
    const/16 v8, 0x40

    iput v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3997
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3998
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v8, v8

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 4018
    .end local v0    # "absDistanceX":I
    .end local v1    # "absDistanceY":I
    :cond_2
    :goto_0
    iget v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_6

    .line 4021
    iget v8, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v8, v5

    sget v9, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4025
    iget v8, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    int-to-float v8, v8

    add-float/2addr v8, p4

    float-to-int v6, v8

    .line 4026
    .local v6, "pulledToY":I
    if-gez v6, :cond_a

    .line 4027
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v9, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v9, v9

    div-float v9, p4, v9

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4028
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 4029
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4038
    :cond_3
    :goto_1
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v8, :cond_b

    .line 4039
    iput v10, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4040
    iput-boolean v7, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 4045
    :cond_4
    :goto_2
    iget-boolean v8, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    if-eqz v8, :cond_5

    .line 4047
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    sget v9, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sget v9, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 4049
    iput-boolean v10, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 4051
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 4054
    .end local v6    # "pulledToY":I
    :cond_6
    iput-boolean v7, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4056
    iput v10, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4057
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4058
    return-void

    .line 4000
    .restart local v0    # "absDistanceX":I
    .restart local v1    # "absDistanceY":I
    :cond_7
    const/16 v8, 0x20

    iput v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    goto :goto_0

    .line 4002
    .end local v0    # "absDistanceX":I
    .end local v1    # "absDistanceY":I
    :cond_8
    iget v8, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_2

    .line 4006
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4007
    if-eqz v3, :cond_2

    .line 4008
    if-lez v3, :cond_9

    move v2, v7

    .line 4009
    .local v2, "direction":I
    :goto_3
    iget v8, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    if-eq v2, v8, :cond_2

    .line 4012
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v8, v8

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 4013
    iput v2, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    goto/16 :goto_0

    .line 4008
    .end local v2    # "direction":I
    :cond_9
    const/4 v2, -0x1

    goto :goto_3

    .line 4031
    .restart local v6    # "pulledToY":I
    :cond_a
    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v6, v8, :cond_3

    .line 4032
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v9, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v9, v9

    div-float v9, p4, v9

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4033
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 4034
    iget-object v8, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    .line 4041
    :cond_b
    iget v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v9, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v8, v9, :cond_4

    .line 4042
    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v8, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4043
    iput-boolean v7, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    goto :goto_2
.end method

.method private doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 48
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3853
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v3, :cond_1

    .line 3939
    :cond_0
    :goto_0
    return-void

    .line 3857
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v45, v0

    .line 3858
    .local v45, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v46, v0

    .line 3859
    .local v46, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v42, v0

    .line 3860
    .local v42, "selectedDay":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v43, v0

    .line 3862
    .local v43, "selectedHour":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v4, :cond_4

    .line 3864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mFirstCell:I

    move/from16 v37, v0

    .line 3865
    .local v37, "bottom":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move/from16 v0, v45

    if-ge v0, v3, :cond_2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v46

    if-le v0, v3, :cond_2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v3, v4

    move/from16 v0, v46

    if-lt v0, v3, :cond_3

    :cond_2
    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v3, :cond_4

    move/from16 v0, v46

    move/from16 v1, v37

    if-ge v0, v1, :cond_4

    move/from16 v0, v46

    int-to-float v3, v0

    move/from16 v0, v37

    int-to-float v4, v0

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 3868
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->doExpandAllDayClick()V

    goto :goto_0

    .line 3873
    .end local v37    # "bottom":I
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/DayView;->setSelectionFromPosition(IIZ)Z

    move-result v44

    .line 3874
    .local v44, "validPosition":Z
    if-nez v44, :cond_5

    .line 3875
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v46

    if-ge v0, v3, :cond_0

    .line 3876
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v9, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3877
    .local v9, "selectedTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v9, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3878
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v3, v9, Landroid/text/format/Time;->hour:I

    .line 3879
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    const-wide/16 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 3886
    .end local v9    # "selectedTime":Landroid/text/format/Time;
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_8

    const/16 v40, 0x1

    .line 3887
    .local v40, "hasSelection":Z
    :goto_1
    if-nez v40, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v42

    if-ne v0, v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v0, v43

    if-ne v0, v3, :cond_9

    const/16 v41, 0x1

    .line 3890
    .local v41, "pressedSelected":Z
    :goto_2
    if-eqz v41, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    if-nez v3, :cond_a

    .line 3893
    const-wide/16 v22, 0x0

    .line 3894
    .local v22, "extraLong":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_7

    .line 3895
    const-wide/16 v22, 0x10

    .line 3897
    :cond_7
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3898
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v12, 0x1

    const-wide/16 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    const-wide/16 v24, -0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v25}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 3938
    .end local v22    # "extraLong":J
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 3886
    .end local v40    # "hasSelection":Z
    .end local v41    # "pressedSelected":Z
    :cond_8
    const/16 v40, 0x0

    goto :goto_1

    .line 3887
    .restart local v40    # "hasSelection":Z
    :cond_9
    const/16 v41, 0x0

    goto :goto_2

    .line 3901
    .restart local v41    # "pressedSelected":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v3, :cond_e

    .line 3903
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_b

    .line 3904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 3907
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3909
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->bottom:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v47, v0

    .line 3913
    .local v47, "yLocation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v3, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_c

    .line 3914
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mFirstCell:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    sub-int/2addr v3, v4

    add-int v47, v47, v3

    .line 3916
    :cond_c
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mClickedYLocation:I

    .line 3917
    sget v3, Lcom/android/calendar/DayView;->mOnDownDelay:I

    add-int/lit8 v3, v3, 0x32

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/calendar/DayView;->mDownTouchTime:J

    sub-long/2addr v5, v7

    sub-long v38, v3, v5

    .line 3919
    .local v38, "clearDelay":J
    const-wide/16 v3, 0x0

    cmp-long v3, v38, v3

    if-lez v3, :cond_d

    .line 3920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mClearClick:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 3922
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mClearClick:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 3926
    .end local v38    # "clearDelay":J
    .end local v47    # "yLocation":I
    :cond_e
    new-instance v28, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3927
    .local v28, "startTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3928
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move-object/from16 v0, v28

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 3929
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3931
    new-instance v29, Landroid/text/format/Time;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3932
    .local v29, "endTime":Landroid/text/format/Time;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v29

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 3934
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x20

    const-wide/16 v30, -0x1

    const/16 v32, 0x0

    const-wide/16 v33, 0x2

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v25, p0

    invoke-virtual/range {v24 .. v36}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_3
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2247
    .local v0, "p":Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2249
    .local v1, "r":Landroid/graphics/Rect;
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2250
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-eqz v2, :cond_0

    .line 2251
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/android/calendar/DayView;->drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2252
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2255
    :cond_0
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2256
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2259
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-nez v2, :cond_1

    .line 2260
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/DayView;->drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2262
    :cond_1
    return-void
.end method

.method private drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 38
    .param p1, "firstDay"    # I
    .param p2, "numDays"    # I
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2856
    sget v3, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2857
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2858
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 2860
    .local v7, "eventTextPaint":Landroid/graphics/Paint;
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v0, v3

    move/from16 v34, v0

    .line 2861
    .local v34, "startY":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v3, v3

    add-float v3, v3, v34

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v5, v5

    add-float v35, v3, v5

    .line 2862
    .local v35, "stopY":F
    const/16 v36, 0x0

    .line 2863
    .local v36, "x":F
    const/16 v28, 0x0

    .line 2866
    .local v28, "linesIndex":I
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2867
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v0, v3

    move/from16 v36, v0

    .line 2868
    const/high16 v3, 0x3f800000

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v29, v28, 0x1

    .end local v28    # "linesIndex":I
    .local v29, "linesIndex":I
    sget v5, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v5, v3, v28

    .line 2871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "linesIndex":I
    .restart local v28    # "linesIndex":I
    aput v34, v3, v29

    .line 2872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v29, v28, 0x1

    .end local v28    # "linesIndex":I
    .restart local v29    # "linesIndex":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v28

    .line 2873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "linesIndex":I
    .restart local v28    # "linesIndex":I
    aput v34, v3, v29

    .line 2875
    const/16 v20, 0x0

    .local v20, "day":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move/from16 v0, v20

    if-gt v0, v3, :cond_0

    .line 2876
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v36, v0

    .line 2877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v29, v28, 0x1

    .end local v28    # "linesIndex":I
    .restart local v29    # "linesIndex":I
    aput v36, v3, v28

    .line 2878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "linesIndex":I
    .restart local v28    # "linesIndex":I
    aput v34, v3, v29

    .line 2879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v29, v28, 0x1

    .end local v28    # "linesIndex":I
    .restart local v29    # "linesIndex":I
    aput v36, v3, v28

    .line 2880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "linesIndex":I
    .restart local v28    # "linesIndex":I
    aput v35, v3, v29

    .line 2875
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 2882
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move-object/from16 v2, p4

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2884
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2886
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v37, v3, v5

    .line 2887
    .local v37, "y":I
    add-int v3, p1, p2

    add-int/lit8 v27, v3, -0x1

    .line 2888
    .local v27, "lastDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 2889
    .local v24, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 2891
    .local v30, "numEvents":I
    const/16 v25, 0x0

    .line 2893
    .local v25, "hasMoreEvents":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v0, v3

    move/from16 v21, v0

    .line 2895
    .local v21, "drawHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v0, v3

    move/from16 v31, v0

    .line 2897
    .local v31, "numRectangles":F
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v18, v3, v5

    .line 2899
    .local v18, "allDayEventClip":I
    move/from16 v0, p2

    new-array v3, v0, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    .line 2900
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_3

    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v3, :cond_3

    .line 2904
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    move/from16 v31, v0

    .line 2906
    move/from16 v0, v18

    int-to-float v3, v0

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v18, v0

    .line 2907
    const/16 v25, 0x1

    .line 2913
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v19

    .line 2914
    .local v19, "alpha":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2915
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move/from16 v0, v30

    if-ge v10, v0, :cond_c

    .line 2916
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 2917
    .local v4, "event":Lcom/android/calendar/Event;
    iget v0, v4, Lcom/android/calendar/Event;->startDay:I

    move/from16 v32, v0

    .line 2918
    .local v32, "startDay":I
    iget v0, v4, Lcom/android/calendar/Event;->endDay:I

    move/from16 v22, v0

    .line 2919
    .local v22, "endDay":I
    move/from16 v0, v32

    move/from16 v1, v27

    if-gt v0, v1, :cond_2

    move/from16 v0, v22

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    .line 2915
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2908
    .end local v4    # "event":Lcom/android/calendar/Event;
    .end local v10    # "i":I
    .end local v19    # "alpha":I
    .end local v22    # "endDay":I
    .end local v32    # "startDay":I
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v3, :cond_1

    .line 2910
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v18, v3, v5

    goto :goto_1

    .line 2922
    .restart local v4    # "event":Lcom/android/calendar/Event;
    .restart local v10    # "i":I
    .restart local v19    # "alpha":I
    .restart local v22    # "endDay":I
    .restart local v32    # "startDay":I
    :cond_4
    move/from16 v0, v32

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 2923
    move/from16 v32, p1

    .line 2925
    :cond_5
    move/from16 v0, v22

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 2926
    move/from16 v22, v27

    .line 2928
    :cond_6
    sub-int v33, v32, p1

    .line 2929
    .local v33, "startIndex":I
    sub-int v23, v22, p1

    .line 2930
    .local v23, "endIndex":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    int-to-float v0, v3

    move/from16 v26, v0

    .line 2934
    .local v26, "height":F
    :goto_4
    sget v3, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v3, v3

    cmpl-float v3, v26, v3

    if-lez v3, :cond_7

    .line 2935
    sget v3, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v0, v3

    move/from16 v26, v0

    .line 2940
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v4, Lcom/android/calendar/Event;->left:F

    .line 2941
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iput v3, v4, Lcom/android/calendar/Event;->right:F

    .line 2942
    move/from16 v0, v37

    int-to-float v3, v0

    invoke-virtual {v4}, Lcom/android/calendar/Event;->getColumn()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v26

    add-float/2addr v3, v5

    iput v3, v4, Lcom/android/calendar/Event;->top:F

    .line 2943
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    add-float v3, v3, v26

    sget v5, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, v4, Lcom/android/calendar/Event;->bottom:F

    .line 2944
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_b

    .line 2948
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    move/from16 v0, v18

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_9

    .line 2949
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-direct {v0, v3, v1, v2}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_3

    .line 2930
    .end local v26    # "height":F
    :cond_8
    div-float v26, v21, v31

    goto :goto_4

    .line 2951
    .restart local v26    # "height":F
    :cond_9
    iget v3, v4, Lcom/android/calendar/Event;->bottom:F

    move/from16 v0, v18

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b

    .line 2952
    if-eqz v25, :cond_a

    .line 2953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-direct {v0, v3, v1, v2}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_3

    .line 2956
    :cond_a
    move/from16 v0, v18

    int-to-float v3, v0

    iput v3, v4, Lcom/android/calendar/Event;->bottom:F

    .line 2959
    :cond_b
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    float-to-int v8, v3

    iget v3, v4, Lcom/android/calendar/Event;->bottom:F

    float-to-int v9, v3

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;

    move-result-object v13

    .line 2961
    .local v13, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/DayView;->setupAllDayTextRect(Landroid/graphics/Rect;)V

    .line 2962
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move-object v11, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v12

    .line 2963
    .local v12, "layout":Landroid/text/StaticLayout;
    iget v15, v13, Landroid/graphics/Rect;->top:I

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v11, p0

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V

    .line 2966
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_2

    .line 2967
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v32

    if-gt v0, v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v22

    if-lt v0, v3, :cond_2

    .line 2968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2972
    .end local v4    # "event":Lcom/android/calendar/Event;
    .end local v12    # "layout":Landroid/text/StaticLayout;
    .end local v13    # "r":Landroid/graphics/Rect;
    .end local v22    # "endDay":I
    .end local v23    # "endIndex":I
    .end local v26    # "height":F
    .end local v32    # "startDay":I
    .end local v33    # "startIndex":I
    :cond_c
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2974
    sget v3, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    if-eqz v3, :cond_f

    .line 2976
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v19

    .line 2977
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2978
    sget v3, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    shl-int/lit8 v3, v3, 0x18

    sget v5, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    and-int/2addr v3, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2979
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    array-length v3, v3

    if-ge v10, v3, :cond_e

    .line 2980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    aget v3, v3, v10

    if-lez v3, :cond_d

    .line 2981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    aget v3, v3, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v10, v2}, Lcom/android/calendar/DayView;->drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 2979
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2984
    :cond_e
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2987
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_10

    .line 2990
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeAllDayNeighbors()V

    .line 2994
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6, v8}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 2996
    :cond_10
    return-void
.end method

.method private drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x0

    .line 2301
    sget v3, Lcom/android/calendar/DayView;->mFutureBgColor:I

    if-eqz v3, :cond_1

    .line 2303
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2304
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2305
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2306
    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2307
    sget v3, Lcom/android/calendar/DayView;->mBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2308
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2309
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2311
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 2312
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2313
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2314
    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2315
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2317
    const/4 v1, -0x1

    .line 2319
    .local v1, "startIndex":I
    iget v3, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v3, v4

    .line 2320
    .local v2, "todayIndex":I
    if-gez v2, :cond_3

    .line 2322
    const/4 v1, 0x0

    .line 2328
    :cond_0
    :goto_0
    if-ltz v1, :cond_1

    .line 2330
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2331
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2332
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 2333
    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2334
    sget v3, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2335
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2336
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2340
    .end local v1    # "startIndex":I
    .end local v2    # "todayIndex":I
    :cond_1
    iget-boolean v3, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_2

    .line 2342
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2343
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2344
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v3, v4

    .line 2345
    .local v0, "daynum":I
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2346
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2347
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2348
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2350
    .end local v0    # "daynum":I
    :cond_2
    return-void

    .line 2323
    .restart local v1    # "startIndex":I
    .restart local v2    # "todayIndex":I
    :cond_3
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v3, v4, :cond_0

    .line 2325
    add-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method private drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/16 v4, 0xc

    .line 2411
    sget v2, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2412
    sget v2, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2413
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2414
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2415
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2416
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 2417
    .local v0, "text":Ljava/lang/String;
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lt v2, v4, :cond_0

    .line 2418
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2420
    :cond_0
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2421
    .local v1, "y":I
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2423
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v2, v4, :cond_1

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    if-le v2, v4, :cond_1

    .line 2425
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2426
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    rsub-int/lit8 v3, v3, 0xc

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2428
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2430
    :cond_1
    return-void
.end method

.method private drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2646
    iget v2, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2648
    .local v1, "todayIndex":I
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2649
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2650
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 2651
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2652
    sget v2, Lcom/android/calendar/DayView;->mBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2653
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2654
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2655
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2658
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v2, v5, :cond_1

    if-nez v1, :cond_1

    .line 2660
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 2662
    .local v0, "lineY":I
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 2663
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2664
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2665
    iget v2, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2666
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2667
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2668
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2669
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2703
    .end local v0    # "lineY":I
    :cond_0
    :goto_0
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2704
    return-void

    .line 2671
    :cond_1
    if-ltz v1, :cond_3

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v1, v2, :cond_3

    .line 2673
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 2675
    .restart local v0    # "lineY":I
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 2676
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2677
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2678
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2679
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2680
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2681
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2682
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2686
    :cond_2
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v3, :cond_0

    .line 2687
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2688
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2689
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2690
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2691
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2692
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 2694
    .end local v0    # "lineY":I
    :cond_3
    if-gez v1, :cond_0

    .line 2696
    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2697
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2698
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2699
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2700
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2701
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "day"    # I
    .param p3, "top"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2434
    invoke-direct {p0, p2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2435
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2437
    sget v0, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2438
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2440
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2441
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2442
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    if-eqz v0, :cond_0

    .line 2443
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2444
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2445
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2447
    :cond_0
    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 2550
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    add-int/2addr v0, p2

    .line 2552
    iget v1, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    if-le v0, v1, :cond_0

    .line 2553
    iget v1, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    sub-int/2addr v0, v1

    .line 2555
    :cond_0
    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2557
    iget v1, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v1, v2

    .line 2559
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2560
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-le v0, v3, :cond_2

    .line 2561
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    .line 2564
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    sub-int v4, v0, v4

    .line 2565
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2566
    sget v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2568
    if-ne v1, p2, :cond_1

    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2569
    int-to-float v0, v4

    invoke-virtual {p4, v2, v0, v3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2572
    int-to-float v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 2573
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2574
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2575
    int-to-float v0, v0

    invoke-virtual {p4, p1, v0, v3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2593
    :goto_1
    return-void

    .line 2568
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 2577
    :cond_2
    sget v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    .line 2578
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2582
    invoke-direct {p0, p2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    add-int/2addr v0, v4

    .line 2583
    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2584
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2585
    int-to-float v4, v0

    invoke-virtual {p4, p1, v4, v3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2588
    int-to-float v0, v0

    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v4, v0

    .line 2589
    sget v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2590
    if-ne v1, p2, :cond_3

    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2591
    int-to-float v0, v4

    invoke-virtual {p4, v2, v0, v3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 2590
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_2
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v10, 0x1

    .line 2366
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v0, v10, :cond_0

    sget v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    if-nez v0, :cond_0

    .line 2408
    :goto_0
    return-void

    .line 2370
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2371
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2372
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2375
    .local v3, "cell":I
    iget v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    if-ge v0, v1, :cond_3

    .line 2376
    iget-object v8, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    .line 2381
    .local v8, "dayNames":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2382
    const/4 v2, 0x0

    .local v2, "day":I
    :goto_2
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v0, :cond_7

    .line 2383
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    add-int v9, v2, v0

    .line 2384
    .local v9, "dayOfWeek":I
    const/16 v0, 0xe

    if-lt v9, v0, :cond_1

    .line 2385
    add-int/lit8 v9, v9, -0xe

    .line 2388
    :cond_1
    sget v6, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 2389
    .local v6, "color":I
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v0, v10, :cond_5

    .line 2390
    const/4 v0, 0x6

    if-ne v9, v0, :cond_4

    .line 2391
    sget v6, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 2404
    :cond_2
    :goto_3
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2405
    aget-object v1, v8, v9

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;->drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2382
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2378
    .end local v2    # "day":I
    .end local v6    # "color":I
    .end local v8    # "dayNames":[Ljava/lang/String;
    .end local v9    # "dayOfWeek":I
    :cond_3
    iget-object v8, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    .restart local v8    # "dayNames":[Ljava/lang/String;
    goto :goto_1

    .line 2392
    .restart local v2    # "day":I
    .restart local v6    # "color":I
    .restart local v9    # "dayOfWeek":I
    :cond_4
    if-nez v9, :cond_2

    .line 2393
    sget v6, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_3

    .line 2396
    :cond_5
    rem-int/lit8 v7, v2, 0x7

    .line 2397
    .local v7, "column":I
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v7, v0}, Lcom/android/calendar/Utils;->isSaturday(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2398
    sget v6, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    goto :goto_3

    .line 2399
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v7, v0}, Lcom/android/calendar/Utils;->isSunday(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2400
    sget v6, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_3

    .line 2407
    .end local v6    # "color":I
    .end local v7    # "column":I
    .end local v9    # "dayOfWeek":I
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;
    .locals 8
    .param p1, "event"    # Lcom/android/calendar/Event;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;
    .param p4, "eventTextPaint"    # Landroid/graphics/Paint;
    .param p5, "visibleTop"    # I
    .param p6, "visibleBot"    # I

    .prologue
    .line 3437
    iget-object v5, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 3438
    .local v5, "r":Landroid/graphics/Rect;
    iget v6, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v6, v7

    invoke-static {v6, p5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3439
    iget v6, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v6, v7

    invoke-static {v6, p6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3440
    iget v6, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3441
    iget v6, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3444
    iget-object v6, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    if-ne p1, v6, :cond_5

    .line 3445
    sget v2, Lcom/android/calendar/DayView;->mClickedColor:I

    .line 3450
    .local v2, "color":I
    :goto_0
    iget v6, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    packed-switch v6, :pswitch_data_0

    .line 3464
    :cond_0
    :goto_1
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3468
    :cond_1
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3470
    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 3471
    .local v3, "floorHalfStroke":I
    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 3472
    .local v1, "ceilHalfStroke":I
    iget v6, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-static {v6, p5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3473
    iget v6, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v1

    invoke-static {v6, p6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3475
    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3476
    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3477
    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3478
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3479
    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 3480
    .local v0, "alpha":I
    iget v6, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3481
    invoke-virtual {p2, v5, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3482
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3483
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3486
    iget-object v6, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v6, p1, :cond_4

    iget-object v6, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    if-eqz v6, :cond_4

    .line 3487
    const/4 v4, 0x0

    .line 3488
    .local v4, "paintIt":Z
    const/4 v2, 0x0

    .line 3489
    iget v6, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 3491
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3492
    sget v2, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3493
    const/4 v4, 0x1

    .line 3501
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 3502
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3503
    invoke-virtual {p2, v5, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3505
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3525
    .end local v4    # "paintIt":Z
    :cond_4
    iget v6, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3526
    iget v6, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3527
    iget v6, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3528
    iget v6, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v6, v6

    sget v7, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3529
    return-object v5

    .line 3447
    .end local v0    # "alpha":I
    .end local v1    # "ceilHalfStroke":I
    .end local v2    # "color":I
    .end local v3    # "floorHalfStroke":I
    :cond_5
    iget v2, p1, Lcom/android/calendar/Event;->color:I

    .restart local v2    # "color":I
    goto/16 :goto_0

    .line 3452
    :pswitch_0
    iget-object v6, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    if-eq p1, v6, :cond_1

    .line 3453
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_2

    .line 3457
    :pswitch_1
    iget-object v6, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    if-eq p1, v6, :cond_0

    .line 3458
    invoke-static {v2}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v2

    goto/16 :goto_1

    .line 3494
    .restart local v0    # "alpha":I
    .restart local v1    # "ceilHalfStroke":I
    .restart local v3    # "floorHalfStroke":I
    .restart local v4    # "paintIt":Z
    :cond_6
    iget v6, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 3496
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3497
    sget v2, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3498
    const/4 v4, 0x1

    goto :goto_3

    .line 3450
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V
    .locals 9
    .param p1, "eventLayout"    # Landroid/text/StaticLayout;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "center"    # Z

    .prologue
    .line 3557
    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v8

    .line 3558
    .local v6, "width":I
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v7, v8

    .line 3561
    .local v0, "height":I
    if-eqz p1, :cond_0

    sget v7, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    if-ge v6, v7, :cond_1

    .line 3597
    :cond_0
    :goto_0
    return-void

    .line 3565
    :cond_1
    const/4 v5, 0x0

    .line 3566
    .local v5, "totalLineHeight":I
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 3567
    .local v3, "lineCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 3568
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 3569
    .local v2, "lineBottom":I
    if-gt v2, v0, :cond_2

    .line 3570
    move v5, v2

    .line 3567
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3576
    .end local v2    # "lineBottom":I
    :cond_2
    if-eqz v5, :cond_0

    iget v7, p2, Landroid/graphics/Rect;->top:I

    if-gt v7, p5, :cond_0

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    if-lt v7, p4, :cond_0

    .line 3581
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 3583
    if-eqz p6, :cond_3

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v5

    div-int/lit8 v4, v7, 0x2

    .line 3584
    .local v4, "padding":I
    :goto_2
    iget v7, p2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3585
    const/4 v7, 0x0

    iput v7, p2, Landroid/graphics/Rect;->left:I

    .line 3586
    iput v6, p2, Landroid/graphics/Rect;->right:I

    .line 3587
    const/4 v7, 0x0

    iput v7, p2, Landroid/graphics/Rect;->top:I

    .line 3588
    iput v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 3594
    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3595
    invoke-virtual {p1, p3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 3596
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 3583
    .end local v4    # "padding":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 28
    .param p1, "date"    # I
    .param p2, "dayIndex"    # I
    .param p3, "top"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 3091
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 3092
    .local v12, "eventTextPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 3093
    .local v4, "left":I
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/lit8 v6, v3, 0x1

    .line 3094
    .local v6, "cellWidth":I
    sget v23, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 3097
    .local v23, "cellHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    .line 3098
    .local v27, "selectionArea":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v5, v23, 0x1

    mul-int/2addr v3, v5

    add-int v3, v3, p3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3099
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v23

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3100
    move-object/from16 v0, v27

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 3101
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 3103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 3104
    .local v24, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 3105
    .local v26, "numEvents":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 3107
    .local v2, "geometry":Lcom/android/calendar/EventGeometry;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int v14, v3, v5

    .line 3109
    .local v14, "viewEndY":I
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v22

    .line 3110
    .local v22, "alpha":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3111
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 3112
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .local v7, "event":Lcom/android/calendar/Event;
    move/from16 v3, p1

    move/from16 v5, p3

    .line 3113
    invoke-virtual/range {v2 .. v7}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3111
    :cond_0
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 3118
    :cond_1
    iget v3, v7, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_0

    iget v3, v7, Lcom/android/calendar/Event;->top:F

    int-to-float v5, v14

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 3122
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, v27

    invoke-virtual {v2, v7, v0}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3127
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;

    move-result-object v13

    .line 3128
    .local v13, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/DayView;->setupTextRect(Landroid/graphics/Rect;)V

    .line 3131
    iget v3, v13, Landroid/graphics/Rect;->top:I

    if-gt v3, v14, :cond_0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v3, v5, :cond_0

    .line 3134
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move/from16 v10, v25

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v16

    .line 3136
    .local v16, "layout":Landroid/text/StaticLayout;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/lit8 v19, v3, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int v20, v3, v5

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v17, v13

    move-object/from16 v18, p4

    invoke-direct/range {v15 .. v21}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V

    goto/16 :goto_1

    .line 3139
    .end local v7    # "event":Lcom/android/calendar/Event;
    .end local v13    # "r":Landroid/graphics/Rect;
    .end local v16    # "layout":Landroid/text/StaticLayout;
    :cond_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3141
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_4

    .line 3143
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeNeighbors()V

    .line 3145
    :cond_4
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 15
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2596
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 2598
    .local v7, "savedStyle":Landroid/graphics/Paint$Style;
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v13}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v9, v13

    .line 2599
    .local v9, "stopX":F
    const/4 v12, 0x0

    .line 2600
    .local v12, "y":F
    sget v13, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    int-to-float v3, v13

    .line 2601
    .local v3, "deltaY":F
    const/4 v5, 0x0

    .line 2602
    .local v5, "linesIndex":I
    const/4 v8, 0x0

    .line 2603
    .local v8, "startY":F
    sget v13, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x18

    add-int/lit8 v13, v13, 0x1

    int-to-float v10, v13

    .line 2604
    .local v10, "stopY":F
    iget v13, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v11, v13

    .line 2607
    .local v11, "x":F
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2608
    const/high16 v13, 0x3f800000

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2609
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2610
    const/4 v12, 0x0

    .line 2611
    const/4 v5, 0x0

    .line 2612
    const/4 v4, 0x0

    .local v4, "hour":I
    move v6, v5

    .end local v5    # "linesIndex":I
    .local v6, "linesIndex":I
    :goto_0
    const/16 v13, 0x18

    if-gt v4, v13, :cond_0

    .line 2613
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    sget v14, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v14, v13, v6

    .line 2614
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    aput v12, v13, v5

    .line 2615
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    aput v9, v13, v6

    .line 2616
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    aput v12, v13, v5

    .line 2617
    add-float/2addr v12, v3

    .line 2612
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2619
    :cond_0
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    sget v14, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    if-eq v13, v14, :cond_2

    .line 2620
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v6, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2621
    const/4 v5, 0x0

    .line 2622
    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2626
    :goto_1
    const/4 v2, 0x0

    .local v2, "day":I
    :goto_2
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-gt v2, v13, :cond_1

    .line 2627
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v11, v13

    .line 2628
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    aput v11, v13, v5

    .line 2629
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    const/4 v14, 0x0

    aput v14, v13, v6

    .line 2630
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    aput v11, v13, v5

    .line 2631
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    aput v10, v13, v6

    .line 2626
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2633
    :cond_1
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v5, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2636
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2637
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2638
    return-void

    .end local v2    # "day":I
    .end local v5    # "linesIndex":I
    .restart local v6    # "linesIndex":I
    :cond_2
    move v5, v6

    .end local v6    # "linesIndex":I
    .restart local v5    # "linesIndex":I
    goto :goto_1
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2530
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2532
    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    add-int v2, v3, v4

    .line 2534
    .local v2, "y":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x18

    if-ge v0, v3, :cond_0

    .line 2535
    iget-object v3, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 2536
    .local v1, "time":Ljava/lang/String;
    sget v3, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-virtual {p2, v1, v3, v4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2537
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 2534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2539
    .end local v1    # "time":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2282
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v6

    .line 2283
    .local v6, "right":I
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v7, v0, -0x1

    .line 2285
    .local v7, "y":I
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2286
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2288
    sget v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2289
    const/high16 v0, 0x3f800000

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2290
    sget v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2291
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2292
    return-void
.end method

.method private drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2487
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v9, v3, v4

    .line 2489
    .local v9, "daynum":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2490
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2491
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2492
    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2494
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 2497
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2498
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2499
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2500
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2501
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2505
    sget v3, Lcom/android/calendar/DayView;->mNewEventHintColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2506
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 2507
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2508
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v15, v3, v4

    .line 2509
    .local v15, "width":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v15, 0x2

    add-int v12, v3, v4

    .line 2510
    .local v12, "midX":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int v13, v3, v4

    .line 2511
    .local v13, "midY":I
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget v4, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v11, v3, v4

    .line 2512
    .local v11, "length":I
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2513
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    sub-int/2addr v3, v11

    div-int/lit8 v14, v3, 0x2

    .line 2514
    .local v14, "verticalPadding":I
    sub-int v3, v15, v11

    div-int/lit8 v10, v3, 0x2

    .line 2515
    .local v10, "horizontalPadding":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    int-to-float v4, v3

    int-to-float v5, v13

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v10

    int-to-float v6, v3

    int-to-float v7, v13

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2517
    int-to-float v4, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    int-to-float v5, v3

    int-to-float v6, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v14

    int-to-float v7, v3

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2527
    .end local v9    # "daynum":I
    .end local v10    # "horizontalPadding":I
    .end local v11    # "length":I
    .end local v12    # "midX":I
    .end local v13    # "midY":I
    .end local v14    # "verticalPadding":I
    .end local v15    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 2519
    .restart local v9    # "daynum":I
    :cond_1
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2520
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2521
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2522
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mNewEventHintString:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    sget v6, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3539
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3541
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3542
    if-gtz p2, :cond_1

    .line 3543
    const-string v0, ""

    .line 3550
    :cond_0
    :goto_0
    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3545
    :cond_1
    if-le v1, p2, :cond_0

    .line 3546
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2268
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2269
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v1, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v0, v1, :cond_0

    .line 2271
    sget-boolean v0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    if-eqz v0, :cond_1

    .line 2272
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2273
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2279
    :cond_0
    :goto_0
    return-void

    .line 2275
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2276
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private eventClickCleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4820
    iget-object v0, p0, Lcom/android/calendar/DayView;->mClearClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4821
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSetClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4822
    iput-object v1, p0, Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;

    .line 4823
    iput-object v1, p0, Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;

    .line 4824
    return-void
.end method

.method private findSelectedEvent(II)V
    .locals 13

    .prologue
    .line 4620
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4621
    iget v4, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 4622
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 4623
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4624
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    .line 4625
    const/4 v3, 0x0

    .line 4626
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 4628
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4629
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v0, :cond_6

    .line 4631
    const v3, 0x461c4000

    .line 4632
    const/4 v2, 0x0

    .line 4633
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v6, v0

    .line 4634
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v1, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v7, v0, v1

    .line 4635
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 4636
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v4, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v1, v4, :cond_12

    .line 4638
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 4640
    :goto_0
    iget-object v8, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    .line 4641
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4642
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v9, :cond_11

    .line 4643
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 4644
    invoke-virtual {v0}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v4

    if-lt v4, v1, :cond_0

    move-object v0, v2

    move v2, v3

    .line 4642
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    move-object v2, v0

    goto :goto_1

    .line 4650
    :cond_0
    iget v4, v0, Lcom/android/calendar/Event;->startDay:I

    iget v10, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-gt v4, v10, :cond_10

    iget v4, v0, Lcom/android/calendar/Event;->endDay:I

    iget v10, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-lt v4, v10, :cond_10

    .line 4651
    sget-boolean v4, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v4, v4

    .line 4653
    :goto_3
    div-float v4, v6, v4

    .line 4654
    sget v10, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_1

    .line 4655
    sget v4, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v4, v4

    .line 4657
    :cond_1
    int-to-float v10, v7

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    .line 4658
    add-float/2addr v4, v10

    .line 4659
    int-to-float v11, p2

    cmpg-float v11, v10, v11

    if-gez v11, :cond_4

    int-to-float v11, p2

    cmpl-float v11, v4, v11

    if-lez v11, :cond_4

    .line 4662
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4679
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 4751
    :cond_2
    :goto_5
    return-void

    .line 4651
    :cond_3
    iget v4, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    int-to-float v4, v4

    goto :goto_3

    .line 4667
    :cond_4
    int-to-float v11, p2

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_5

    .line 4668
    int-to-float v4, p2

    sub-float v4, v10, v4

    .line 4672
    :goto_6
    cmpg-float v10, v4, v3

    if-gez v10, :cond_10

    move v2, v4

    .line 4674
    goto :goto_2

    .line 4670
    :cond_5
    int-to-float v10, p2

    sub-float v4, v10, v4

    goto :goto_6

    .line 4684
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int/2addr v0, v5

    add-int v9, p2, v0

    .line 4687
    iget-object v10, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 4688
    add-int/lit8 v0, p1, -0xa

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 4689
    add-int/lit8 v0, p1, 0xa

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 4690
    add-int/lit8 v0, v9, -0xa

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 4691
    add-int/lit8 v0, v9, 0xa

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 4693
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 4695
    const/4 v5, 0x0

    move v6, v5

    :goto_7
    if-ge v6, v8, :cond_9

    .line 4696
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Event;

    .line 4698
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 4695
    :cond_7
    :goto_8
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_7

    .line 4704
    :cond_8
    invoke-virtual {v0, v5, v10}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4705
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 4711
    :cond_9
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4712
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4713
    const/4 v4, 0x0

    .line 4714
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v1, v2

    int-to-float v3, v1

    .line 4715
    const/4 v1, 0x0

    move v5, v1

    :goto_9
    if-ge v5, v6, :cond_a

    .line 4716
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 4717
    int-to-float v2, p1

    int-to-float v7, v9

    invoke-virtual {v0, v2, v7, v1}, Lcom/android/calendar/EventGeometry;->pointToEvent(FFLcom/android/calendar/Event;)F

    move-result v2

    .line 4718
    cmpg-float v7, v2, v3

    if-gez v7, :cond_f

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 4715
    :goto_a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move v3, v1

    goto :goto_9

    .line 4723
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 4729
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 4730
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v0, Lcom/android/calendar/Event;->endDay:I

    .line 4731
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ge v0, v1, :cond_c

    .line 4732
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 4737
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v3, v0, 0x3c

    .line 4739
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    if-ge v0, v4, :cond_d

    .line 4740
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3c

    .line 4745
    :goto_c
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-ge v4, v3, :cond_e

    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v4, v1, :cond_e

    .line 4746
    invoke-direct {p0, v3}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    goto/16 :goto_5

    .line 4733
    :cond_c
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-le v0, v2, :cond_b

    .line 4734
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    goto :goto_b

    .line 4742
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v0, v0, 0x3c

    goto :goto_c

    .line 4747
    :cond_e
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v0, :cond_2

    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v1, v2, :cond_2

    .line 4748
    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    goto/16 :goto_5

    :cond_f
    move v1, v3

    move-object v2, v4

    goto :goto_a

    :cond_10
    move-object v0, v2

    move v2, v3

    goto/16 :goto_2

    :cond_11
    move-object v0, v2

    goto/16 :goto_4

    :cond_12
    move v1, v0

    goto/16 :goto_0
.end method

.method private getAllDayAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 3803
    iget v0, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v1

    .line 3805
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3808
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3809
    :goto_0
    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_1

    .line 3813
    :goto_1
    const-string v2, "animateDayHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3815
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3817
    new-instance v1, Lcom/android/calendar/DayView$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$7;-><init>(Lcom/android/calendar/DayView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3829
    return-object v0

    .line 3808
    :cond_0
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto :goto_0

    .line 3809
    :cond_1
    sget v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    sub-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method

.method private getAllDayEventAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 3779
    iget v0, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v1

    .line 3781
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3784
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int/2addr v0, v1

    .line 3785
    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 3786
    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_0

    .line 3789
    :goto_0
    if-ne v1, v0, :cond_1

    .line 3790
    const/4 v0, 0x0

    .line 3797
    :goto_1
    return-object v0

    .line 3786
    :cond_0
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v0, v0

    goto :goto_0

    .line 3794
    :cond_1
    const-string v2, "animateDayEventHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3796
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1
.end method

.method private getAverageY(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 4061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 4062
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4063
    .local v1, "focusY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4064
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 4063
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4066
    :cond_0
    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 4067
    return v1
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 2759
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2760
    .local v0, "box":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2761
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2762
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2763
    .local v1, "daynum":I
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2764
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2765
    return-object v0
.end method

.method private static getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 4480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4485
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/calendar/Event;->id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const-string v4, "calendar_id"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4491
    if-nez v1, :cond_0

    move v0, v10

    .line 4529
    :goto_0
    return v0

    .line 4495
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 4496
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 4497
    goto :goto_0

    .line 4500
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4501
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4502
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4504
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 4505
    const-string v1, "_id=%d"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4506
    sget-object v6, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v4, v0

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4509
    if-eqz v1, :cond_5

    .line 4510
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4511
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4512
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4513
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4516
    :goto_1
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_2

    move v0, v10

    .line 4517
    goto :goto_0

    .line 4520
    :cond_2
    iget-boolean v0, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v0, :cond_3

    move v0, v11

    .line 4521
    goto :goto_0

    .line 4524
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v11

    .line 4526
    goto :goto_0

    :cond_4
    move v0, v12

    .line 4529
    goto :goto_0

    :cond_5
    move v0, v10

    goto :goto_1
.end method

.method private getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;
    .locals 13
    .param p1, "layouts"    # [Landroid/text/StaticLayout;
    .param p2, "i"    # I
    .param p3, "event"    # Lcom/android/calendar/Event;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2807
    if-ltz p2, :cond_0

    array-length v3, p1

    if-lt p2, v3, :cond_1

    .line 2808
    :cond_0
    const/4 v1, 0x0

    .line 2851
    :goto_0
    return-object v1

    .line 2811
    :cond_1
    aget-object v1, p1, p2

    .line 2815
    .local v1, "layout":Landroid/text/StaticLayout;
    if-eqz v1, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 2816
    :cond_2
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2817
    .local v2, "bob":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 2819
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f3

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2820
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2821
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2823
    :cond_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 2824
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    rsub-int v4, v4, 0x1f4

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2828
    :cond_4
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    packed-switch v3, :pswitch_data_0

    .line 2840
    sget v3, Lcom/android/calendar/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2845
    :goto_1
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1    # "layout":Landroid/text/StaticLayout;
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    new-instance v5, Landroid/text/TextPaint;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 2848
    .restart local v1    # "layout":Landroid/text/StaticLayout;
    aput-object v1, p1, p2

    .line 2850
    .end local v2    # "bob":Landroid/text/SpannableStringBuilder;
    :cond_5
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 2830
    .restart local v2    # "bob":Landroid/text/SpannableStringBuilder;
    :pswitch_0
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/calendar/Event;->color:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 2833
    :pswitch_1
    sget v3, Lcom/android/calendar/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2834
    const/16 v3, 0xc0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 2828
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private incrementSkipCount([III)V
    .locals 2
    .param p1, "counts"    # [I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 3000
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v1, p1

    if-le p3, v1, :cond_1

    .line 3006
    :cond_0
    return-void

    .line 3003
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 3004
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 3003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0xe

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 789
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 793
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 794
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 795
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 797
    invoke-static {p1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 799
    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 801
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 802
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    .line 804
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 805
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    .line 806
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 807
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mFutureBgColorRes:I

    .line 808
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mBgColor:I

    .line 809
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    .line 810
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    .line 811
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    .line 813
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    .line 815
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    .line 816
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f080000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 817
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mClickedColor:I

    .line 818
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mEventTextColor:I

    .line 819
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    .line 821
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 822
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 823
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 825
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 826
    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 827
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 828
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 829
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 831
    iget-object v2, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 832
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 836
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    .line 839
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move v0, v1

    .line 841
    :goto_0
    const/4 v3, 0x7

    if-gt v0, v3, :cond_1

    .line 842
    add-int/lit8 v3, v0, -0x1

    .line 844
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    const/16 v5, 0x14

    invoke-static {v0, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 846
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x7

    iget-object v6, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    aget-object v6, v6, v3

    aput-object v6, v4, v5

    .line 848
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-static {v0, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 852
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 853
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v5, 0x32

    invoke-static {v0, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 856
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x7

    iget-object v6, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v3, v6, v3

    aput-object v3, v4, v5

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 861
    :cond_1
    sget v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 862
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 863
    new-array v0, v8, [Ljava/lang/String;

    const-string v3, " 28"

    aput-object v3, v0, v7

    const-string v3, " 30"

    aput-object v3, v0, v1

    .line 864
    invoke-direct {p0, v7, v0, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 865
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 866
    iget v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget-object v3, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    invoke-direct {p0, v7, v3, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 868
    sget v0, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 869
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 870
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 872
    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 873
    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 874
    new-array v0, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    aput-object v3, v0, v7

    iget-object v3, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 875
    sget v3, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 876
    sget v3, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    iget v4, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    invoke-direct {p0, v4, v0, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    sget v2, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 878
    sget v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 881
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 882
    const v2, 0x7f040011

    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    .line 883
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    .line 887
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 889
    const v2, 0x103000b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 890
    new-array v1, v1, [I

    const v2, 0x1010054

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 892
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 893
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 896
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 898
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 900
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 902
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 904
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    .line 905
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    .line 911
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x19

    .line 913
    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLines:[F

    .line 914
    return-void
.end method

.method private initAccessibilityVariables()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 946
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    .line 947
    invoke-direct {p0}, Lcom/android/calendar/DayView;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    .line 948
    return-void

    .line 946
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFirstHour()V
    .locals 2

    .prologue
    .line 1916
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1917
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-gez v0, :cond_1

    .line 1918
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1922
    :cond_0
    :goto_0
    return-void

    .line 1919
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 1920
    iget v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    goto :goto_0
.end method

.method private initNextView(I)Z
    .locals 7
    .param p1, "deltaX"    # I

    .prologue
    .line 4136
    iget-object v3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayView;

    .line 4137
    .local v2, "view":Lcom/android/calendar/DayView;
    iget-object v0, v2, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 4138
    .local v0, "date":Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 4140
    if-lez p1, :cond_0

    .line 4141
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 4142
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 4143
    const/4 v1, 0x0

    .line 4149
    .local v1, "switchForward":Z
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 4150
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 4151
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 4152
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 4153
    return v1

    .line 4145
    .end local v1    # "switchForward":Z
    :cond_0
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 4146
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 4147
    const/4 v1, 0x1

    .restart local v1    # "switchForward":Z
    goto :goto_0
.end method

.method private initView(Lcom/android/calendar/DayView;)V
    .locals 3
    .param p1, "view"    # Lcom/android/calendar/DayView;

    .prologue
    const/4 v2, 0x0

    .line 1370
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    invoke-direct {p1, v0}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1371
    iget-object v0, p1, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1372
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1373
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1374
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1375
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1376
    invoke-virtual {p1}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 1378
    invoke-direct {p1, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1379
    iput-object v2, p1, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1380
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 1381
    iget-object v0, p1, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1382
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1390
    :goto_0
    invoke-direct {p1}, Lcom/android/calendar/DayView;->recalc()V

    .line 1391
    return-void

    .line 1384
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_0
.end method

.method private isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 1690
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalc()V
    .locals 4

    .prologue
    .line 1195
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 1196
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    .line 1199
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1200
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 1201
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    .line 1203
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    .line 1204
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    .line 1205
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    .line 1206
    return-void
.end method

.method private remeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1244
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v2, 0x40800000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1245
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    div-int/lit8 v2, p2, 0x6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1246
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1248
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v0, v0

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move v0, v1

    .line 1253
    :goto_0
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v0, v2, :cond_0

    .line 1254
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    const/16 v3, 0x19

    aput v3, v2, v0

    .line 1255
    iget-object v2, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    aput-boolean v1, v2, v0

    .line 1253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1258
    :cond_0
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 1261
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x18

    sget v3, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 1262
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v3, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v0, v3, :cond_1

    .line 1263
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 1267
    :cond_1
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1269
    if-lez v2, :cond_c

    .line 1270
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v0, p2, v0

    sget v3, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v3

    .line 1273
    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1274
    sget v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 1302
    :cond_2
    :goto_1
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v2, v0

    sget v3, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1306
    :goto_2
    iput v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    .line 1308
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 1311
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1312
    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1314
    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sget v4, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1316
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sget v3, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1317
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1320
    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 1321
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    .line 1323
    sget v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    const v2, 0x476a6000

    mul-float/2addr v0, v2

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x42700000

    div-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-long v2, v0

    .line 1325
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;J)V

    .line 1328
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1329
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1330
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mViewStartY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxViewStartY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_3
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v0, v2, :cond_4

    .line 1334
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1335
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 1338
    :cond_4
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1339
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initFirstHour()V

    .line 1340
    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1347
    :cond_5
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_6

    .line 1348
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1350
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1352
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    .line 1354
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v1, :cond_7

    iget-wide v1, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v3, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v3, v3, Lcom/android/calendar/Event;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 1355
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1357
    :cond_7
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1358
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1359
    return-void

    .line 1275
    :cond_8
    iget v3, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v2, v3, :cond_9

    .line 1278
    sget v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    mul-int/2addr v0, v2

    .line 1279
    sget v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v0, v2, :cond_2

    .line 1280
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    goto/16 :goto_1

    .line 1285
    :cond_9
    iget v3, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v3, :cond_a

    .line 1289
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    sget v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_1

    .line 1292
    :cond_a
    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1294
    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_b

    sget v3, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v2, v3, :cond_b

    .line 1295
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    int-to-float v0, v0

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto/16 :goto_1

    .line 1297
    :cond_b
    if-gt v2, v0, :cond_2

    move v0, v2

    goto/16 :goto_1

    .line 1304
    :cond_c
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v0, v1

    goto/16 :goto_2
.end method

.method private resetSelectedHour()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1902
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1903
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1904
    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1905
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1906
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1913
    :cond_0
    :goto_0
    return-void

    .line 1907
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_0

    .line 1908
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1909
    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1910
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1911
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_0
.end method

.method private saveSelectionPosition(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2753
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2754
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2755
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2756
    return-void
.end method

.method private sendAccessibilityEventAsNeeded(Z)V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1694
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_1

    .line 1762
    :cond_0
    :goto_0
    return-void

    .line 1697
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mLastSelectionDayForAccessibility:I

    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDayForAccessibility:I

    if-eq v0, v1, :cond_9

    move v1, v2

    .line 1698
    :goto_1
    iget v0, p0, Lcom/android/calendar/DayView;->mLastSelectionHourForAccessibility:I

    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHourForAccessibility:I

    if-eq v0, v4, :cond_a

    move v6, v2

    .line 1699
    :goto_2
    if-nez v1, :cond_2

    if-nez v6, :cond_2

    iget-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEventForAccessibility:Lcom/android/calendar/Event;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    if-eq v0, v4, :cond_0

    .line 1701
    :cond_2
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDayForAccessibility:I

    iput v0, p0, Lcom/android/calendar/DayView;->mLastSelectionDayForAccessibility:I

    .line 1702
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHourForAccessibility:I

    iput v0, p0, Lcom/android/calendar/DayView;->mLastSelectionHourForAccessibility:I

    .line 1703
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEventForAccessibility:Lcom/android/calendar/Event;

    .line 1705
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1708
    if-eqz v1, :cond_3

    .line 1709
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeForAccessibility()Landroid/text/format/Time;

    move-result-object v0

    const-string v4, "%A "

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    :cond_3
    if-eqz v6, :cond_4

    .line 1712
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeForAccessibility()Landroid/text/format/Time;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v0, :cond_b

    const-string v0, "%k"

    :goto_3
    invoke-virtual {v4, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    :cond_4
    if-nez v1, :cond_5

    if-eqz v6, :cond_6

    .line 1715
    :cond_5
    const-string v0, ". "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    :cond_6
    if-eqz p1, :cond_e

    .line 1719
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1720
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00a6

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    .line 1724
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1725
    if-lez v8, :cond_10

    .line 1726
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    if-nez v0, :cond_c

    .line 1729
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v2

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 1730
    if-le v8, v2, :cond_8

    .line 1732
    sget-object v5, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1733
    sget-object v10, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    iget-object v11, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    new-array v12, v13, [Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v2

    invoke-virtual {v10, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1734
    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    .line 1736
    :cond_8
    invoke-direct {p0, v7, v0}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    goto :goto_4

    :cond_9
    move v1, v3

    .line 1697
    goto/16 :goto_1

    :cond_a
    move v6, v3

    .line 1698
    goto/16 :goto_2

    .line 1712
    :cond_b
    const-string v0, "%l%p"

    goto :goto_3

    .line 1739
    :cond_c
    if-le v8, v2, :cond_d

    .line 1741
    sget-object v0, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1742
    sget-object v0, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    new-array v5, v13, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1744
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    invoke-direct {p0, v7, v0}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    .line 1753
    :cond_e
    :goto_5
    if-nez v1, :cond_f

    if-nez v6, :cond_f

    if-eqz p1, :cond_0

    .line 1754
    :cond_f
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1756
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1757
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1758
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 1759
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0

    .line 1749
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCreateNewEventString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private setSelectedDay(I)V
    .locals 0
    .param p1, "d"    # I

    .prologue
    .line 4836
    iput p1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4837
    iput p1, p0, Lcom/android/calendar/DayView;->mSelectionDayForAccessibility:I

    .line 4838
    return-void
.end method

.method private setSelectedEvent(Lcom/android/calendar/Event;)V
    .locals 0
    .param p1, "e"    # Lcom/android/calendar/Event;

    .prologue
    .line 4827
    iput-object p1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4828
    iput-object p1, p0, Lcom/android/calendar/DayView;->mSelectedEventForAccessibility:Lcom/android/calendar/Event;

    .line 4829
    return-void
.end method

.method private setSelectedHour(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 4832
    iput p1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4833
    iput p1, p0, Lcom/android/calendar/DayView;->mSelectionHourForAccessibility:I

    .line 4834
    return-void
.end method

.method private setSelectionFromPosition(IIZ)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "keepOldSelection"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4545
    const/4 v4, 0x0

    .line 4546
    .local v4, "savedEvent":Lcom/android/calendar/Event;
    const/4 v3, 0x0

    .line 4547
    .local v3, "savedDay":I
    const/4 v5, 0x0

    .line 4548
    .local v5, "savedHour":I
    const/4 v2, 0x0

    .line 4549
    .local v2, "savedAllDay":Z
    if-eqz p3, :cond_0

    .line 4552
    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4553
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4554
    iget v5, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4555
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 4557
    :cond_0
    iget v8, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    if-ge p1, v8, :cond_1

    .line 4558
    iget p1, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 4561
    :cond_1
    iget v8, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v8, p1, v8

    iget v9, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v9, v9, 0x1

    div-int v1, v8, v9

    .line 4562
    .local v1, "day":I
    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-lt v1, v8, :cond_2

    .line 4563
    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v1, v8, -0x1

    .line 4565
    :cond_2
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    add-int/2addr v1, v8

    .line 4566
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 4568
    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-ge p2, v8, :cond_3

    .line 4569
    invoke-direct {p0, v6}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 4616
    :goto_0
    return v6

    .line 4573
    :cond_3
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 4575
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    if-ge p2, v8, :cond_5

    .line 4576
    iput-boolean v7, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 4591
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->findSelectedEvent(II)V

    .line 4607
    invoke-direct {p0, v7}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 4610
    if-eqz p3, :cond_4

    .line 4611
    iput-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4612
    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4613
    iput v5, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4614
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    :cond_4
    move v6, v7

    .line 4616
    goto :goto_0

    .line 4579
    :cond_5
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v0, p2, v8

    .line 4581
    .local v0, "adjustedY":I
    iget v8, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-ge v0, v8, :cond_6

    .line 4582
    iget v8, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 4588
    :goto_2
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_1

    .line 4584
    :cond_6
    iget v8, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v9, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int v9, v0, v9

    sget v10, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v10, v10, 0x1

    div-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    goto :goto_2
.end method

.method private setupAllDayTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2786
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 2787
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2788
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2800
    :cond_1
    :goto_0
    return-void

    .line 2792
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 2793
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2794
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2796
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 2797
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2798
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private setupHourTextPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 2542
    sget v0, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2543
    sget v0, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2544
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2545
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2546
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2547
    return-void
.end method

.method private setupTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2769
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 2770
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2771
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2783
    :cond_1
    :goto_0
    return-void

    .line 2775
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 2776
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2777
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2779
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 2780
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2781
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private switchViews(ZFFF)Landroid/view/View;
    .locals 18

    .prologue
    .line 1820
    sub-float v3, p3, p2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 1821
    sget-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1822
    sget-object v3, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchViews("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") O:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Dist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v4, v3, p3

    .line 1826
    const/high16 v3, 0x3f800000

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    .line 1827
    const/high16 v4, 0x3f800000

    .line 1832
    :cond_1
    if-eqz p1, :cond_2

    .line 1833
    const/high16 v3, 0x3f800000

    sub-float v5, v3, v4

    .line 1834
    const/4 v7, 0x0

    .line 1835
    neg-float v4, v4

    .line 1836
    const/high16 v3, -0x40800000

    move v13, v3

    move v14, v4

    .line 1844
    :goto_0
    new-instance v16, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1846
    if-eqz p1, :cond_3

    .line 1847
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1851
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 1855
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    .line 1856
    new-instance v3, Landroid/text/format/Time;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1857
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    move-object v15, v3

    .line 1860
    :goto_2
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1861
    move-object/from16 v0, v17

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1865
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1871
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, v14

    move v8, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1877
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, p3, v5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/calendar/DayView;->calculateDuration(FFF)J

    move-result-wide v5

    .line 1878
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1881
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1882
    new-instance v5, Lcom/android/calendar/DayView$GotoBroadcaster;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lcom/android/calendar/DayView$GotoBroadcaster;-><init>(Lcom/android/calendar/DayView;Landroid/text/format/Time;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, v3}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v4}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/DayView;

    .line 1887
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->cleanup()V

    .line 1888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->showNext()V

    .line 1889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/DayView;

    .line 1890
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v15, v4, v5}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 1891
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1892
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 1893
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 1894
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 1896
    return-object v3

    .line 1838
    :cond_2
    const/high16 v3, 0x3f800000

    sub-float v5, v4, v3

    .line 1839
    const/4 v7, 0x0

    .line 1841
    const/high16 v3, 0x3f800000

    move v13, v3

    move v14, v4

    goto/16 :goto_0

    .line 1849
    :cond_3
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_1

    :cond_4
    move-object/from16 v15, v16

    goto/16 :goto_2
.end method

.method private switchViews(Z)V
    .locals 31
    .param p1, "trackBallSelection"    # Z

    .prologue
    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v30, v0

    .line 1403
    .local v30, "selectedEvent":Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1404
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1405
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 1410
    if-eqz p1, :cond_4

    .line 1411
    if-nez v30, :cond_2

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 1414
    .local v8, "startMillis":J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 1415
    .local v10, "endMillis":J
    const-wide/16 v14, 0x0

    .line 1416
    .local v14, "extraLong":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_0

    .line 1417
    const-wide/16 v14, 0x10

    .line 1419
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v17}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 1466
    .end local v8    # "startMillis":J
    .end local v10    # "endMillis":J
    .end local v14    # "extraLong":J
    :cond_1
    :goto_0
    return-void

    .line 1422
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_3

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1426
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_0

    .line 1434
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1435
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_5

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1438
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_0

    .line 1447
    :cond_6
    if-nez v30, :cond_8

    .line 1449
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 1450
    .restart local v8    # "startMillis":J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 1451
    .restart local v10    # "endMillis":J
    const-wide/16 v14, 0x0

    .line 1452
    .restart local v14    # "extraLong":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_7

    .line 1453
    const-wide/16 v14, 0x10

    .line 1455
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v17}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    goto/16 :goto_0

    .line 1458
    .end local v8    # "startMillis":J
    .end local v10    # "endMillis":J
    .end local v14    # "extraLong":J
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_9

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1461
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_0
.end method

.method private updateEventDetails()V
    .locals 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 3627
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3629
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3675
    :cond_1
    :goto_0
    return-void

    .line 3632
    :cond_2
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v2, v2, Lcom/android/calendar/Event;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3636
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 3639
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3641
    iget-object v8, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3642
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f10001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3643
    iget-object v1, v8, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3645
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f100017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3646
    iget-boolean v1, v8, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v1, :cond_4

    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3648
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f10001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3649
    iget-boolean v1, v8, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v1, :cond_5

    move v1, v6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3652
    iget-boolean v0, v8, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_6

    .line 3653
    const v0, 0x82012

    .line 3660
    :goto_3
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3661
    or-int/lit16 v5, v0, 0x80

    .line 3663
    :goto_4
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, v8, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v8, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 3665
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v2, 0x7f10002f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3666
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3668
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f100015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3669
    iget-object v1, v8, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 3670
    if-eqz v1, :cond_7

    :goto_5
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3671
    if-nez v1, :cond_3

    iget-object v1, v8, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3673
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    const/4 v3, 0x5

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3674
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    move v1, v7

    .line 3646
    goto :goto_1

    :cond_5
    move v1, v7

    .line 3649
    goto :goto_2

    .line 3656
    :cond_6
    const v0, 0x81413

    goto :goto_3

    :cond_7
    move v7, v6

    .line 3670
    goto :goto_5

    :cond_8
    move v5, v0

    goto :goto_4
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4799
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4800
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4802
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 4803
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 4804
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4805
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4806
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4809
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "preferences_default_cell_height"

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4812
    invoke-direct {p0}, Lcom/android/calendar/DayView;->eventClickCleanup()V

    .line 4814
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4816
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4817
    return-void
.end method

.method clearCachedEvents()V
    .locals 2

    .prologue
    .line 1991
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 1992
    return-void
.end method

.method public compareToVisibleTimeRange(Landroid/text/format/Time;)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1150
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->hour:I

    .line 1151
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v2, Landroid/text/format/Time;->minute:I

    .line 1152
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v2, Landroid/text/format/Time;->second:I

    .line 1154
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v2, Landroid/text/format/Time;->hour:I

    .line 1155
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v2, Landroid/text/format/Time;->minute:I

    .line 1156
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v2, Landroid/text/format/Time;->second:I

    .line 1158
    sget-boolean v2, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1159
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Diff  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    .line 1165
    if-lez v2, :cond_4

    .line 1167
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    iget v7, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/text/format/Time;->monthDay:I

    .line 1168
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1169
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    .line 1171
    sget-boolean v6, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_1
    iget-object v6, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v6, Landroid/text/format/Time;->monthDay:I

    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/text/format/Time;->monthDay:I

    .line 1174
    iget-object v6, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1175
    if-gez v2, :cond_3

    .line 1184
    :goto_0
    sget-boolean v1, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Diff: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v3, v1, Landroid/text/format/Time;->hour:I

    .line 1187
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v4, v1, Landroid/text/format/Time;->minute:I

    .line 1188
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v5, v1, Landroid/text/format/Time;->second:I

    .line 1189
    return v0

    .line 1178
    :cond_3
    if-nez v2, :cond_4

    move v0, v1

    .line 1180
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000

    .line 3010
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    .line 3011
    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 3013
    iget-object v2, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 3014
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 3015
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 3016
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3017
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3018
    sget v3, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3019
    sget v3, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3020
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3021
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3022
    invoke-virtual {p1, v2, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3023
    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3024
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3025
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3026
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 3027
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, v3

    .line 3028
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    sget v4, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 3029
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3030
    return-void
.end method

.method public getEventsAlpha()I
    .locals 1

    .prologue
    .line 2089
    iget v0, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    return v0
.end method

.method getFirstVisibleHour()I
    .locals 1

    .prologue
    .line 1000
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    return v0
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 967
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 968
    .local v0, "time":Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 969
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 974
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 975
    return-object v0
.end method

.method getSelectedTimeForAccessibility()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 979
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 980
    .local v0, "time":Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDayForAccessibility:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 981
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHourForAccessibility:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 986
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 987
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 956
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 957
    .local v0, "time":Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 958
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 963
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public handleOnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 928
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initAccessibilityVariables()V

    .line 929
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "preferences_tardis_1"

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    sput v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    .line 934
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    .line 935
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    .line 936
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 937
    iput v2, p0, Lcom/android/calendar/DayView;->mLastSelectionDayForAccessibility:I

    .line 938
    iput v2, p0, Lcom/android/calendar/DayView;->mLastSelectionHourForAccessibility:I

    .line 939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEventForAccessibility:Lcom/android/calendar/Event;

    .line 940
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 941
    return-void

    .line 932
    :cond_0
    sget v0, Lcom/android/calendar/DayView;->mFutureBgColorRes:I

    sput v0, Lcom/android/calendar/DayView;->mFutureBgColor:I

    goto :goto_0

    .line 935
    :cond_1
    sget-object v0, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    goto :goto_1
.end method

.method public initAllDayHeights()V
    .locals 3

    .prologue
    .line 3763
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v1, v2, :cond_0

    .line 3774
    :goto_0
    return-void

    .line 3766
    :cond_0
    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_1

    .line 3767
    iget v1, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v0, v1, v2

    .line 3768
    .local v0, "maxADHeight":I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3770
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_0

    .line 3772
    .end local v0    # "maxADHeight":I
    :cond_1
    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 783
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    .line 784
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 923
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 925
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11

    .prologue
    const/16 v10, 0x6e

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4336
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eq v0, v8, :cond_0

    .line 4337
    iput v8, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4338
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4341
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 4342
    const/16 v5, 0x1403

    .line 4345
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 4346
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 4348
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4349
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v1, v7, :cond_4

    .line 4354
    if-lt v0, v7, :cond_3

    .line 4355
    const/4 v0, 0x5

    const v1, 0x7f0c0013

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4356
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4357
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4359
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v0

    .line 4360
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4361
    const/4 v1, 0x7

    const v2, 0x7f0c0015

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4362
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4363
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4364
    const/16 v2, 0x65

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4367
    :cond_1
    if-lt v0, v7, :cond_2

    .line 4368
    const/16 v0, 0x8

    const v1, 0x7f0c0016

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4369
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4370
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4373
    :cond_2
    const v0, 0x7f0c0014

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4374
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4375
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4376
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4421
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4422
    return-void

    .line 4380
    :cond_3
    const v0, 0x7f0c0014

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4381
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4382
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4383
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 4390
    :cond_4
    if-lt v0, v7, :cond_6

    .line 4391
    const/4 v0, 0x5

    const v1, 0x7f0c0013

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4392
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4393
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4395
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v0

    .line 4396
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 4397
    const/4 v1, 0x7

    const v2, 0x7f0c0015

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4398
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4399
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4400
    const/16 v2, 0x65

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4403
    :cond_5
    if-lt v0, v7, :cond_6

    .line 4404
    const/16 v0, 0x8

    const v1, 0x7f0c0016

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4405
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4406
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4410
    :cond_6
    const v0, 0x7f0c0014

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4411
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4412
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4413
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4415
    const v0, 0x7f0c000e

    invoke-interface {p1, v6, v8, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4416
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4417
    const v1, 0x108003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4418
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 4856
    iget-object v0, p0, Lcom/android/calendar/DayView;->mNewEventAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4857
    iget-object v0, p0, Lcom/android/calendar/DayView;->mNewEventAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mNewEventAlert:Landroid/app/AlertDialog;

    .line 4861
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 4862
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4863
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2168
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    if-eqz v0, :cond_0

    .line 2169
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 2170
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 2172
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2174
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    neg-int v0, v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    .line 2176
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2178
    iget-object v0, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 2179
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2180
    iget v1, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2181
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2182
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2184
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2186
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDraw(Landroid/graphics/Canvas;)V

    .line 2188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2190
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 2192
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v0, :cond_6

    .line 2193
    iget v0, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v0, v0

    move v1, v0

    .line 2200
    :goto_0
    neg-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2201
    iget-object v0, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 2204
    iput v3, v0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 2206
    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2208
    neg-float v0, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2217
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 2218
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    if-eqz v0, :cond_1

    .line 2219
    invoke-direct {p0}, Lcom/android/calendar/DayView;->updateEventDetails()V

    .line 2220
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 2222
    :cond_1
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 2225
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2226
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v0, :cond_2

    .line 2227
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2229
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2230
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2232
    :cond_3
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v0, :cond_4

    .line 2233
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2236
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2237
    const/high16 v0, 0x43340000

    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2238
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2242
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2243
    return-void

    .line 2195
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    move v1, v0

    goto :goto_0

    .line 2213
    :cond_7
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v0, v0

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1660
    sget-boolean v1, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1662
    packed-switch v1, :pswitch_data_0

    .line 1673
    :pswitch_0
    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown hover event action. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    if-nez v1, :cond_2

    .line 1680
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1686
    :cond_1
    :goto_1
    return v0

    .line 1664
    :pswitch_1
    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_HOVER_ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1667
    :pswitch_2
    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_HOVER_MOVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1670
    :pswitch_3
    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_HOVER_EXIT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1682
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 1683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/calendar/DayView;->setSelectionFromPosition(IIZ)Z

    .line 1684
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 1662
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 22
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1512
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-nez v2, :cond_2

    .line 1513
    const/16 v2, 0x42

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x16

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x15

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x13

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 1518
    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1520
    const/4 v2, 0x1

    .line 1654
    :goto_0
    return v2

    .line 1521
    :cond_1
    const/16 v2, 0x17

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 1524
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1525
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1526
    const/4 v2, 0x1

    goto :goto_0

    .line 1530
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1531
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v20, v0

    .line 1535
    .local v20, "selectionDay":I
    sparse-switch p1, :sswitch_data_0

    .line 1616
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1538
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v19, v0

    .line 1539
    .local v19, "selectedEvent":Lcom/android/calendar/Event;
    if-nez v19, :cond_3

    .line 1540
    const/4 v2, 0x0

    goto :goto_0

    .line 1542
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1543
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1545
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 1546
    .local v3, "begin":J
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 1547
    .local v5, "end":J
    move-object/from16 v0, v19

    iget-wide v7, v0, Lcom/android/calendar/Event;->id:J

    .line 1548
    .local v7, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v9, -0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 1549
    const/4 v2, 0x1

    goto :goto_0

    .line 1551
    .end local v3    # "begin":J
    .end local v5    # "end":J
    .end local v7    # "id":J
    .end local v19    # "selectedEvent":Lcom/android/calendar/Event;
    :sswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 1552
    const/4 v2, 0x1

    goto :goto_0

    .line 1554
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1556
    const/4 v2, 0x1

    goto :goto_0

    .line 1558
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1560
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_5

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1563
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_6

    .line 1564
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1565
    add-int/lit8 v20, v20, -0x1

    .line 1567
    :cond_6
    const/16 v18, 0x1

    .line 1619
    .local v18, "redraw":Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move/from16 v0, v20

    if-lt v0, v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    move/from16 v0, v20

    if-le v0, v2, :cond_10

    .line 1620
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/DayView;

    .line 1621
    .local v21, "view":Lcom/android/calendar/DayView;
    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 1622
    .local v13, "date":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1623
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_f

    .line 1624
    iget v2, v13, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v2, v9

    iput v2, v13, Landroid/text/format/Time;->monthDay:I

    .line 1628
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1629
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 1631
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 1633
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v13}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1634
    .local v5, "end":Landroid/text/format/Time;
    iget v2, v5, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v2, v9

    iput v2, v5, Landroid/text/format/Time;->monthDay:I

    .line 1635
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v11, 0x20

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v14, v5

    invoke-virtual/range {v9 .. v17}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1636
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1571
    .end local v5    # "end":Landroid/text/format/Time;
    .end local v13    # "date":Landroid/text/format/Time;
    .end local v18    # "redraw":Z
    .end local v21    # "view":Lcom/android/calendar/DayView;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_8

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1574
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_9

    .line 1575
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1576
    add-int/lit8 v20, v20, 0x1

    .line 1578
    :cond_9
    const/16 v18, 0x1

    .line 1579
    .restart local v18    # "redraw":Z
    goto/16 :goto_1

    .line 1582
    .end local v18    # "redraw":Z
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_a

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1585
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_b

    .line 1586
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1587
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v2, :cond_b

    .line 1588
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1589
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1591
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1594
    :cond_b
    const/16 v18, 0x1

    .line 1595
    .restart local v18    # "redraw":Z
    goto/16 :goto_1

    .line 1598
    .end local v18    # "redraw":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_c

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1601
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_d

    .line 1602
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1603
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_e

    .line 1604
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1612
    :cond_d
    :goto_3
    const/16 v18, 0x1

    .line 1613
    .restart local v18    # "redraw":Z
    goto/16 :goto_1

    .line 1606
    .end local v18    # "redraw":Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1607
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1609
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_3

    .line 1626
    .restart local v13    # "date":Landroid/text/format/Time;
    .restart local v18    # "redraw":Z
    .restart local v21    # "view":Lcom/android/calendar/DayView;
    :cond_f
    iget v2, v13, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v2, v9

    iput v2, v13, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_2

    .line 1638
    .end local v13    # "date":Landroid/text/format/Time;
    .end local v21    # "view":Lcom/android/calendar/DayView;
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_11

    .line 1639
    new-instance v13, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v13, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1640
    .restart local v13    # "date":Landroid/text/format/Time;
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1641
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v2, v13, Landroid/text/format/Time;->hour:I

    .line 1642
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v11, 0x20

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v14, v13

    invoke-virtual/range {v9 .. v17}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1644
    .end local v13    # "date":Landroid/text/format/Time;
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1646
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1647
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 1649
    if-eqz v18, :cond_12

    .line 1650
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1651
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1654
    :cond_12
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1535
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 1470
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1471
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1473
    .local v0, "duration":J
    packed-switch p1, :pswitch_data_0

    .line 1507
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1475
    :pswitch_0
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v2, :cond_0

    .line 1480
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-ne v2, v6, :cond_1

    .line 1485
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1486
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1491
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1492
    invoke-direct {p0, v6}, Lcom/android/calendar/DayView;->switchViews(Z)V

    goto :goto_0

    .line 1494
    :cond_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1495
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1496
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    goto :goto_0

    .line 1473
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 4945
    const/4 v5, 0x2

    .line 4946
    .local v5, "flags":I
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 4947
    .local v1, "time":J
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v0, :cond_0

    .line 4948
    or-int/lit8 v5, v5, 0x1

    .line 4950
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4951
    or-int/lit16 v5, v5, 0x80

    .line 4953
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 4956
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/calendar/DayView$8;

    invoke-direct {v4, p0}, Lcom/android/calendar/DayView$8;-><init>(Lcom/android/calendar/DayView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 4971
    .local v6, "alertDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mNewEventAlert:Landroid/app/AlertDialog;

    .line 4972
    iget-object v0, p0, Lcom/android/calendar/DayView;->mNewEventAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4973
    iget-object v0, p0, Lcom/android/calendar/DayView;->mNewEventAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4975
    return v7
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4177
    sget v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4179
    iget v1, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4181
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v2, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v1, v2, :cond_3

    .line 4184
    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4185
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4186
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 4193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int/2addr v0, v1

    .line 4194
    iget v1, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4195
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 4197
    sget-boolean v1, Lcom/android/calendar/DayView;->DEBUG_SCALING:Z

    if-eqz v1, :cond_1

    .line 4198
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 4199
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScale: mGestureCenterHour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tViewStartHour: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\tmViewStartY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\tmCellHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " SpanY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    :cond_1
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v1, :cond_4

    .line 4205
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4206
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 4213
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 4215
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4216
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4217
    return v5

    .line 4187
    :cond_3
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    if-le v1, v2, :cond_0

    .line 4188
    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4189
    sget v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4190
    sget v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    goto/16 :goto_0

    .line 4208
    :cond_4
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_2

    .line 4209
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4210
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 4158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4159
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 4160
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 4162
    sget v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4163
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 4165
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG_SCALING:Z

    if-eqz v0, :cond_0

    .line 4166
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 4167
    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScaleBegin: mGestureCenterHour:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tViewStartHour: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tmViewStartY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tmCellHeight:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SpanY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x0

    .line 4222
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v0, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 4223
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 4224
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 4225
    iput v1, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4226
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1222
    iput p1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    .line 1223
    iput p2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    .line 1224
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1225
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1226
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v0, p1, v2

    .line 1227
    .local v0, "gridAreaWidth":I
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x1

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 1230
    div-int/lit8 v2, p1, 0x7

    sput v2, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 1232
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1233
    .local v1, "p":Landroid/graphics/Paint;
    sget v2, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1234
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    .line 1235
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1236
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4231
    sget-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ev.getPointerCount() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4233
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 4237
    :cond_1
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mRecalCenterHour:Z

    .line 4240
    :cond_2
    iget v3, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_3

    .line 4241
    iget-object v3, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4244
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 4322
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not MotionEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4326
    :cond_5
    :goto_0
    return v1

    .line 4246
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 4247
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 4248
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DOWN ev.getDownTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v0, v3

    sget v3, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v0, v3

    .line 4253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_7

    .line 4254
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 4258
    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4259
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 4256
    :cond_7
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    goto :goto_1

    .line 4263
    :pswitch_1
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MOVE Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 4268
    :pswitch_2
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP Cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4270
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4271
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 4272
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4273
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    if-nez v0, :cond_a

    .line 4274
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4275
    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4276
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 4280
    :cond_a
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    if-nez v0, :cond_5

    .line 4286
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v0, :cond_b

    .line 4287
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4288
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    .line 4289
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4292
    :cond_b
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 4293
    iput v2, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 4294
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v3, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    if-le v0, v3, :cond_e

    .line 4296
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v3, "- horizontal scroll: switch views"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    :cond_c
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v0, :cond_d

    move v0, v1

    :goto_2
    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 4298
    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 4297
    goto :goto_2

    .line 4304
    :cond_e
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v3, "- horizontal scroll: snap back"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4305
    :cond_f
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 4306
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4307
    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    goto/16 :goto_0

    .line 4315
    :pswitch_3
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_CANCEL"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4317
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4318
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    goto/16 :goto_0

    .line 4326
    :cond_11
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 4244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method reloadEvents()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2008
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2010
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 2011
    iput-object v1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2012
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2015
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2016
    .local v8, "weekStart":Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 2017
    iput v3, v8, Landroid/text/format/Time;->hour:I

    .line 2018
    iput v3, v8, Landroid/text/format/Time;->minute:I

    .line 2019
    iput v3, v8, Landroid/text/format/Time;->second:I

    .line 2020
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 2023
    .local v6, "millis":J
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 2081
    :goto_0
    return-void

    .line 2026
    :cond_0
    iput-wide v6, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 2030
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2031
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    new-instance v4, Lcom/android/calendar/DayView$6;

    invoke-direct {v4, p0, v2}, Lcom/android/calendar/DayView$6;-><init>(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public restartCurrentTimeUpdates()V
    .locals 2

    .prologue
    .line 4844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 4845
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4846
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4847
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4849
    :cond_0
    return-void
.end method

.method public setAnimateDayEventHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 3847
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 3848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 3849
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3850
    return-void
.end method

.method public setAnimateDayHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 3840
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 3842
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3843
    return-void
.end method

.method public setAnimateTodayAlpha(I)V
    .locals 0
    .param p1, "todayAlpha"    # I

    .prologue
    .line 1103
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    .line 1104
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1105
    return-void
.end method

.method public setEventsAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 2084
    iput p1, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    .line 2085
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2086
    return-void
.end method

.method setFirstVisibleHour(I)V
    .locals 1
    .param p1, "firstHour"    # I

    .prologue
    .line 1004
    iput p1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1005
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1006
    return-void
.end method

.method public setMoreAllDayEventsTextAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 3834
    sput p1, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 3835
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3836
    return-void
.end method

.method public setSelected(Landroid/text/format/Time;ZZ)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1009
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1010
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->setSelectedHour(I)V

    .line 1011
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->setSelectedEvent(Lcom/android/calendar/Event;)V

    .line 1012
    iput-object v2, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1013
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 1014
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v7, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->setSelectedDay(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1016
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1020
    if-nez p2, :cond_9

    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 1023
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v0, v2, :cond_5

    .line 1025
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 1041
    :goto_0
    sget-boolean v5, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1042
    sget-object v5, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Go "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " 1st "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CH "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lh "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " gh "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " ymax "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v2, v0, :cond_6

    .line 1048
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1054
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 1056
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 1057
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1060
    if-eq v2, v3, :cond_7

    .line 1061
    const-string v0, "viewStartY"

    new-array v3, v9, [I

    iget v5, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    aput v5, v3, v1

    aput v2, v3, v4

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1062
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1063
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1064
    iget-object v2, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1065
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    move v0, v4

    .line 1068
    :goto_2
    if-eqz p3, :cond_4

    .line 1069
    iget-object v2, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    monitor-enter v2

    .line 1070
    :try_start_0
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_2

    .line 1071
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1072
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1074
    :cond_2
    const-string v3, "animateTodayAlpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0xff

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 1076
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    .line 1077
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/calendar/DayView$TodayAnimatorListener;->setFadingIn(Z)V

    .line 1078
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v4}, Lcom/android/calendar/DayView$TodayAnimatorListener;->setAnimator(Landroid/animation/Animator;)V

    .line 1079
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1080
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1081
    if-eqz v0, :cond_3

    .line 1082
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1084
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1085
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 1088
    return-void

    .line 1027
    :cond_5
    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v0, v2

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v0, v2

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/2addr v0, v2

    .line 1030
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-lt v2, v0, :cond_8

    .line 1036
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    int-to-float v5, v5

    const/high16 v6, 0x42700000

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    sget v5, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v2, v5

    iget v5, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    goto/16 :goto_0

    .line 1049
    :cond_6
    if-gez v2, :cond_1

    if-eq v2, v3, :cond_1

    move v2, v1

    .line 1050
    goto/16 :goto_1

    .line 1085
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v2, v3

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto/16 :goto_1
.end method

.method public setViewStartY(I)V
    .locals 1
    .param p1, "viewStartY"    # I

    .prologue
    .line 1092
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le p1, v0, :cond_0

    .line 1093
    iget p1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1096
    :cond_0
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1098
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 1099
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1100
    return-void
.end method

.method public stopEventsAnimation()V
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventsCrossFadeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2096
    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/calendar/DayView;->mEventsAlpha:I

    .line 2097
    return-void
.end method

.method public updateTitle()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1120
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1121
    .local v4, "start":Landroid/text/format/Time;
    invoke-virtual {v4, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1122
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v4}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1123
    .local v5, "end":Landroid/text/format/Time;
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 1125
    iget v0, v5, Landroid/text/format/Time;->minute:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Landroid/text/format/Time;->minute:I

    .line 1126
    invoke-virtual {v5, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1128
    const-wide/16 v10, 0x14

    .line 1129
    .local v10, "formatFlags":J
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-eq v0, v2, :cond_0

    .line 1131
    const-wide/16 v0, 0x20

    or-long/2addr v10, v0

    .line 1134
    iget v0, v4, Landroid/text/format/Time;->month:I

    iget v1, v5, Landroid/text/format/Time;->month:I

    if-eq v0, v1, :cond_0

    .line 1135
    const-wide/32 v0, 0x10000

    or-long/2addr v10, v0

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v12, v6

    move-object v13, v6

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1141
    return-void
.end method
